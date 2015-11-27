<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProfileView.aspx.cs" Inherits="ProfileView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Crime Detail
                        <strong>form</strong>
                    </h2>
                    <hr>
                        <form id="profile" runat="server">
                        <asp:LinkButton ID="linkadd" runat="server" PostBackUrl="~/CrimeDetail.aspx" >Add new Crime Detail.</asp:LinkButton>
                        <asp:LinkButton ID="linksignout" runat="server" PostBackUrl="~/SignOut.aspx" >i am not a <%Response.Write(Session["UserName"].ToString()); %></asp:LinkButton>
                        <asp:Table ID="Table1" runat="server"></asp:Table>
                        </form>
                    </div>
                </div>
        </div>
        </div>
</asp:Content>

