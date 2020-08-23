<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageMember.aspx.cs" Inherits="CollabroSession.Dashboard.ManageMember" %>

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
                                                    <asp:LinkButton OnClick="LinkButton1_Click" CssClass="btn btn-primary btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Edit" ID="LinkButton1" runat="server"><i class="fa fa-edit"></i></asp:LinkButton>
                                                    <asp:LinkButton OnClick="LinkButton2_Click" CssClass="btn btn-success btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="View" ID="LinkButton2" runat="server"><i class="fa fa-eye"></i></asp:LinkButton>
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
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Emal"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Contact</label>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Contact"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <asp:TextBox ID="TextBox4" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Desc"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-primary btn-icon-split" OnClick="LinkButton5_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                        </span>
                        <span class="text">Update Info</span>
                        </asp:LinkButton>

                        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-warning btn-icon-split" OnClick="LinkButton4_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-backward"></i>
                        </span>
                        <span class="text">Back To List</span>
                        </asp:LinkButton>

                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="row">
                            <div class="col-lg-8">
                                <ul class="list-group">
                                    <li class="list-group-item"><b>Member Name&nbsp;:&nbsp;</b><asp:Literal ID="Literal1" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Address&nbsp;:&nbsp;</b><asp:Literal ID="Literal2" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Email&nbsp;:&nbsp;</b><asp:Literal ID="Literal3" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Contact&nbsp;:&nbsp;</b><asp:Literal ID="Literal4" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Member Details&nbsp;:&nbsp;</b><asp:Literal ID="Literal6" runat="server"></asp:Literal></li>

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



