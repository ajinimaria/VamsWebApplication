using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VamsWebApplication
{
    public partial class Home : System.Web.UI.Page
    {
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
            if (Session["Name"] != null)
                welcome.InnerText = "Welcome " + Session["Name"];
            if (Session["isAdmin"].ToString() == "False")
            {
                Response.Redirect("HomeCustomer.aspx");
            }
        }
                

        protected void btnAddClinic_Click(object sender, EventArgs e)
        {
            Response.Redirect("VaccineClinic.aspx");
        }

        protected void btnAddVaccineStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("VaccineStock.aspx");
        }

        protected void hyperlinkSignout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
            
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        protected void linkButtonAppointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeCustomer.aspx");
        }

        protected void linkButtonLogin_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void linkButtonLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}