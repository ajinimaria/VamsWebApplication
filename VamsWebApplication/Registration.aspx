<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="VamsWebApplication.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
     <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
    <form id="FormRegistration" runat="server">
        <h2 class="form-title">Create account</h2>
                        <div class="form-group">
                            <!--<input type="text" class="form-input" name="name" id="name" placeholder="Your Name"/>-->
                            <asp:TextBox ID="txtFirstName" class="form-input" placeholder="First Name" runat="server"></asp:TextBox>
                            <p id="errLabelName" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                        </div>
                        <div class="form-group">
                            <!--<input type="text" class="form-input" name="name" id="name" placeholder="Your Name"/>-->
                        <asp:TextBox ID="txtLastName" class="form-input" placeholder="Last Name" runat="server"></asp:TextBox>
                            <p id="errLabelLastName" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                        </div>
                        <div class="form-group">
                            <!--<input type="email" class="form-input" name="email" id="email" placeholder="Your Email"/>-->
                            <asp:TextBox ID="txtEmail" class="form-input"  placeholder="Your Email" runat="server"></asp:TextBox>
                            <p id="errLabelEmail" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtAddress" class="form-input"  placeholder="Your Address" runat="server"></asp:TextBox>
                            <p id="errLabelAddress" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                        </div>
                        <div class="form-group">
                            <!--<input type="text" class="form-input" name="password" id="password" placeholder="Password"/>-->
                            <asp:TextBox ID="txtPassword" runat="server" class="form-input" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <p id="errLabelPass" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        <div class="form-group">
                            <!--<input type="password" class="form-input" name="re_password" id="re_password" placeholder="Repeat your password"/>-->
                            <asp:TextBox ID="txtRePassword" class="form-input"  runat="server" TextMode="Password"  placeholder="Repeat your password"></asp:TextBox>
                            <p id="errLabelRePass" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                        </div>                       
                        <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
                            <asp:Button ID="btnSignup" runat="server"  class="form-submit"  Text="Sign Up" OnClick="btnSignup_Click"  OnClientClick="return ValidateSignup()" />
                            <asp:Label ID="errorLabel" runat="server" Text="Label" Visible="false"></asp:Label>
                        </div>

   
                    <p class="loginhere">
                        Have already an account ? <!--<a href="#" class="loginhere-link">Login here</a>-->
                         <asp:HyperLink id="hyperlinkLogin" NavigateUrl="/Login.aspx"  Text="Login here"  class="loginhere-link" runat="server"/> 
                    </p>
         </form>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
    
</html>
