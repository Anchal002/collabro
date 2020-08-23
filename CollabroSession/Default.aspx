<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="collabsession.Default" %>

<!DOCTYPE html>

<html lang="zxx">

<head>
    <title>Collabro Session</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">
</head>

<body>
    <div class="main-w3pvt">
        <!-- header -->
        <header>
            <div class="container-fluid">
                <div class="header d-md-flex justify-content-between align-items-center py-3 px-lg-3 px-2">
                    <!-- logo -->
                    <div id="logo">
                        <h1><a class="" href="Default.aspx">Collabro Session</a></h1>
                    </div>
                    <!-- //logo -->
                    <!-- nav -->
                    <div class="nav_w3ls">
                        <nav>
                            <label for="drop" class="toggle">Menu</label>
                            <input type="checkbox" id="drop" />
                            <ul class="menu">
                                <li  class="ml-lg-4 ml-md-3 mt-md-0 mt-2"><a href="Default.aspx" class="active">Home</a></li>
                                <li  class="ml-lg-4 ml-md-3 mt-md-0 mt-2"><a href="Session.aspx">Sesions</a></li>
                                <li  class="ml-lg-4 ml-md-3 mt-md-0 mt-2"><a href="contact.aspx">Contact Us</a></li>
                                <li class="mx-lg-4 mx-md-3 my-md-0 my-2">
									<label for="drop-2" class="toggle toogle-2">Pages <span class="fa fa-angle-down" aria-hidden="true"></span>
									</label>
									<a href="#">User <span class="fa fa-angle-down" aria-hidden="true"></span></a>
									<input type="checkbox" id="drop-2">
									<ul>
										<li><a href="Dashboard/UserSignIn.aspx" class="drop-text">Sign IN</a></li>
										<li><a href="Dashboard/UserSignUp.aspx" class="drop-text">Sign Up</a></li>
									</ul>
								</li>
                                <li class=" mt-md-0  mt-2"><a href="Dashboard/SignIn.aspx">Admin Login</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- //nav -->
                </div>
            </div>
        </header>
        <!-- //header -->

        <!-- banner -->
        <div class="banner-w3pvt">
            <div class="container">
                <div class="row banner-tops-style">
                    <div class="col-xl-6 col-lg-7 style-banner">
                        <h4 class="text-li mb-2">Best Events</h4>
                        <h3 class="text-wh font-weight-bold">Business & Marketing
                            <br>
                            Conference</h3>
                        <p class="text-li mt-5">
                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.
                        </p>
                        
                       <a href="readmore.aspx" class="btn button-style mt-sm-5 mt-4">Read More</a>
                    </div>
                    <div class="col-xl-6 banner-img text-xl-right text-center">
                        <img src="images/1.jpg" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
            <!-- animations icons -->
            <div class="icon-effects-w3">
                <!--<div class="stage">
					<figure class="ball"></figure>
				</div>-->
            </div>
            <div class="icon-effects-w3-2 text-right">
                <img src="images/icon-3.png" alt="" class="img-fluid">
            </div>
            <!-- //animations icons -->
        </div>
    </div>
    <!-- //banner -->
    <div class="what py-5" id="what">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-bl text-center font-weight-bold">What we do</h3>
            <div class="row pt-lg-3">
                <div class="col-lg-6 serv_bottom text-center">
                    <div class="row mt-xl-4">
                        <div class="col-sm-6">
                            <div class="bottom-gd">
                                <img src="images/img1.png" alt="" class="img-fluid">
                                <h3 class="my-3 font-weight-bold">Conference</h3>
                                <p>A conference is a meeting of people who "confer" about a topic.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-sm-0 mt-4">
                            <div class="bottom-gd">
                                <img src="images/img2.png" alt="" class="img-fluid">
                                <h3 class="my-3 font-weight-bold">Production</h3>
                                <p>Method of turning raw materials or inputs into finished goods or products in a manufacturing process.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-sm-5 mt-4 pt-xl-4">
                        <div class="col-sm-6">
                            <div class="bottom-gd">
                                <img src="images/img3.png" alt="" class="img-fluid">
                                <h3 class="my-3 font-weight-bold">Seminars</h3>
                                <p>Form of academic instruction, either at an academic institution or offered by a commercial or professional organization.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-sm-0 mt-4">
                            <div class="bottom-gd">
                                <img src="images/img4.png" alt="" class="img-fluid">
                                <h3 class="my-3 font-weight-bold">Strategy</h3>
                                <p>Is a high level plan to achieve one or more goals under conditions of uncertainty.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 fetured-sec mt-lg-0 mt-sm-5 mt-4">
                    <img src="images/ab.jpg" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- //what we do -->

    <!-- events -->
    <div class="team bg-li py-5" id="events">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-bl text-center font-weight-bold">Conference Events</h3>
            <div class="row">
                <div class="col-md-4 event-wthrees">
                    <div class="box16">
                        <img src="images/e1.jpg" alt="" class="img-fluid">
                        <div class="box-content">
                            <h3 class="title"><a href="blog.html">Conference</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 event-wthrees my-md-0 my-4">
                    <div class="box16">
                        <img src="images/e2.jpg" alt="" class="img-fluid">
                        <div class="box-content">
                            <h3 class="title"><a href="blog.html">Productivity</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 event-wthrees">
                    <div class="box16">
                        <img src="images/e3.jpg" alt="" class="img-fluid">
                        <div class="box-content">
                            <h3 class="title"><a href="blog.html">Event</a></h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-md-4 event-wthrees">
                    <div class="box16">
                        <img src="images/e4.jpg" alt="" class="img-fluid">
                        <div class="box-content">
                            <h3 class="title"><a href="blog.html">Presentation</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 event-wthrees my-md-0 my-4">
                    <div class="box16">
                        <img src="images/e5.jpg" alt="" class="img-fluid">
                        <div class="box-content">
                            <h3 class="title"><a href="blog.html">Leadership</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 event-wthrees">
                    <div class="box16">
                        <img src="images/e6.jpg" alt="" class="img-fluid">
                        <div class="box-content">
                            <h3 class="title"><a href="blog.html">Meetup</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //events -->

    <!-- services -->
    <div class="about-w3sec pt-5 py-lg-0 py-5" id="services">
        <div class="container pt-xl-5 pt-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-bl text-center font-weight-bold">Our Services</h3>
            <div class="row">
                <div class="col-lg-4 text-right mt-4">
                    <div class="abt-block">
                        <img src="images/s1.jpg" alt="" class="img-fluid" />
                        <h3 class="mt-2 mb-3">Service 1</h3>
                        <p>Congue donec leo eget malesuada. Cras ultriciet malesuaes ligula.</p>
                    </div>
                    <div class="abt-block mt-4 pr-xl-5">
                        <img src="images/s6.jpg" alt="" class="img-fluid" />
                        <h3 class="mt-2 mb-3">Service 2</h3>
                        <p>Congue donec leo eget malesuada. Cras ultriciet malesuaes ligula.</p>
                    </div>
                </div>
                <div class="col-lg-4 about-image mt-xl-0 mt-5">
                    <img src="images/ser.png" alt="" class="img-fluid" />
                </div>
                <div class="col-lg-4 mt-4">
                    <div class="abt-block">
                        <img src="images/s3.jpg" alt="" class="img-fluid" />
                        <h3 class="mt-2 mb-3">Service 4</h3>
                        <p>Congue donec leo eget malesuada. Cras ultriciet malesuaes ligula.</p>
                    </div>
                    <div class="abt-block mt-4 pl-xl-5">
                        <img src="images/s4.jpg" alt="" class="img-fluid" />
                        <h3 class="mt-2 mb-3">Service 5</h3>
                        <p>Congue donec leo eget malesuada. Cras ultriciet malesuaes ligula.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //services -->

    <!-- testimonials -->
    <section class="clients py-5" id="testi">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-wh text-center font-weight-bold">What Our People Says</h3>
            <div class="text-center pb-5">
                <div class="csslider infinity" id="slider1">
                    <input type="radio" name="slides" checked="checked" id="slides_1" />
                    <input type="radio" name="slides" id="slides_2" />
                    <input type="radio" name="slides" id="slides_3" />
                    <ul class="banner_slide_bg">
                        <li>
                            <div class="feedback-top">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod.
									sed do eiusmod tempor
									incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
									exercitation ullamco laboris nisi.
                                </p>
                                <img src="images/te1.jpg" alt=" " class="img-fluid rounded-circle mt-5">
                                <h4 class="mt-4 text-wh font-weight-bold mb-4">Mary Jane</h4>
                            </div>
                        </li>
                        <li>
                            <div class="feedback-top">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod.
									sed do eiusmod tempor
									incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
									exercitation ullamco laboris nisi.
                                </p>
                                <img src="images/te2.jpg" alt=" " class="img-fluid rounded-circle mt-5">
                                <h4 class="mt-4 text-wh font-weight-bold mb-4">Steven Wison</h4>
                            </div>
                        </li>
                        <li>
                            <div class="feedback-top">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod.
									sed do eiusmod tempor
									incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
									exercitation ullamco laboris nisi.
                                </p>
                                <img src="images/te3.jpg" alt=" " class="img-fluid rounded-circle mt-5">
                                <h4 class="mt-4 text-wh font-weight-bold mb-4">Mary Jane</h4>
                            </div>
                        </li>
                    </ul>
                    <div class="navigation">
                        <div>
                            <label for="slides_1"></label>
                            <label for="slides_2"></label>
                            <label for="slides_3"></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //testimonials -->

    <!-- blog -->
    <section class="blog py-5" id="blog">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-bl text-center font-weight-bold">Latest Blog</h3>
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="box13">
                        <img src="images/blog1.jpg" class="img-fluid" alt="" />
                    </div>
                    <div class="text-sm-left mt-4">
                        <h5>
                            <a href="blog.html" class="text-bl mb-2">sed do eiusmod tempor incididunt ut labore</a>
                        </h5>
                        <p class="mt-2">Joe Muskl 10 Nov, 2018</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 mt-sm-0 mt-5">
                    <div class="box13 active">
                        <img src="images/blog3.jpg" class="img-fluid" alt="" />
                    </div>
                    <div class="text-sm-left mt-4">
                        <h5>
                            <a href="blog.html" class="text-bl mb-2">sed do eiusmod tempor incididunt ut labore</a>
                        </h5>
                        <p class="mt-2">Joe Muskl 10 Nov, 2018</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 mt-md-0 mt-5 mx-auto">
                    <div class="box13">
                        <img src="images/blog2.jpg" class="img-fluid" alt="" />
                    </div>
                    <div class="text-sm-left mt-4">
                        <h5>
                            <a href="blog.html" class="text-bl mb-2">sed do eiusmod tempor incididunt ut labore</a>
                        </h5>
                        <p class="mt-2">Joe Muskl 10 Nov, 2018</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //blog -->

    <!-- footer -->
    <footer>
        <div class="w3ls-footer-grids py-5">
            <div class="container py-xl-5 py-lg-3">
                <div class="row">
                    <div class="col-lg-4 w3l-footer">
                        <h2 class="mb-sm-4 mb-4">
                            <a class="navbar-brand font-weight-bold" href="index.html">Conference
                            </a>
                        </h2>
                        <p>conference is generally understood as a meeting of several people to discuss a particular topic.</p>
                        <p class="mt-3">It is often confused with a convention, colloquia or symposium.</p>
                    </div>
                    <div class="col-lg-3 w3l-footer my-lg-0 my-5">
                        <h3 class="mb-lg-5 mb-4 text-wh">Address</h3>
                        <ul class="list-unstyled">
                            <li>
                                <i class="fa fa-location-arrow float-left"></i>
                                <p class="ml-4">
                                    Infotech<br>
                                    5241, India.
                                </p>
                                <div class="clearfix"></div>
                            </li>
                            <li class="my-3">
                                <i class="fa fa-phone float-left"></i>
                                <p class="ml-4">7398345239</p>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <i class="fa fa-envelope float-left"></i>
                                <a href="mailto:info@example.com" class="ml-3">collabro@gmail.com</a>
                                <div class="clearfix"></div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-5 w3l-footer">
                        <h3 class="mb-lg-5 mb-4 text-wh">Subscribe</h3>
                        <div class="n-right-w3ls">
                                <div class="form-group">
                                    <input class="form-control" type="email" name="Email" placeholder="Email Address" required="">
                                </div>
                                <button class="btn" type="submit">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright pt-5 px-5">
                <div class="row no-gutters text-center">
                    <p class="col-lg-8 copy-right-grids">
                        © 2019 Conference. All Rights Reserved | Design by
						Anchal Awasthi
                    </p>
                    <div class="col-lg-4 socila-bottom text-lg-right text-center mt-lg-0 mt-4">
                        <ul class="list-unstyled">
                            <li>
                                <a href="#">Facebook</a>
                            </li>
                            <li class="mx-4">
                                <a href="#">Twitter</a>
                            </li>
                            <li>
                                <a href="#">Google Plus</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- //footer -->

</body>

</html>
