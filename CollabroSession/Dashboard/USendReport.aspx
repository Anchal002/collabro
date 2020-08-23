<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="USendReport.aspx.cs" Inherits="CollabroSession.Dashboard.USendReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="card border-left-primary">
            <div class="card-header text-primary">
                <h5><i class="fa fa-tasks"></i>&nbsp;Send Task Report</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>Report Title</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder=" Report Title"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>Report For Task</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" Class="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Upload Report</label>
                            <asp:FileUpload ID="FileUpload1" runat="server"  Class="form-control"/>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Description</label>
                            <asp:TextBox ID="TextBox2" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Full Message..."></asp:TextBox>
                        </div>
                    </div>
                </div>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-icon-split" OnClick="Button1_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-file"></i>
                        </span>
                        <span class="text">Send Report</span>
                </asp:LinkButton>
            </div>
        </div>
    </form>
</asp:Content>


