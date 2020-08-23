<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="CollabroSession.Dashboard.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Webinar</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-video fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Total Assessment</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-fw fa-list-ol fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Total Report Send</div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="progress progress-sm mr-2">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-fw fa-paper-plane fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Total Join Session</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-fw fa-tv fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Profile Info</h6>
                </div>
                <div class="card-body">
                    <div class="text-center">
                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item active"><b><i class="fa fa-user"></i>&nbsp;Name : </b>&nbsp;<asp:Literal ID="Literal5" runat="server"></asp:Literal></li>
                        <li class="list-group-item"><b><i class="fa fa-envelope"></i>&nbsp;Email : </b>&nbsp;<asp:Literal ID="Literal6" runat="server"></asp:Literal></li>
                        <li class="list-group-item"><b><i class="fa fa-map-marker"></i>&nbsp;Address : </b>&nbsp;<asp:Literal ID="Literal7" runat="server"></asp:Literal></li>
                        <li class="list-group-item"><b><i class="fa fa-phone"></i>&nbsp;Contact : </b>&nbsp;<asp:Literal ID="Literal8" runat="server"></asp:Literal></li>

                    </ul>
                </div>
                <div class="card-footer">

                </div>
            </div>
        </div>
    </div>
</asp:Content>
