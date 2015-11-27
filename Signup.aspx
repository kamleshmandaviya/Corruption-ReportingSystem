<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Contact
                        <strong>form</strong>
                    </h2>
                    <hr>
                    <p>Sign Up Detail is just an further refrence or maintain your own account no any type of other Purpose.your detail is safe no one is discuss so full fill your upload Crime Detail.</p>
                    <form role="form" runat="server">
                        <div class="row">
                            <div class="form-group col-lg-7">
                                <label>Name</label>
                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Alphabets only" ControlToValidate="txtname" ValidationExpression="[a-zA-Z]+$" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                            
                            <div class="form-group col-lg-7">
                                <label>Select Gender.</label><br />
                                <asp:RadioButton ID="radmale" runat="server" GroupName="Gender" Text="Male" />
                                <asp:RadioButton ID="radfemale" runat="server" GroupName="Gender" Text="Female" />
                                <asp:Label ID="lblgender" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="form-group col-lg-7">
                                <label>Email Address</label>
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a valid email address" ValidationExpression="([\w\.\\_]+)@([\w]+)((\.(\w){2,3})+)$" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                
                            </div>
                            <div class="form-group col-lg-7">
                                <label>Phone Number</label>
                                <asp:TextBox ID="txtphone" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter 10 Digit only Number" ValidationExpression="[0-9]{10}" ControlToValidate="txtphone" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
               
                            </div>
                            <div class="clearfix"></div>
                            <div class="form-group col-lg-7">
                                <label>PassWord.</label>
                                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Password atleast 6 character" ValidationExpression="\w{6,15}" ControlToValidate="txtpass" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                 
                            </div>
                            <div class="form-group col-lg-12">
                                <input type="hidden" name="save" value="contact">
                                <asp:Button ID="btnsubmit" runat="server" Text="Enter Crime Detail" CssClass="btn btn-default" OnClick="btnsubmit_Click" />
                                <asp:Button ID="btnreset" runat="server" Text="Reset" CssClass="btn btn-default" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

