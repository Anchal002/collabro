<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewReport.aspx.cs" Inherits="CollabroSession.Dashboard.ViewReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card shadow mb-4 border-left-primary">
            <div class="card-header py-3 ">
                <h6 class="m-0 font-weight-bold text-primary">Member List</h6>
            </div>
            <div class="card-body">

                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Assessment Title</th>
                                        <th>Upload By</th>
                                        <th>Report Title</th>
                                        <th>Updated on</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("Title") %></td>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("ReportTitle") %></td>
                                                <td><%# Eval("ReportTime") %></td>
                                                <td>
                                                    <asp:LinkButton OnClick="LinkButton1_Click" CssClass="btn btn-primary btn-circle" CommandArgument='<%# Eval("Report") %>' ToolTip="Download Report" ID="LinkButton1" runat="server"><i class="fa fa-download"></i></asp:LinkButton>
                                                    <asp:LinkButton OnClick="LinkButton2_Click" CssClass="btn btn-success btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="View Complete Detail" ID="LinkButton2" runat="server"><i class="fa fa-eye"></i></asp:LinkButton>
                                                    <asp:LinkButton OnClick="LinkButton3_Click" CssClass="btn btn-danger btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Delete" ID="LinkButton3" runat="server"><i class="fa fa-trash"></i></asp:LinkButton>

                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="row">
                            <div class="col-lg-8">
                                <ul class="list-group">
                                    <li class="list-group-item"><b>Upload By&nbsp;:&nbsp;</b><asp:Literal ID="Literal1" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Report Title&nbsp;:&nbsp;</b><asp:Literal ID="Literal2" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Upload On&nbsp;:&nbsp;</b><asp:Literal ID="Literal3" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Report Regarding Task&nbsp;:&nbsp;</b><asp:Literal ID="Literal4" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Report Details&nbsp;:&nbsp;</b><asp:Literal ID="Literal6" runat="server"></asp:Literal></li>

                                    <li class="list-group-item">
                                        <asp:LinkButton ID="LinkButton6" runat="server" CssClass="btn btn-warning btn-icon-split" OnClick="LinkButton4_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-backward"></i>
                        </span>
                        <span class="text">Back To List</span>
                                        </asp:LinkButton>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list-group">
                                    <li class="list-group-item">

                                        <i class="fa fa-exclamation-triangle text-danger fa-2x "></i>&nbsp;Are Your Sure To Remove This Report?

                                    </li>
                                    <li class="list-group-item"><b>Report Name&nbsp;:&nbsp;</b><asp:Literal ID="Literal5" runat="server"></asp:Literal></li>
                                    <li class="list-group-item">
                                        <asp:LinkButton ID="LinkButton8" runat="server" CssClass="btn btn-danger btn-icon-split" OnClick="LinkButton8_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-trash"></i>
                        </span>
                        <span class="text">Delete</span>
                                        </asp:LinkButton>


                                        <asp:LinkButton ID="LinkButton7" runat="server" CssClass="btn btn-warning btn-icon-split" OnClick="LinkButton4_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-backward"></i>
                        </span>
                        <span class="text">Back To List</span>
                                        </asp:LinkButton>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </form>
</asp:Content>



