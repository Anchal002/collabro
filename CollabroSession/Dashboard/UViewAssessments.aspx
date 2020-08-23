<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="UViewAssessments.aspx.cs" Inherits="CollabroSession.Dashboard.UViewAssessments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card shadow mb-4 border-left-primary">
            <div class="card-header py-3 ">
                <h6 class="m-0 font-weight-bold text-primary">All Assessments</h6>
            </div>
            <div class="card-body">

                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Assigning Date</th>
                                        <th>Completion Date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("Title") %></td>
                                                <td><%# Eval("ADate") %></td>
                                                <td><%# Eval("CDate") %></td>
                                                <td>
                                                    <asp:LinkButton OnClick="LinkButton2_Click" CssClass="btn btn-info btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="View" ID="LinkButton2" runat="server"><i class="fa fa-tasks"></i></asp:LinkButton>
                                                    <asp:LinkButton OnClick="LinkButton3_Click" CssClass="btn btn-danger btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Mark As a Complete" ID="LinkButton3" runat="server"><i class="fa fa-check"></i></asp:LinkButton>

                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                        </div>
                    </asp:View>
                    
                    <asp:View ID="View3" runat="server">
                        <div class="row">
                            <div class="col-lg-8">
                                <ul class="list-group">
                                    <li class="list-group-item"><b>Assessment Title&nbsp;:&nbsp;</b><asp:Literal ID="Literal1" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Assigning Date&nbsp;:&nbsp;</b><asp:Literal ID="Literal2" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Completion Date&nbsp;:&nbsp;</b><asp:Literal ID="Literal3" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Description&nbsp;:&nbsp;</b><asp:Literal ID="Literal4" runat="server"></asp:Literal></li>

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



