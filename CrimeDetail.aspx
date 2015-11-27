<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CrimeDetail.aspx.cs" Inherits="CrimeDetail" %>

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
                    <p>Please Fill All Detail you freely update.</p>
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
                            <div class="form-group col-lg-4">
                                <label>Please Select Crime Type.</label>
                                <br />
                                <br />
                                <label>ABUSE OF POWER</label>
                                <br />
                                <br />
                                <asp:RadioButton ID="radio1" runat="server" Text="Abuse of public funds and/or resources." GroupName="abofpo" /><br />
                                <asp:RadioButton ID="radio2" runat="server" Text="Abuse of assets." GroupName="abofpo" /><br />
                                <asp:RadioButton ID="radio3" runat="server" Text="Abusing a position." GroupName="abofpo"/>
                            </div>

                            <div class="form-group col-lg-4">
                                <br />
                                <br />
                                <label>EMPLOYMENT</label>
                                <br />
                                <br />
                                <asp:RadioButton ID="radio4" runat="server" Text="Corruption to get a job." GroupName="abofpo" /><br />
                                <asp:RadioButton ID="radio5" runat="server" Text="Fake/ghost work." GroupName="abofpo" />
                            </div>
                            <div class="clearfix"></div>
                            <div class="form-group col-lg-4">
                                <br />
                                <br />
                                <label>TENDER</label>
                                <br />
                                <br />
                                <asp:RadioButton ID="radio6" runat="server" Text="Corruption to get a tender." GroupName="abofpo" /><br />
                                <asp:RadioButton ID="radio7" runat="server" Text="Irregularities related to a tender process." GroupName="abofpo" />
                            </div>
                            <div class="form-group col-lg-4">
                                <br />
                                <br />
                                <label>BRIBERY</label>
                                <br />
                                <br />
                                <asp:RadioButton ID="radio8" runat="server" Text="A bribe was involved." GroupName="abofpo" /><br />
                                
                            </div>
                            <div class="clearfix"></div>
                            <div class="form-group col-lg-4">
                                <br />
                                <br />
                                <label>Other</label>
                                <br />
                                <br />
                                <asp:RadioButton ID="radio" runat="server" Text="Other types of corruption." GroupName="abofpo" /><br />
                            </div>
                      
                            <div class="form-group col-lg-10">
                                <label>Message</label><br />
                                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Width="550px" Height="100px"></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-4">
                                <label>Select An Image</label>
                                <asp:FileUpload ID="fileupload" runat="server" CssClass="form-control" />
                            </div>
                            <div class="form-group col-lg-12">
                                <input type="hidden" name="save" value="contact">
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="btnsubmit_Click" />
                                
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
    </div>
</asp:Content>

