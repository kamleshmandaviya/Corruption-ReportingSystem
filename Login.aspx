<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- All the files that are required -->
    <div class="container">
 <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>LOGIN</strong>
                    </h2>
                    <hr>
                     <form role="form" runat="server">
                        <div class="row">
                            <div class="form-group col-lg-4">
                           </div>
                            <div class="form-group col-lg-4">
                                <label>Email Address</label>
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            <div class="form-group col-lg-4">
                                
                            </div>
                            <div class="clearfix"></div>

                              <div class="form-group col-lg-4">
                               
                                
                            </div>
                            <div class="form-group col-lg-4">
                                <label>PassWord</label>
                                <asp:TextBox ID="txtpass" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-4">
                             
                                
                            </div>

                            <div class="clearfix"></div>

                              <div class="form-group col-lg-4">
                             
                                
                            </div>
                            <div class="form-group col-lg-4">
                                <asp:Button ID="btnsignin" runat="server" Text="Sign IN" CssClass="btn btn-default" OnClick="btnsignin_Click"/>
                                <asp:Button ID="btnforgotpass" runat="server" Text="Forgot Password"  CssClass="btn btn-default"/>
                                <asp:Button ID="btnsignup" runat="server" Text="Sign UP" CssClass="btn btn-default" PostBackUrl="~/Signup.aspx" />
                                
                                
                                
                            </div>
                            <div class="form-group col-lg-4">
                                <asp:TextBox ID="TextBox6" runat="server" Visible="false"></asp:TextBox>
                                
                            </div>


                            
                            <div class="form-group col-lg-12">
                                
                                
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>

