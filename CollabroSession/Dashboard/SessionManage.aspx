<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SessionManage.aspx.cs" Inherits="CollabroSession.Dashboard.SessionManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Product List</h6>
            </div>
            <div class="card-body">

                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th class="text-center">Session</th>
                                        <th>TakenBy</th>
                                        <th>Title</th>
                                         <th>Date</th>
                                        <th>Time</th>
                                        <th>Action</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center">
                                                    <img src='<%# Eval("Uploadpic") %>' class="img-fluid" height="80" width="100" />
                                                </td>
                                                <td><%# Eval("TakenBy") %></td>
                                                <td><%# Eval("Sessiontitle") %></td>
                                                <td><%# Eval("Date") %></td>
                                                <td><%# Eval("Time") %></td>
                                                <td>
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
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Sessiontitle</label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Sessiontitle"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group">
                                <label>TakenBy</label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="TakenBy"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group">
                                <label>Date</label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Time</label>
                                <asp:TextBox ID="TextBox4" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Time"></asp:TextBox>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label>SessionDesc</label>
                                    <asp:TextBox ID="TextBox5" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Desc"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label>Upload Pic</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
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
                            <div class="col-lg-4">
                                <ul class="list-group">
                                    <li class="list-group-item text-center">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Pic") %>' CssClass="img-fluid" />
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-8">
                                <ul class="list-group">
                                    <li class="list-group-item"><b>Sessiontitle&nbsp;:&nbsp;</b><asp:Literal ID="Literal1" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>TakenBy&nbsp;:&nbsp;</b><asp:Literal ID="Literal2" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Date&nbsp;:&nbsp;</b><asp:Literal ID="Literal3" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>Time&nbsp;:&nbsp;</b><asp:Literal ID="Literal6" runat="server"></asp:Literal></li>
                                    <li class="list-group-item"><b>SessionDesc&nbsp;:&nbsp;</b><asp:Literal ID="Literal4" runat="server"></asp:Literal></li>

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

                                        <i class="fa fa-exclamation-triangle text-danger fa-2x "></i>&nbsp;Are Your Sure To Delete This Product?

                                    </li>

                                    <li class="list-group-item text-center">
                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Pic") %>' CssClass="img-fluid" />
                                    </li>
                                    <li class="list-group-item"><b>Sessiontitle&nbsp;:&nbsp;</b><asp:Literal ID="Literal5" runat="server"></asp:Literal></li>
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


