<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewSession.aspx.cs" Inherits="CollabroSession.AddNewSession" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="card border-left-primary">
            <div class="card-header text-primary">
                <h5><i class="fa fa-plus"></i>&nbsp;Add New Session</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Session Title</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Taken By</label>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine" CssClass="form-control" placeholder="TakenBy"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Start Date</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label>Time</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Time" TextMode="Time"></asp:TextBox>
                            <br />
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Session Discription</label>
                            <asp:TextBox ID="TextBox5" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control" placeholder="Deatils..."></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label>Upload Pic</label>
                        <asp:FileUpload ID="Fileupload1" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary btn-icon-split" OnClick="LinkButton2_Click">
                        <span class="icon text-white-50">
                            <i class="fa fa-user"></i>
                        </span>
                        <span class="text">Add new Session</span>

                </asp:LinkButton>
            </div>
        </div>
    </form>

</asp:Content>
