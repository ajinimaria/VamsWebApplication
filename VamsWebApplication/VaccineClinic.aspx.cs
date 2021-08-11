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
    public partial class VaccineClinic : System.Web.UI.Page
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
        }

        protected void btnAddClinic_Click(object sender, EventArgs e)
        {
            if (ValidateAddClinic())
            {
                string strcon = common.ReturnConnectionString();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand com = new SqlCommand("SP_AddClinic", con);
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter sp1 = new SqlParameter("Name", txtName.Text);
                SqlParameter sp2 = new SqlParameter("Address", txtAddress.Text);
                SqlParameter sp3 = new SqlParameter("Email", txtEmail.Text);
                SqlParameter sp4 = new SqlParameter("Phone", txtPhone.Text);
                SqlParameter sp5 = new SqlParameter("NoPeopleHourly", txtNoPeopleHourly.Text);
                com.Parameters.Add(sp1);
                com.Parameters.Add(sp2);
                com.Parameters.Add(sp3);
                com.Parameters.Add(sp4);
                com.Parameters.Add(sp5);
                com.Parameters.Add("@Result", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                con.Open();
                com.ExecuteNonQuery();
                String result = com.Parameters["@Result"].Value.ToString();
                if (result == "Exists")
                {
                    con.Close();
                    errorLabel.Text = "Vaccine clinic already exists";
                    errorLabel.Visible = true;
                }
                else if (result == "Done")
                {
                    con.Close();
                    Response.Redirect("Home.aspx");
                }
            }
        }

        private bool ValidateAddClinic()
        {
            if(txtName.Text.Length==0 || txtAddress.Text.Length==0 || txtEmail.Text.Length==0 || txtPhone.Text.Length ==0)
            {
                errorLabel.Text = "Some of the fields are empty";
                errorLabel.Visible = true;
                return false;
            }
            return true;
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