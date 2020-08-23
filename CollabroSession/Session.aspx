<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="CollabroSession.Session" %>

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
    <link rel="stylesheet" href="css/blog.css" type="text/css" media="all" />

    <link rel="stylesheet" href="css/bootstrap.css">
    <link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">
</head>

<body>
    <div class="main-w3pvt banner-w3ls-2">
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
    </div>
    <div class="breadcrumb-agile">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="Default.aspx">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Session</li>
        </ol>
    </div>
    <div class="blog-w3l py-5">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">All Available Sessions</h3>
            <div class="row blog-content pt-lg-3">
                <div class="col-lg-8">
                    <div class="row">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-6 blog_section mt-5">
                                    <div class="card">
                                        <img class="card-img-top " src='<%# Eval("Uploadpic") %>' style="height: 200px; width: 100%" alt="">
                                        <div class="card-body text-center">
                                            <ul class="blog_list my-3">
                                                <li><i class="fa fa-user"></i>
                                                    <%# Eval("TakenBy") %></a></li>
                                                <li class="mx-3">
                                                    <a href="#">
                                                        <i class="fa fa-calendar"></i>
                                                        <%# Eval("Date") %></a>
                                                </li>

                                            </ul>
                                            <h5 class="card-title">
                                                <a href="single.html" class="text-dark"><%# Eval("Sessiontitle") %></a>
                                            </h5>
                                            <p class="card-text">
                                                Morbi eget dui elit. In lectus eros, convallis vel dolor vitae, semper sodales risus. Donec
								convallis maximus neque
								vel cursus.
                                            </p>
                                            <a href="single.html" class="btn btn-primary blog-button mt-3">Join Now</a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="col-lg-4 event-right mt-lg-0 mt-sm-5 mt-4">
                    <div class="event-right1">
                        <div class="posts p-4 border my-4">
                            <h3 class="blog-title text-dark mb-3">Our Events</h3>
                            <div class="posts-grids">
                                <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <div class="row posts-grid mt-4">
                                            <div class="col-lg-4 col-md-3 col-4 posts-grid-left pr-0">
                                                <a href="single.html">
                                                    <img src='<%# Eval("Uploadpic") %>' alt=" " class="img-fluid" />
                                                </a>
                                            </div>
                                            <div class="col-lg-8 col-md-7 col-8 posts-grid-right">
                                                <h4>
                                                    <a href="single.html" class="text-dark"><%# Eval("Sessiontitle") %></a>
                                                </h4>
                                                <ul class="wthree_blog_events_list mt-2">
                                                    <li class="mr-2 text-dark">
                                                        <i class="fa fa-calendar mr-2" aria-hidden="true"></i><%# Eval("Date") %></li>
                                                    <li>
                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                        <a href="single.html" class="text-dark ml-2">By <%# Eval("TakenBy") %></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <hr />
                                    </ItemTemplate>
                                </asp:Repeater>


                            </div>
                        </div>

                    </div>
                </div>
                <!-- //right side -->
            </div>
        </div>
    </div>
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
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                        <p class="mt-3">eaque ipsa quae ab illo quasi architecto beatae vitae dicta.</p>
                    </div>
                    <div class="col-lg-3 w3l-footer my-lg-0 my-5">
                        <h3 class="mb-lg-5 mb-4 text-wh">Address</h3>
                        <ul class="list-unstyled">
                            <li>
                                <i class="fa fa-location-arrow float-left"></i>
                                <p class="ml-4">
                                    LBSGCM
                                    <br>
                                    5241, New-Delhi.
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
                            <form action="#" method="post">
                                <div class="form-group">
                                    <input class="form-control" type="email" name="Email" placeholder="Email Address" required="">
                                </div>
                                <button class="btn" type="submit">Subscribe</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright pt-5 px-5">
                <div class="row no-gutters text-center">
                    <p class="col-lg-8 copy-right-grids">
                        © 2018 Conference. All Rights Reserved | Design by
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
