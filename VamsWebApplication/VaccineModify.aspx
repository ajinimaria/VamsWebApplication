<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VaccineModify.aspx.cs" Inherits="VamsWebApplication.VaccineModify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vaccine Modify</title>
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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
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
                
                    <h2 id="heading" runat="server" class="form-title">Vaccine Reschedule</h2>
                    <div class="form-group">
                        <asp:DropDownList ID="ddlClinic" class="form-input" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="Choose from the following Vaccine sites" Value="0" />
                        </asp:DropDownList>
                        <p id="errLabelClinic" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                         </div>   
                       <div class="form-group">
                        <asp:DropDownList ID="ddlVaccine" class="form-input" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="Choose from the following Vaccine names" Value="0" />
                        </asp:DropDownList>
                            <p id="errLabelVaccine" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                         </div>
                    <div class="form-group">
                        <asp:DropDownList ID="ddlPriorityGroup" class="form-input" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="What priority group you belong to ?" Value="0" />
                        </asp:DropDownList>
                         <p id="errLabelPriority" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                         </div> 
                        <div class="form-group">
                        <asp:DropDownList ID="ddlTargetPopulation" class="form-input" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="What is your target population ?" Value="0" />
                        </asp:DropDownList>
                             <p id="errLabelTarget" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                         </div> 
                    <div class="form-group">
                            <asp:TextBox ID="txtDate" class="form-input"  placeholder="Choose Date" textmode="Date" runat="server"  onfocus="validateMe(this);"></asp:TextBox>
                         <p id="errLabelDate" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                        </div> 
                     <div class="form-group">
                        <asp:DropDownList ID="ddlTime" class="form-input" runat="server" AppendDataBoundItems="true" >
                            <asp:ListItem Enabled="true" Text="Choose Time" Value="0"></asp:ListItem>
                            <asp:ListItem Text="7 am - 8 am" Value="1"></asp:ListItem>
                            <asp:ListItem Text="8 am - 9 am" Value="2"></asp:ListItem>
                            <asp:ListItem Text="9 am - 10 am" Value="3"></asp:ListItem>
                            <asp:ListItem Text="10 am - 11 am" Value="4"></asp:ListItem>
                            <asp:ListItem Text="11 am - 12 pm" Value="5"></asp:ListItem>
                            <asp:ListItem Text="12 pm - 1 pm" Value="6"></asp:ListItem>
                            <asp:ListItem Text="1 pm - 2 pm" Value="7"></asp:ListItem>
                            <asp:ListItem Text="2 pm - 3 pm" Value="8"></asp:ListItem>
                            <asp:ListItem Text="3 pm - 4 pm" Value="9"></asp:ListItem>
                            <asp:ListItem Text="4 pm - 5 pm" Value="10"></asp:ListItem>
                            <asp:ListItem Text="5 pm - 6 pm" Value="11"></asp:ListItem>
                            <asp:ListItem Text="6 pm - 7 pm" Value="12"></asp:ListItem>
                            <asp:ListItem Text="7 pm - 8 pm" Value="13"></asp:ListItem>
                            <asp:ListItem Text="8 pm - 9 pm" Value="14"></asp:ListItem>
                        </asp:DropDownList>
                          <p id="errLabelTime" class="message" style="color:red;display:inline;float:left;display:none" >This field should not be empty!</p>
                         </div> 
                        <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
                            <asp:Button ID="btnRegister" runat="server"  class="form-submit"  Text="Book Appointment" OnClientClick="return Validate()" OnClick="btnRegister_Click" />
                        </div>
                    <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
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