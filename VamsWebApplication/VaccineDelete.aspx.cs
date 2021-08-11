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
    public partial class VaccineDelete : System.Web.UI.Page
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
                heading.InnerText = "Delete Appointment";
            }
            else
            {
                btnCancel.Visible = false;
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

       


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            int UserID = int.Parse(Session["UserID"].ToString());
            string strcon = common.ReturnConnectionString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("SP_CancelAppointment", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter("UserID", UserID);
            com.Parameters.Add(sp1);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            errorLabel.Visible = true;
            errorLabel.Text = "Appointment Cancellation successful";
            Response.Redirect("HomeCustomer.aspx");
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