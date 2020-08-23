<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageWebinars.aspx.cs" Inherits="CollabroSession.Dashboard.ManageWebinars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            Webinar List 
                        <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" CssClass="float-right btn btn-primary" runat="server"><i class="fa fa-plus"></i>&nbsp; Add New Webinar Details</asp:LinkButton>
                        </div>
                        <div class="card-body">
                            <div class="card-title">
                                <h3 class="text-center title-2">All Webinar List</h3>
                            </div>
                            <hr>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Webinar</th>
                                            <th>Webinar Title Name</th>
                                            <th>Publish Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <iframe src='<%# Eval("Source") %>' class="img-fluid" style="width: 200px; height: 100px" allowfullscreen></iframe>
                                                    </td>
                                                    <td><%# Eval("WebinarTitle") %></td>
                                                    <td><%# Eval("PublishDate") %></td>
                                                    <td>
                                                        <asp:LinkButton CommandArgument='<%# Eval("Id") %>' ID="LinkButton2" runat="server" CssClass="btn btn-danger" OnClick="LinkButton8_Click"><i class="fa fa-trash"></i></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">Add New Demo Details</div>
                        <div class="card-body">
                            <div class="card-title">
                                <h3 class="text-center title-2">Webinar Description</h3>
                            </div>
                            <hr>
                            <div class="form-group">
                                <label class="control-label mb-1">Demo Title</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label mb-1">Demo Source</label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Paste Your Source Here"></asp:TextBox>
                            </div>
                            <div>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton1_Click">
                                       <i class="fa fa-video fa-lg"></i>&nbsp;Add Webinar
                                </asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-dark" OnClick="LinkButton3_Click">
                                       <i class="fa fa-backward fa-lg"></i>&nbsp;Back To List
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View4" runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list-group">
                                    <li class="list-group-item">

                                        <i class="fa fa-exclamation-triangle text-danger fa-2x "></i>&nbsp;Are Your Sure To Remove This Member?

                                    </li>
                                    <li class="list-group-item"><b>Member Name&nbsp;:&nbsp;</b><asp:Literal ID="Literal5" runat="server"></asp:Literal></li>
                                    <li class="list-group-item">
                                        <asp:LinkButton ID="LinkButton8" runat="server" CssClass="btn btn-danger btn-icon-split" OnClick="LinkButton8_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-trash"></i>
                        </span>
                        <span class="text">Delete</span>
                                        </asp:LinkButton>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </asp:View>
        </asp:MultiView>

    </form>

</asp:Content>

