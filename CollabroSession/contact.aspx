<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CollabroSession.contact" %>

<!DOCTYPE html>

<html lang="zxx">

<head>
	<title>CollabroSession | Contact Us :: Raj</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Conference Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext,vietnamese"
	 rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: -2px;
        }
    </style>
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
			<li class="breadcrumb-item active" aria-current="page">Contact Us</li>
		</ol>
	</div>
	<div class="contact py-5" id="contact">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">Contact Us</h3>
			<div class="row pt-lg-4">
				<div class="col-lg-4">
					<div class="aasana-w3-contact-top">
						<h4 class="about-left-agile font-weight-bold mb-2">Get In Touch </h4>
						<p>New Delhi 2019, India.</p>
					</div>
					<hr>
					<p>Donec mi nulla, auctor nec sem a, ornare auctor mi. Sed mi tortor, commodo a felis in,
						fringilla
						tincidunt
						nulla. Vestibulum volutpat non eros ut vulpuuctor nec sem </p>
					<a class="btn btn-primary mt-4 bunt-w3-link scroll" href="#footer" role="button">subscribe
					</a>
				</div>
				<div class="offset-2"></div>
				<div class="col-lg-6 mt-lg-0 mt-5">
					<div class="register-top1">
						<form runat="server" class="register-wthree">
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label>
											First name
										</label>
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Your Full Name"></asp:TextBox>
									    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required*" Font-Italic="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
									</div>
									<div class="auto-style1">
										<label>
											Last name
										</label>
                                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Your Last Name"></asp:TextBox>
									    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required*" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label>
											Mobile
										</label>
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="XXX XXXX XXXX"></asp:TextBox>
									    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="phone number must be 10 digit*" ForeColor="Red" ValidationExpression="(?:\s+|)((0|(?:(\+|)91))(?:\s|-)*(?:(?:\d(?:\s|-)*\d{9})|(?:\d{2}(?:\s|-)*\d{8})|(?:\d{3}(?:\s|-)*\d{7}))|\d{10})(?:\s+|)"></asp:RegularExpressionValidator>
									</div>
									<div class="col-md-6 mt-md-0 mt-4">
										<label>
											Email
										</label>
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="example@gmail.com"></asp:TextBox>
									    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Email is required*" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-12">
										<label>
											Your message
										</label>
                                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"   class="form-control" placeholder="Message"></asp:TextBox>
									    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter your message*" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-md-12">
                                    <asp:Button ID="Button1" OnClick="Button_Click" runat="server" CssClass="btn btn-primary" Text="Send Feedback" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="w3l-map p-2">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3559.7843856753366!2d80.94247381451923!3d26.84680936938831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfd07c3c15643%3A0x867bb0de72c4c460!2sDigipodium!5e0!3m2!1sen!2sin!4v1556515401315!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	<footer>
		<div class="w3ls-footer-grids py-5">
			<div class="container py-xl-5 py-lg-3">
				<div class="row">
					<div class="col-lg-4 w3l-footer">
						<h2 class="mb-sm-4 mb-4">
							<a class="navbar-brand font-weight-bold" href="index.html">
								CollabroSession
							</a>
						</h2>
						<p>Collaboration in itself is a very broad term which includes working together in various set ups. In today's technologically advanced age of internet users collaboration means an online communication setup that allows people working on the same project work together even if they are not at the same location</p>
						
					</div>
					<div class="col-lg-3 w3l-footer my-lg-0 my-5">
						<h3 class="mb-lg-5 mb-4 text-wh">Address</h3>
						<ul class="list-unstyled">
							<li>
								<i class="fa fa-location-arrow float-left"></i>
								<p class="ml-4">Digital India<br> 5241, India.</p>
								<div class="clearfix"></div>
							</li>
							<li class="my-3">
								<i class="fa fa-phone float-left"></i>
								<p class="ml-4">8787061344</p>
								<div class="clearfix"></div>
							</li>
							<li>
								<i class="fa fa-envelope float-left"></i>
								<a href="mailto:info@example.com" class="ml-3">collabro@gmail.com</a>
								<div class="clearfix"></div>
							</li>
						</ul>
					</div>
					<div class="col-lg-5 w3l-footer" id="footer">
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
					<p class="col-lg-8 copy-right-grids">© 2018 Conference. All Rights Reserved | Design by
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
</body>

</html>
