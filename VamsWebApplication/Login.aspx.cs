using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VamsWebApplication.Domain;
namespace VamsWebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        CommonFunctions common;
        protected void Page_Load(object sender, EventArgs e)
        {
            common = new CommonFunctions();
            if (Session["Email"] != null)
            {
                if (Session["isAdmin"].ToString() == "False")
                {
                    Response.Redirect("HomeCustomer.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (ValidateLogin()) {
                string strcon = common.ReturnConnectionString();
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand com = new SqlCommand("sp_Login", con);
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter sp1 = new SqlParameter("Email", txtEmail.Text);
                SqlParameter sp2 = new SqlParameter("Password", txtPassword.Text);

                com.Parameters.Add(sp1);
                com.Parameters.Add(sp2);

                con.Open();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Session["Email"] = txtEmail.Text;
                    Session["UserID"] = dr["UserID"].ToString();
                    Session["Email"] = dr["Email"].ToString();
                    Session["Name"] = dr["FirstName"].ToString();
                    Session["isAdmin"] = dr["isAdmin"].ToString();
                    if (dr["isAdmin"].ToString() == "False")
                    {
                        Response.Redirect("HomeCustomer.aspx");
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    errorLabel.Text = "Invalid username or password.";
                    errorLabel.Visible = true;
                }
            }
        }

        private bool ValidateLogin()
        {
            if (txtEmail.Text.Length == 0)
            {
                errorLabel.Text = "Email field should not be empty.";
                errorLabel.Visible = true;
                return false;
            }
            else if (txtPassword.Text.Length == 0)
            {
                errorLabel.Text = "Password field should not be empty.";
                errorLabel.Visible = true;
                return false;
            }
            else
            {
                return true;
            }
        }

    }
}