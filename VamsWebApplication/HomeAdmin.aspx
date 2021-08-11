 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="VamsWebApplication.HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home - Admin </title>
    
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
      <form id="FormHomeAdmin" runat="server">
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">VAMS</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about" class="page-scroll">About</a></li>
        <li><a href="#services" class="page-scroll">Services</a></li>
        <!--<li><a href="#portfolio" class="page-scroll">Gallery</a></li>
        <li><a href="#testimonials" class="page-scroll">Testimonials</a></li>-->
          <li><asp:LinkButton  id="linkButtonAppointment" class="page-scroll" runat="server" Visible="false" OnClick="linkButtonAppointment_Click"> Appointment</asp:LinkButton></li>
        <li><a href="#team" class="page-scroll">Team</a></li>
        <li><a href="#contact" class="page-scroll">Contact</a></li>
          <li><asp:LinkButton  id="linkButtonLogin" class="page-scroll" runat="server" OnClick="linkButtonLogin_Click"> Login</asp:LinkButton></li>
          <li><asp:LinkButton  id="linkButtonLogout" class="page-scroll" runat="server" Visible="false" OnClick="linkButtonLogout_Click"> Logout</asp:LinkButton></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>
<!-- Header -->
<header id="header">
  <div class="intro">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2 intro-text">
            <h1>We Are VAMS<span></span></h1>
           <a href="#about" class="btn btn-custom btn-lg page-scroll">Learn More</a> </div>
        </div>
      </div>
    </div>
  </div>
</header>
<!-- About Section -->
<div id="about">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-md-6"> <img src="img/about.jpeg" class="img-responsive" alt=""> </div>
      <div class="col-xs-12 col-md-6">
        <div class="about-text">
          <h2>About Us</h2>
          <p>We provide an online platform for booking appointment for taking COVID-19 Vaccination. We aim to give our users a very user-friendly floor for getting their vaccination booked, both the first and second doses. You can also have a family member or friend book an appointment for you. All appointments need to be booked in advance. Don't go to a vaccination clinic unless you have an appointment. If you go to a clinic without an appointment, you will not be able to get vaccinated (walk-ins are not accepted). </p>
            <p>Hospital details, including the location and vaccine stock, are displayed before the users for making the appointment process easy.</p>
         <!-- <h3>Why Choose Us?</h3>
          <div class="list-style">
            <div class="col-lg-6 col-sm-6 col-xs-12">
              <ul>
                <li>Lorem ipsum dolor</li>
                <li>Tempor incididunt</li>
                <li>Lorem ipsum dolor</li>
                <li>Incididunt ut labore</li>
              </ul>
            </div>
            <div class="col-lg-6 col-sm-6 col-xs-12">
              <ul>
                <li>Aliquip ex ea commodo</li>
                <li>Lorem ipsum dolor</li>
                <li>Exercitation ullamco</li>
                <li>Lorem ipsum dolor</li>
              </ul>
            </div>
          </div>-->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Services Section -->
