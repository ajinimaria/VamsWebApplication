using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VamsWebApplication.Domain;

namespace VamsWebApplication
{
    public partial class VaccineModify : System.Web.UI.Page
    {
        CommonFunctions common;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
                Response.Redirect("Login.aspx");
            if (Session["Email"] != null)
            {
                linkButtonAppointment.Visible = true;
                linkButtonLogin.Visible = false;
                linkButtonLogout.Visible = true;
            }
            else
            {
                linkButtonAppointment.Visible = false;
                linkButtonLogin.Visible = true;
                linkButtonLogout.Visible = false;
            }
            common = new CommonFunctions();
            if (!IsPostBack)
            {
                PopulateVaccineClinic();
                PopulateVaccine();
                PopulatePriorityGroup();
                PopulateTargetPopulation();
                PopulateAppointmentDetails();
            }
        }

        private void PopulateAppointmentDetails()
        {
            int UserID = int.Parse(Session["UserID"].ToString());
            string strcon = common.ReturnConnectionString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("SP_GetAppointmentDetails", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter("UserID", UserID);
            com.Parameters.Add(sp1);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                ddlClinic.SelectedValue = dr["VaccineClinicID"].ToString();
                ddlVaccine.SelectedValue = dr["VaccineID"].ToString();
                ddlPriorityGroup.SelectedValue = dr["PriorityID"].ToString();
                ddlTargetPopulation.SelectedValue = dr["TargetPopulationID"].ToString();
                DateTime? myDate = DateTime.Parse(dr["Date"].ToString());
                string sqlFormattedDate = myDate.Value.ToString("yyyy-MM-dd");
                txtDate.Text = sqlFormattedDate;
                ddlTime.SelectedValue = dr["TimeRange"].ToString();
                btnRegister.Text = "Reschedule Appointment";
                heading.InnerText = "Reschedule Appointment";
            }
        }

        private void PopulateTargetPopulation()
        {
            string strcon = common.ReturnConnectionString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("SP_GetTargetPopulationDetails", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                ddlTargetPopulation.DataSource = dr;
                ddlTargetPopulation.DataValueField = "TargetPopulationID";
                ddlTargetPopulation.DataTextField = "Name";
                ddlTargetPopulation.DataBind();
            }
        }

        private void PopulatePriorityGroup()
        {
            string strcon = common.ReturnConnectionString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("SP_GetPriorityGroupDetails", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                ddlPriorityGroup.DataSource = dr;
                ddlPriorityGroup.DataValueField = "PriorityID";
                ddlPriorityGroup.DataTextField = "Name";
                ddlPriorityGroup.DataBind();
            }
        }

        private void PopulateVaccine()
        {
            string strcon = common.ReturnConnectionString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("SP_GetVaccineDetails", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                ddlVaccine.DataSource = dr;
                ddlVaccine.DataValueField = "VaccineID";
                ddlVaccine.DataTextField = "Name";
                ddlVaccine.DataBind();
            }
        }

        private void PopulateVaccineClinic()
        {
            string strcon = common.ReturnConnectionString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("SP_GetVaccineClinicDetails", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                ddlClinic.DataSource = dr;
                ddlClinic.DataValueField = "VaccineClinicID";
                ddlClinic.DataTextField = "Name";
                ddlClinic.DataBind();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (ValidateRegister())
            {
                int selectedClinic = int.Parse(ddlClinic.SelectedValue);
                int selectedVaccine = int.Parse(ddlVaccine.SelectedValue);
                int selectedPriorityGroup = int.Parse(ddlPriorityGroup.SelectedValue);
                int selectedTargetPopulation = int.Parse(ddlTargetPopulation.SelectedValue);
                String date = txtDate.Text;
                string time = ddlTime.SelectedValue;
                int UserID = int.Parse(Session["UserID"].ToString());
                string strcon = common.ReturnConnectionString();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand com = new SqlCommand("SP_InsertVaccineAppointment", con);
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter sp1 = new SqlParameter("VaccineClinicID", selectedClinic);
                SqlParameter sp2 = new SqlParameter("VaccineID", selectedVaccine);
                SqlParameter sp3 = new SqlParameter("PriorityID", selectedPriorityGroup);
                SqlParameter sp4 = new SqlParameter("TargetPopulationID", selectedTargetPopulation);
                SqlParameter sp5 = new SqlParameter("UserID", UserID);
                SqlParameter sp6 = new SqlParameter("Date", date);
                SqlParameter sp7 = new SqlParameter("TimeRange", time);
                SqlParameter sp8 = new SqlParameter("isDeleted", false);
                com.Parameters.Add(sp1);
                com.Parameters.Add(sp2);
                com.Parameters.Add(sp3);
                com.Parameters.Add(sp4);
                com.Parameters.Add(sp5);
                com.Parameters.Add(sp6);
                com.Parameters.Add(sp7);
                com.Parameters.Add(sp8);
                con.Open();
                com.ExecuteNonQuery();
                Response.Redirect("HomeCustomer.aspx");
            }
        }

        private bool ValidateRegister()
        {

            if (ddlClinic.SelectedValue == "0")
            {
                errorLabel.Text = "Select vaccine site.";
                errorLabel.Visible = true;
                return false;
            }
            else if (ddlVaccine.SelectedValue == "0")
            {
                errorLabel.Text = "Select vaccine name.";
                errorLabel.Visible = true;
                return false;
            }
            else if (ddlPriorityGroup.SelectedValue == "0")
            {
                errorLabel.Text = "Select priority group.";
                errorLabel.Visible = true;
                return false;
            }
            else if (ddlTargetPopulation.SelectedValue == "0")
            {
                errorLabel.Text = "Select target population.";
                errorLabel.Visible = true;
                return false;
            }
            if (txtDate.Text.Length == 0)
            {
                errorLabel.Text = "Date field should not be empty.";
                errorLabel.Visible = true;
                return false;
            }
            else if (txtDate.Text.Length != 0)
            {
                DateTime? myDate = DateTime.Parse(txtDate.Text);
                if (myDate < DateTime.Now)
                {
                    errorLabel.Text = "You can only register for a future date!";
                    errorLabel.Visible = true;
                    return false;
                }
            }
            if (ddlTime.SelectedValue == "0")
            {
                errorLabel.Text = "Select time.";
                errorLabel.Visible = true;
                return false;
            }
            else
            {
                return true;
            }
        }


        protected void linkButtonAppointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeCustomer.aspx");
        }

        protected void linkButtonLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void linkButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}