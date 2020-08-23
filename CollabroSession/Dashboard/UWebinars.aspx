<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/UserMaster.Master" AutoEventWireup="true" CodeBehind="UWebinars.aspx.cs" Inherits="CollabroSession.Dashboard.UWebinars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">All Webinars</h6>
            </div>
            <div class="card-body">
                <div class="row">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 mb-5">
                                <div class="card">
                                    <div class="card-img-top">
                                        <iframe src='<%# Eval("Source") %>' class="img-fluid" style="width: 100%; height: 250px" allowfullscreen></iframe>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title"><%# Eval("WebinarTitle") %></h4>
                                        <p><i class="fa fa-calendar"></i>&nbsp;<%# Eval("date") %></p>
                                        <p><i class="fa fa-clock"></i>&nbsp;<%# Eval("time") %></p>

                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </form>

</asp:Content>
