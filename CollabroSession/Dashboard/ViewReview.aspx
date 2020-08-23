<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewReview.aspx.cs" Inherits="CollabroSession.Dashboard.ViewReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Reviews</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Message</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Eval("Name") %></td>
                                        <td><%# Eval("Email") %></td>
                                        <td><%# Eval("MobileNo") %></td>
                                        <td><%# Eval("Message") %></td>
                                        <td align="center">
                                            <asp:LinkButton OnClick="LinkButton3_Click" CssClass="btn btn-danger btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Delete" ID="LinkButton3" runat="server"><i class="fa fa-trash"></i></asp:LinkButton>
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