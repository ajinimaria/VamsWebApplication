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
    public partial class VaccineStock : System.Web.UI.Page
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
            PopulateVaccineClinic();
            PopulateVaccine();
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

        protected void btnAddVaccineStock_Click(object sender, EventArgs e)
        {
            int selectedClinic = int.Parse( ddlClinic.SelectedValue);
            int selectedVaccine = int.Parse(ddlVaccine.SelectedValue);
            int stock = int.Parse(txtStock.Text);
            string strcon = common.ReturnConnectionString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("SP_InsertVaccineStock", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter sp1 = new SqlParameter("VaccineClinicID", selectedClinic);
            SqlParameter sp2 = new SqlParameter("VaccineID", selectedVaccine);
            SqlParameter sp3 = new SqlParameter("Stock", stock);
            com.Parameters.Add(sp1);
            com.Parameters.Add(sp2);
            com.Parameters.Add(sp3);
            con.Open();
            com.ExecuteNonQuery();
            Response.Redirect("Home.aspx");
        }

        protected void hyperlinkSignout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
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