<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Assessment.aspx.cs" Inherits="CollabroSession.Dashboard.Assessment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="card border-left-primary">
            <div class="card-header text-primary">
                <h5><i class="fa fa-tasks"></i>&nbsp;Add New Assessment</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>Assessment Title</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>Completion Date</label>
                            <asp:TextBox ID="TextBox2" TextMode="Date" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>

                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Assigned To</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" Class="form-control"> </asp:DropDownList>

                        </div>
                    </div>
                    <div class="col-lg-12">

                        <div class="form-group">
                            <label>Complete Task Descriptionk</label>
                            <asp:TextBox ID="TextBox4" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Body..."></asp:TextBox>
                        </div>
                    </div>
                </div>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-icon-split" OnClick="LinkButton1_Click">
                        <span class="icon text-white-50">
                            <i class="fas fa-tasks"></i>
                        </span>
                        <span class="text">Send Task</span>
                </asp:LinkButton>
            </div>
        </div>
    </form>
</asp:Content>

