<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="CollabroSession.SignUp" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <link href="css/sb-admin-2.css" rel="stylesheet" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SignUp</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user" runat="server" id="form1">
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control form-control-user" runat="server" placeholder="Enter Name" TextMode="SingleLine"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" CssClass="fa fa-exclamation-circle" Display="Dynamic" ErrorMessage="Name should be string!" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z]+[\-'\s]?[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control form-control-user" runat="server" placeholder="Enter Email" TextMode="Email"></asp:TextBox>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" CssClass="fa fa-exclamation circle" Display="Dynamic" ErrorMessage="Email is not in valid format!" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control form-control-user" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                        <small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="fa fa-exclamation-circle" ErrorMessage="Password Required!" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                        </small>
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control form-control-user" runat="server" placeholder="Comfirm Password" TextMode="Password"></asp:TextBox>
                                        <small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="fa fa-exclamation-circle" ErrorMessage="Re-enter Password!" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ValidationGroup="1"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="fa fa-exclamation-circle" ErrorMessage="Password Missmatch" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:CompareValidator>
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <asp:TextBox ID="TextBox5" CssClass="form-control form-control-user" runat="server" placeholder="Contact" TextMode="Phone"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" CssClass="fa fa-exclamation-circle" Display="Dynamic" ErrorMessage="Number should be of 10 digits!" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?:\s+|)((0|(?:(\+|)91))(?:\s|-)*(?:(?:\d(?:\s|-)*\d{9})|(?:\d{2}(?:\s|-)*\d{8})|(?:\d{3}(?:\s|-)*\d{7}))|\d{10})(?:\s+|)"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="TextBox6" CssClass="form-control form-control-user" runat="server" placeholder="Enter Full Address" TextMode="SingleLine"></asp:TextBox>
                                        <small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="fa fa-exclamation-circle" ErrorMessage="Address please!" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                        </small>
                                    </div>
                                </div>
                                <hr />
                                <asp:Button ID="Button1" runat="server" Text="Register Account" CssClass="btn btn-primary btn-user btn-block" OnClick="Button1_Click" />
                            </form>
                            <hr>

                            <div class="text-center">
                                <a class="small" href="UserSignIn.aspx">Already have an account? Login!</a>
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

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
