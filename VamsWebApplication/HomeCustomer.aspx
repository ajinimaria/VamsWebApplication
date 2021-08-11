<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeCustomer.aspx.cs" Inherits="VamsWebApplication.HomeCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
     <form id="FormHome" runat="server">
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
               
                    <h2 class="form-title">Customer</h2>     
                    <h3 id="welcome" runat="server" class="form-title"></h3>  
                        <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
                            <asp:Button ID="btnVaccineRegister" runat="server"  class="form-submit" OnClick="btnVaccineRegister_Click"  Text="Register for vaccine"   />
                        </div>
                        <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
                            <asp:Button ID="btnRescheduleAppointment" runat="server"  class="form-submit"  Text="Reschedule Vaccine Appointment" OnClick="btnRescheduleAppointment_Click" />
                        </div>
                    <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
                            <asp:Button ID="btnCancelAppointment" runat="server"  class="form-submit"  Text="Delete Appointment" OnClick="btnCancelAppointment_Click" />
                        </div>
                    <div class="form-group">
                            <!--<input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>-->
                            <asp:Button ID="btnDisplay" runat="server"  class="form-submit"  Text="Display Appointment" OnClick="btnDisplay_Click" />
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

