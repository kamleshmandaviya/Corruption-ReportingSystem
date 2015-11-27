<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchCrime.aspx.cs" Inherits="SearchCrime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
    <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Crime Detail
                        <strong>Search By City.</strong>
                    </h2>
                    <hr>
                    <form role="form" runat="server">
                        <div class="row">
                            <div class="form-group col-lg-4">
                                <label>Select Country</label>
                                <asp:DropDownList ID="ddlcountry" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged"></asp:DropDownList>
                                
                            </div>
                            <div class="form-group col-lg-4">
                                <asp:Label ID="lblstate" runat="server" Text="Select State" Visible="false"></asp:Label>
                                <asp:DropDownList ID="ddlstate" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" Visible="false"></asp:DropDownList>
                            </div>
                            <div class="form-group col-lg-4">
                                <asp:Label ID="lblcity" runat="server" Text="Select City" Visible="false"></asp:Label>
                                <asp:DropDownList ID="ddlcity" runat="server" CssClass="form-control" Visible="false"></asp:DropDownList>
                            </div>
                           <div class="clearfix"></div>
                            </div>
                        <div class="form-group col-lg-12">
                            <asp:Button ID="btnsubmit" runat="server"  CssClass="btn btn-default" Text="Submit" OnClick="btnsubmit_Click" />
                        </div>
                        <div class="form-group col-lg-10">
                            <asp:Table ID="Table1" runat="server"></asp:Table>
                        </div>
                        </form>
                        </div>
                </div>
        </div>
         </div>

</asp:Content>