<div id="services" class="text-center">
  <div class="container">
    <div class="section-title">
      <h2>Our Services</h2>
      <p>Vaccines are a critical tool in the battle against COVID-19, and getting vaccinated is one of the best ways to protect yourself and others from COVID-19.</p>
    </div>
    <div class="row">
      <div class="col-md-6"> <i class="fa fa-wordpress"></i>
        <div class="service-desc">
          <h3>Getting vaccinated is safer than getting infected </h3>
              <p>Vaccines train our immune system to recognize the targeted virus and create antibodies to fight off the disease without getting the disease itself. After vaccination, the body is ready to fight the virus if it is later exposed to it, thereby preventing illness.</p>
              <p>Most people who are infected with SARS-CoV-2, the virus that causes COVID-19, develop an immune response within the first few weeks, but we are still learning how strong and lasting that immune response is, and how it varies between different people.</p>
              <p>People who have already been infected with SARS-CoV-2 should still get vaccinated unless told otherwise by their health care provider. Even if you’ve had a previous infection, the vaccine acts as a booster that strengthens the immune response. There have also been some instances of people infected with SARS-CoV-2 a second time, which makes getting vaccinated even more important.</p>
        </div>
      </div>
      <div class="col-md-6"> <i class="fa fa-cart-arrow-down"></i>
        <div class="service-desc">
          <h3>What to expect during vaccination</h3>
            <p>Medical professionals can best advise individuals on whether or not, and when, they should receive a vaccine. A health worker will administer the vaccine, and the person receiving it will be asked to wait for 15–30 minutes before leaving the vaccination site. This is so that health workers can observe individuals for any unexpected reactions following vaccination.</p>
            <p>Like any vaccine, COVID-19 vaccines can cause mild-to-moderate side effects, such as a low-grade fever or pain or redness at the injection site. These should go away on their own within a few days. See WHO’s Safety of COVID-19 Vaccines explainer and Vaccines Safety Q&A to learn more about common side effects and find out who should consult with a doctor before vaccination.</p>
        </div>
      </div>     
    </div>
    <div class="row">
      <div class="col-md-6"> <i class="fa fa-language"></i>
        <div class="service-desc">
          <h3>Safety against infection and transmission after vaccination</h3>
          <p>Available clinical trials have shown COVID-19 vaccines to be safe and highly effective at preventing severe disease. Given how new COVID-19 is, researchers are still looking into how long a vaccinated person is likely to be protected from infection, and whether vaccinated people can still transmit the virus to others. As the vaccine rollout expands, WHO will continue to monitor the data alongside regulatory authorities.</p>
<p>Safe and effective vaccines are making a significant contribution to preventing severe disease and death from COVID-19. As vaccines are rolling out and immunity is building, it is important to continue to follow all of the recommended measures that reduce the spread of SARS-CoV-2. This includes physically distancing yourself from others; wearing a mask, especially in crowded and poorly ventilated settings; cleaning your hands frequently; covering any cough or sneeze in your bent elbow; and opening windows when indoors.
</p>
        </div>
      </div>
         <div class="col-md-6"> <i class="fa fa-cloud-download"></i>
        <div class="service-desc">
          <h3>Vaccine doses</h3>
            <p>For some COVID-19 vaccines, two doses are required. It’s important to get the second dose if the vaccine requires two doses.</p>
            <p>For vaccines that require two doses, the first dose presents antigens – proteins that stimulate the production of antibodies – to the immune system for the first time. Scientists call this priming the immune response. The second dose acts as a booster, ensuring the immune system develops a memory response to fight off the virus if it encounters it again.</p>
            <p>Because of the urgent need for a COVID-19 vaccine, initial clinical trials of vaccine candidates were performed with the shortest possible duration between doses. Therefore an interval of 21–28 days (3–4 weeks) between doses is recommended by WHO. Depending on the vaccine, the interval may be extended for up to 42 days – or even up to 12 weeks for some vaccines – on the basis of current evidence.</p>
            <p>There are many COVID-19 vaccines being developed and produced by different manufacturers around the world. WHO recommends that a vaccine from the same manufacturer be used for both doses if you require two doses. This recommendation may be updated as further information becomes available.
            </p>
        </div>
      </div>
    </div>
      
  </div>
</div>
<!-- Gallery Section -->
          <!--
<div id="portfolio" class="text-center">
  <div class="container">
    <div class="section-title">
      <h2>Gallery</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit duis sed dapibus leonec.</p>
    </div>
    <div class="row">
      <div class="portfolio-items">
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/01-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Lorem Ipsum</h4>
              </div>
              <img src="img/portfolio/01-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/02-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Adipiscing Elit</h4>
              </div>
              <img src="img/portfolio/02-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/03-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Lorem Ipsum</h4>
              </div>
              <img src="img/portfolio/03-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/04-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Lorem Ipsum</h4>
              </div>
              <img src="img/portfolio/04-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/05-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Adipiscing Elit</h4>
              </div>
              <img src="img/portfolio/05-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/06-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Dolor Sit</h4>
              </div>
              <img src="img/portfolio/06-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/07-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Dolor Sit</h4>
              </div>
              <img src="img/portfolio/07-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/08-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Lorem Ipsum</h4>
              </div>
              <img src="img/portfolio/08-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/09-large.jpg" title="Project Title" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Adipiscing Elit</h4>
              </div>
              <img src="img/portfolio/09-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>-->
