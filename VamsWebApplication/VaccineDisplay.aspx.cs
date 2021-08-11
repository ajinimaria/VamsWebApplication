using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VamsWebApplication.Domain;

namespace VamsWebApplication
{
    public partial class VaccineDisplay : System.Web.UI.Page
    {
        CommonFunctions common;
        protected void Page_Load(object sender, EventArgs e)
        {
            common = new CommonFunctions();
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
            //SP_GetVaccineReport
            UpdateGrid();
        }

        private void UpdateGrid()
        {
            int UserID = int.Parse(Session["UserID"].ToString());
            DataTable table = new DataTable();
            string strcon = common.ReturnConnectionString();
            using (var con = new SqlConnection(strcon))
            using (var cmd = new SqlCommand("SP_GetVaccineDisplay", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter sp1 = new SqlParameter("UserID", UserID);
                cmd.Parameters.Add(sp1);
                da.Fill(table);
            }
            gvVaccine.DataSource = table;
            gvVaccine.DataBind();
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