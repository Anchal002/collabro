<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="CollabroSession.Dashboard.AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="card border-left-primary">
            <div class="card-header text-primary">
                <h5><i class="fa fa-plus"></i>&nbsp;Add New Member</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Member's Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Member's Address</label>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine" CssClass="form-control" placeholder="Address"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Email-ID</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="xyz@gmail.com"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Contact</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="941xxxxxxx"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Member's Discription</label>
                            <asp:TextBox ID="TextBox5" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Deatils..."></asp:TextBox>
                        </div>
                    </div>
                </div>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary btn-icon-split" OnClick="LinkButton2_Click">
                        <span class="icon text-white-50">
                            <i class="fa fa-user"></i>
                        </span>
                        <span class="text">Add Member</span>
                </asp:LinkButton>
            </div>
        </div>
    </form>
</asp:Content>
