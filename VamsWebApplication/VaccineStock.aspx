<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VaccineStock.aspx.cs" Inherits="VamsWebApplication.VaccineStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Vaccine Stock</title>
 <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css" href="css/style1.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/default.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900" rel="stylesheet">

</head>
<body>
    <form id="FormVaccineStock" runat="server">
         <nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="/HomeAdmin.aspx#page-top">VAMS</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/HomeAdmin.aspx#about" class="page-scroll">About</a></li>
        <li><a href="/HomeAdmin.aspx#services" class="page-scroll">Services</a></li>
        <!--<li><a href="#portfolio" class="page-scroll">Gallery</a></li>
        <li><a href="#testimonials" class="page-scroll">Testimonials</a></li>-->
           <li><asp:LinkButton  id="linkButtonAppointment" class="page-scroll" runat="server" Visible="false" OnClick="linkButtonAppointment_Click"> Appointment</asp:LinkButton></li>
        <li><a href="/HomeAdmin.aspx#team" class="page-scroll">Team</a></li>
        <li><a href="/HomeAdmin.aspx#contact" class="page-scroll">Contact</a></li>
          <li><asp:LinkButton  id="linkButtonLogin" class="page-scroll" runat="server" OnClick="linkButtonLogin_Click"> Login</asp:LinkButton></li>
          <li><asp:LinkButton  id="linkButtonLogout" class="page-scroll" runat="server" Visible="false" OnClick="linkButtonLogout_Click"> Logout</asp:LinkButton></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>
    
     <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                
                    <h2 class="form-title">Add new vaccine Stock</h2>
                    <div class="form-group">
                        <asp:DropDownList ID="ddlClinic" class="form-input" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="Select Vaccine Clinic" Value="0" />
                        </asp:DropDownList>
                        <p id="errLabelClinic" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                         </div>   
                       <div class="form-group">
                        <asp:DropDownList ID="ddlVaccine" class="form-input" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="Select Vaccine Name" Value="0" />
                        </asp:DropDownList>
                           <p id="errLabelVaccine" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                         </div>                    
                        <div class="form-group">
                            <asp:TextBox ID="txtStock" class="form-input"  placeholder="Number of Stock" runat="server"></asp:TextBox>
                            <p id="errLabelStock" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                        </div>                 
                        <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
                            <asp:Button ID="btnAddVaccineStock" runat="server"  class="form-submit"  Text="Submit" OnClick="btnAddVaccineStock_Click"   OnClientClick="return ValidateAddStock()"/>
                            <asp:Label ID="errorLabel" runat="server" Text="Label" Visible="false"></asp:Label>
                        </div>
                    
        
                </div>
            </div>
        </section>

    </div>
         </form>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
    
</html>