<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

   <head>
   <title>OTECK Service station</title>

	  <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/icons.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      
      <!-- CUSTOM STYLE -->   
         
      <link rel="stylesheet" href="css/template-style.css">
      <link href="https://fonts.googleapis.com/css?family=Barlow:100,300,400,700,800&amp;subset=latin-ext" rel="stylesheet">  
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script> 
      <script type="text/javascript" src="js/jquery-ui.min.js"></script> 
      <script type="text/javascript" src="js/validation.js"></script> 
		
		
   </head>



   <body class="size-1520 primary-color-red background-dark">
      <!--
	 <div>
			<a href=><img src="icons/online-booking.png" alt="online booking icon" style="width:225px;height:115px;"></a>
	  </div>
	  -->
    	
      <!-- HEADER -->
      <header class="grid">
        <!-- Top Navigation -->
        <nav class="s-12 grid background-none background-primary-hightlight">
           
           <div class="top-nav s-12 l-9"> 
              <ul class="top-ul right chevron">
                <li><a style="font-size: 17px;" href="index">Home</a></li>
                <li><a style="font-size: 17px;" href="aboutUs">About Us</a></li>
                <li><a style="font-size: 17px;" href="services" data-toggle="dropdown">Services</a>
                        
				</li>
				<li><a style="font-size: 17px;" href="gallery">Location</a></li>
                <li><a style="font-size: 17px;" href="features">Contact Us</a></li>
                
				
				</ul>
           </div>
		   
		   <!-- online booking logo -->
		   <a href="/website/booking" class="m-12 l-3 padding-0x logo"><img src="icons/online-booking.png" style="width:275px;height:115px;" align="right"></a>
        
		</nav>
		
		
      </header>
		
      
      <!-- MAIN -->
      <main role="main">
        <!-- TOP SECTION -->
        <section class="grid">
          <!-- Main Carousel -->
		  
          <div class="s-12 margin-bottom carousel-fade-transition owl-carousel carousel-main carousel-nav-white carousel-hide-arrows background-dark">
          	
          	<div class="item background-image" style="background-image:url(img/SS_IMG1.jpg)">
              <p class="text-padding text-strong text-white text-s-size-30 text-size-50 text-uppercase background-primary">All services</p>
              
            </div>
          	<div class="item background-image" style="background-image:url(img/SS_IMG2.jpg)">
              <p class="text-padding text-strong text-white text-s-size-30 text-size-50 text-uppercase background-primary">Online Booking</p>
              
            </div>
            <div class="item background-image" style="background-image:url(img/SS_IMG33.jpg)">
              <p class="text-padding text-strong text-white text-s-size-30 text-size-50 text-uppercase background-primary">Better Service</p>
               
            </div>
			<div class="item background-image" style="background-image:url(img/SS_IMG5.jpg)">
              <p class="text-padding text-strong text-white text-s-size-30 text-size-50 text-uppercase background-primary">Low prices</p>
              
            </div>
			
			
          
		  </div>  
        </section>
        
        <!-- SECTION 1 --> 
        <section class="grid margin text-center">
        
        	<!--
          
          <a href="" class="s-12 m-6 l-6 padding-2x vertical-center margin-bottom background-red">
            <i class="icon-sli-note text-size-60 text-white center margin-bottom-15"></i>
            <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-30 text-uppercase">comments</h3>
          </a>
          <a href="" class="s-12 m-6 l-3 padding-2x vertical-center margin-bottom background-blue">
            <i class="icon-sli-list text-size-60 text-white center margin-bottom-15"></i>
            <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-30 text-uppercase">Prices</h3>
          </a>
          
          -->
          
          <!-- Image-->
          <img class="m-12 l-6 l-row-2 margin-bottom" src="img/SS_IMG77.jpg">
          
          <a href="services" class="s-12 m-6 l-6 padding-2x vertical-center margin-bottom background-blue">
            <i class="icon-sli-wrench text-size-60 text-white center margin-bottom-15"></i>
            <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-30 text-uppercase">services</h3>
          </a>
          <a href="features" class="s-12 m-6 l-6 padding-2x vertical-center margin-bottom background-red">
            <i class="icon-sli-call-in text-size-60 text-white center margin-bottom-15"></i>
            <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-30 text-uppercase">contacts</h3>
          </a>
        </section>
        
        <!-- SECTION 2 -->
        <section class="grid section margin-bottom background-dark">
          <h2 class="s-12 l-6 center text-thin text-size-30 text-white text-uppercase margin-bottom-30">WELCOME TO <b> OTECK AUTO SERVICE STATION</b></h2>
          <p class="s-12 l-6 center">We at OTEK Auto Service Station offer convenient and quality driven services for your vehicle. From a basic exterior wash to more specialized major services; our trained staff delivers exceptional results on all types of vehicles</p>
        </section>
        
        <!-- SECTION 3 --> 
        <section class="grid margin">
          <!-- Image-->
          <img class="s-12 m-6 margin-bottom" src="img/SS_IMG8.jpg">
        
          <div class="s-12 m-6 padding-2x margin-bottom background-blue">
            <h2 class="text-strong text-size-50 text-line-height-1">Our Service Center is extremely dedicated to providing the best services to our clients</h2>
            <ul>
              <li>Full Service</li> 
              <li>Exterior Cleaning</li>
              <li>Interior Cleaning</li>
              <li>Body Wash</li>
              <li>Oil Change</li>
              <li>Filter Change</li>
            </ul>
          </div>
        </section>
        
       
        
        
        <!-- SECTION 5
        <section class="grid margin text-center">
          <div class="m-12 l-4 padding-2x background-dark margin-bottom text-right">
            <h3 class="text-strong text-size-25 text-uppercase margin-bottom-10">Let's keep in touch</h3>
            <p>Deleniti pertinacia eu est, te his soluta quaestio pericula illum vulputate lobortis facilisis.</p>
          </div>
          <a href="/" class="s-12 m-6 l-2 padding vertical-center margin-bottom facebook hover-zoom">
             <i class="icon-sli-social-facebook text-size-60 text-white center"></i>
          </a>
          <a href="/" class="s-12 m-6 l-2 padding vertical-center margin-bottom twitter hover-zoom">
            <i class="icon-sli-social-twitter text-size-60 text-white center"></i>
          </a>
          <a href="/" class="s-12 m-6 l-2 padding vertical-center margin-bottom youtube hover-zoom">
            <i class="icon-sli-social-youtube text-size-60 text-white center"></i>
          </a>
          
        </section>
       -->
                
      </main>
      
       
      <!-- FOOTER -->
      <footer class="grid">
        <!-- Footer - top -->
        <!-- Image-->
        <div class="s-12 l-3 m-row-3 margin-bottom background-image" style="background-image:url(img/SS_IMG9.jpg)"></div>
        
        <div class="s-12 m-9 l-3 padding-2x margin-bottom background-dark">
           <h2 class="text-strong text-uppercase">Who We Are?</h2>
           <p>Otek Auto Service Station began operations in 2007 with two employees for three-wheelers only. It was upgraded in 2010 by Chevron Lubricant Lanka PLC to the Star Lub category service center. Maintenance for all types of vehicles.</p>
        </div>
        
        <div class="s-12 m-9 l-3 padding-2x margin-bottom background-dark">
           <h2 class="text-strong text-uppercase">Where We Are?</h2>
           <img class="full-img2" src="img/saba123.png" alt=""/>
        </div>
        
        <div class="s-12 m-9 l-3 padding-2x margin-bottom background-dark">
           <h2 class="text-strong text-uppercase">Contact Us</h2>
           <p><b class="text-primary margin-right-10">P</b> 045-2241051</p>
           <p><b class="text-primary margin-right-10">M</b> <a class="text-primary-hover" href="mailto:contact@sampledomain.com">otekservicestation@gmail.com</a></p>
           
        </div>
        
        <!-- Footer - bottom -->
        <div class="s-12 text-center margin-bottom">
          <p class="text-size-12"></p>
          <p class="text-size-12"></p>
          <p><a class="text-size-12 text-primary-hover" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework"></a></p>
        </div>
      </footer>                                                                    
      <script type="text/javascript" src="js/responsee.js"></script>
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
      <script type="text/javascript" src="js/template-scripts.js"></script>

   </body>
</html>