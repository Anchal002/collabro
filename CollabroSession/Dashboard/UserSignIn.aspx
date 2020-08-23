<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignIn.aspx.cs" Inherits="CollabroSession.UserSignIn" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <link href="css/sb-admin-2.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
</head>

<body class="bg-warning">

    <div class="container">
        <div class="row justify-content-center">

            <div class="col-xl-12 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 ">
                                <%--<img src="img/13.png" height="400" width="400"/>--%>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome User!</h1>
                                    </div>
                                    <form class="user" runat="server">
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox1" class="form-control form-control-user" runat="server" placeholder="Enter Email Address..."></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox2" TextMode="Password" class="form-control form-control-user" runat="server" placeholder="Enter Password"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-primary btn-user btn-block" />
                                        <hr>
                                    </form>

                                    <div class="text-center">
                                        New User?&nbsp;    <a class="small" href="UserSignUp.aspx">Create an Account!</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="../Default.aspx">Back To Home?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
