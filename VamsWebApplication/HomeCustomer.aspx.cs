using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VamsWebApplication.Domain;

namespace VamsWebApplication
{
    public partial class HomeCustomer : System.Web.UI.Page
    {
        CommonFunctions common;
        protected void Page_Load(object sender, EventArgs e)
        {
            common = new CommonFunctions();
            if (Session["Email"] == null)
                Response.Redirect("Login.aspx");
            if (Session["Name"] != null)
                welcome.InnerText = "Welcome " + Session["Name"];
            if (Session["isAdmin"].ToString() != "False")
            {
                Response.Redirect("Home.aspx");
            }
            if (Session["Email"] != null)
            {
                linkButtonLogin.Visible = false;
                linkButtonLogout.Visible = true;
                PopulateAppointmentDetails();
            }
            else
            {
                linkButtonLogin.Visible = true;
                linkButtonLogout.Visible = false;
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
                btnVaccineRegister.Visible = false;
                btnRescheduleAppointment.Visible = true;
                btnCancelAppointment.Visible = true;
                btnDisplay.Visible = true;
            }
            else
            {
                btnVaccineRegister.Visible = true;
                btnRescheduleAppointment.Visible = false;
                btnCancelAppointment.Visible = false;
                btnDisplay.Visible = false;
            }
        }

        protected void btnVaccineRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("VaccineRegister.aspx");
        }

        protected void btnRescheduleAppointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("VaccineModify.aspx");
        }

        protected void btnCancelAppointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("VaccineDelete.aspx");
        }

        protected void linkButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void linkButtonLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void linkButtonAppointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeCustomer.aspx");
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("VaccineDisplay.aspx");
        }
    }
}