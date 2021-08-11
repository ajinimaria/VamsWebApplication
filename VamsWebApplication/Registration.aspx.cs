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
    public partial class Registration : System.Web.UI.Page
    {
        CommonFunctions common;
        protected void Page_Load(object sender, EventArgs e)
        {
            common = new CommonFunctions();
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (ValidateSignup())
            {
                //string strcon = "data source=DESKTOP-F5UQG06\\SQLEXPRESS;initial catalog=vams;trusted_connection=true";
                string strcon = common.ReturnConnectionString();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand com = new SqlCommand("SP_Registration", con);
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter sp1 = new SqlParameter("FirstName", txtFirstName.Text);
                SqlParameter sp2 = new SqlParameter("LastName", txtLastName.Text);
                SqlParameter sp3 = new SqlParameter("Password", txtPassword.Text);
                SqlParameter sp4 = new SqlParameter("Email", txtEmail.Text);
                SqlParameter sp5 = new SqlParameter("Phone", "5483332256");
                SqlParameter sp6 = new SqlParameter("Address", txtAddress.Text);
                SqlParameter sp7 = new SqlParameter("Gender", "Female");
                SqlParameter sp8 = new SqlParameter("isAdmin", false);
                com.Parameters.Add(sp1);
                com.Parameters.Add(sp2);
                com.Parameters.Add(sp3);
                com.Parameters.Add(sp4);
                com.Parameters.Add(sp5);
                com.Parameters.Add(sp6);
                com.Parameters.Add(sp7);
                com.Parameters.Add(sp8);
                com.Parameters.Add("@Result", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                con.Open();
                com.ExecuteNonQuery();
                String result = com.Parameters["@Result"].Value.ToString();
                if (result == "Exists")
                {
                    con.Close();
                    errorLabel.Text = "Email already exists";
                    errorLabel.Visible = true;
                }
                else if (result == "Done")
                {
                    con.Close();
                    Response.Redirect("Login.aspx");
                }
            }

        }

        private bool ValidateSignup()
        {
            if(txtFirstName.Text.Length==0 || txtLastName.Text.Length == 0 || txtPassword.Text.Length == 0 || txtRePassword.Text.Length == 0 || txtEmail.Text.Length==0 || txtAddress.Text.Length==0) 
            {
                errorLabel.Text = "Some of the fields are empty";
                errorLabel.Visible = true;
                return false;
            } else if(txtPassword.Text!=txtRePassword.Text)
            {
                errorLabel.Text = "Passwords doesn't match";
                errorLabel.Visible = true;
                return false;
            } else if(!common.IsValidEmail(txtEmail.Text))
            {
                errorLabel.Text = "Email not on correct format";
                errorLabel.Visible = true;
                return false;
            } else
            {
                return true;
            }
        }
    }

}
