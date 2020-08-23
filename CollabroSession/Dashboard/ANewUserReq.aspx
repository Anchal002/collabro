<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ANewUserReq.aspx.cs" Inherits="CollabroSession.Dashboard.ANewUserReq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">New User Request</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Address</th>
                                        <th>Email</th>
                                        <th>Contact</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("Address") %></td>
                                                <td><%# Eval("Email") %></td>
                                                <td><%# Eval("Contact") %></td>
                                                <td>
                                                    <asp:LinkButton OnClick="LinkButton1_Click" CssClass="btn btn-primary btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Edit" ID="LinkButton1" runat="server"><i class="fa fa-check"></i></asp:LinkButton>
                                                    <asp:LinkButton OnClick="LinkButton3_Click" CssClass="btn btn-danger btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Delete" ID="LinkButton3" runat="server"><i class="fa fa-cut"></i></asp:LinkButton>

                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>

</asp:Content>