<!-- Testimonials Section -->
<!--<div id="testimonials">
  <div class="container">
    <div class="section-title text-center">
      <h2>What our clients say</h2>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="testimonial">
          <div class="testimonial-image"> <img src="img/testimonials/01.jpg" alt=""> </div>
          <div class="testimonial-content">
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam sedasd commodo nibh ante facilisis bibendum dolor feugiat at."</p>
            <div class="testimonial-meta"> - John Doe </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="testimonial">
          <div class="testimonial-image"> <img src="img/testimonials/02.jpg" alt=""> </div>
          <div class="testimonial-content">
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam sedasd commodo nibh ante facilisis."</p>
            <div class="testimonial-meta"> - Johnathan Doe </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="testimonial">
          <div class="testimonial-image"> <img src="img/testimonials/03.jpg" alt=""> </div>
          <div class="testimonial-content">
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam sedasd commodo nibh ante facilisis bibendum dolor feugiat at."</p>
            <div class="testimonial-meta"> - John Doe </div>
          </div>
        </div>
      </div>
      <div class="row"> </div>
      <div class="col-md-4">
        <div class="testimonial">
          <div class="testimonial-image"> <img src="img/testimonials/04.jpg" alt=""> </div>
          <div class="testimonial-content">
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam sedasd commodo nibh ante facilisis bibendum dolor feugiat at."</p>
            <div class="testimonial-meta"> - Johnathan Doe </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="testimonial">
          <div class="testimonial-image"> <img src="img/testimonials/05.jpg" alt=""> </div>
          <div class="testimonial-content">
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam sedasd commodo nibh ante facilisis bibendum dolor feugiat at."</p>
            <div class="testimonial-meta"> - John Doe </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="testimonial">
          <div class="testimonial-image"> <img src="img/testimonials/06.jpg" alt=""> </div>
          <div class="testimonial-content">
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam sedasd commodo nibh ante facilisis."</p>
            <div class="testimonial-meta"> - Johnathan Doe </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>-->
<!-- Team Section -->
<div id="team" class="text-center">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title">
      <h2>Meet the Team</h2>
    </div>
    <div id="row">
      <div class="col-md-4 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/ajini.jpeg" alt="..." class="team-img">
          <div class="caption">
            <h4>AJINIMARIA JOHN</h4>
            <p>Director</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/navpreet.jpeg" alt="..." class="team-img">
          <div class="caption">
            <h4>NAVPREET KAUR</h4>
            <p>CTO</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/nesla.jpeg" alt="..." class="team-img">
          <div class="caption">
            <h4>NESLA MOHAMMED ALI</h4>
            <p>COO</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Contact Section -->
<div id="contact">
  <div class="container">
    <div class="col-md-8">
      <div class="row">
        <div class="section-title">
          <h2>Get In Touch</h2>
          <p>Please fill out the form below to send us an email and we will get back to you as soon as possible.</p>
        </div>
        <form name="sentMessage" id="contactForm" novalidate>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <input type="text" id="name" class="form-control" placeholder="Name" required="required">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <input type="email" id="email" class="form-control" placeholder="Email" required="required">
                <p class="help-block text-danger"></p>
              </div>
            </div>
          </div>
          <div class="form-group">
            <textarea name="message" id="message" class="form-control" rows="4" placeholder="Message" required></textarea>
            <p class="help-block text-danger"></p>
          </div>
          <div id="success"></div>
          <button type="submit" class="btn btn-custom btn-lg">Send Message</button>
        </form>
      </div>
    </div>
    <div class="col-md-3 col-md-offset-1 contact-info">
      <div class="contact-item">
        <h3>Contact Info</h3>
        <p><span><i class="fa fa-map-marker"></i> Address</span>435 wilson Avenue,<br>
          Kitchener, CA</p>
      </div>
      <div class="contact-item">
        <p><span><i class="fa fa-phone"></i> Phone</span> +1 519 781 2859</p>
      </div>
      <div class="contact-item">
        <p><span><i class="fa fa-envelope-o"></i> Email</span> info@vams.com</p>
      </div>
    </div>
    <div class="col-md-12">
      <div class="row">
        <div class="social">
          <ul>
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Footer Section -->
<div id="footer">
  <div class="container text-center">
    <p>&copy; 2021 VAMS.</p>
  </div>
</div>
            </form>
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/nivo-lightbox.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
