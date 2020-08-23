<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="CollabroSession.Dashboard.Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="card border-left-primary">
            <div class="card-header text-primary">
                <h5><i class="fa fa-plus"></i>&nbsp;Notification</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Recipient Email</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="New Mail"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-12">

                        <div class="form-group">
                            <label>Subject</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-12">

                        <div class="form-group">
                            <label>Message</label>
                            <asp:TextBox ID="TextBox4" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Body..."></asp:TextBox>
                        </div>
                    </div>
                </div>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-icon-split" OnClick="LinkButton1_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-bullhorn"></i>
                        </span>
                        <span class="text">Send Notification</span>
                </asp:LinkButton>
            </div>
        </div>
    </form>
</asp:Content>
