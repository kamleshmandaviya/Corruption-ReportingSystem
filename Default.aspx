<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/WebForms/WebUIValidation.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table border="2">
            <tr>
                <td>
                    Name
                </td>
                
                <td>
                    <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Alphabets only" ControlToValidate="txtname" ValidationExpression="[a-zA-Z]+$" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    SurName
                </td>
                <td>
                    <asp:TextBox ID="txtsurname" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Alphabets only" ControlToValidate="txtsurname" ValidationExpression="[a-zA-Z]+$" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
              <tr>
                <td>
                    Mobile no
                </td>
                <td>
                    <asp:TextBox ID="txtmobile" runat="server" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter 10 Digit only Number" ValidationExpression="[0-9]{10}" ControlToValidate="txtmobile" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Email Id
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a valid email address" ValidationExpression="([\w\.\\_]+)@([\w]+)((\.(\w){2,3})+)$" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td>
                    State
                </td>
                <td>
                    <asp:DropDownList ID="ddlstate" runat="server"  AutoPostBack="True" >
                        
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td>
                    City
                </td>
                <td>
                    <asp:DropDownList ID="ddlcity" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    DateOfBirth
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    Gender
                </td>
                <td>
                    <asp:RadioButton ID="rbtnmale" runat="server" Text="Male" GroupName="Gender" />
            <asp:RadioButton ID="rbtnfemale" runat="server" Text="Female" GroupName="Gender" />
                </td>
            </tr>
             <tr>
                <td>
                    Hobby
                </td>
                <td>
                    <asp:CheckBox ID="chkcri" runat="server"  Text="Cricket"  />
                    <asp:CheckBox ID="chkfoot" runat="server" Text="Football"  />
                    <asp:CheckBox ID="chkten" runat="server" Text="Tennis"/>
                    <asp:CheckBox ID="chkson" runat="server" Text="Songs" />

                </td>
            </tr>
             <tr>
                <td>
                    Photo
                </td>
                <td>
                    <asp:FileUpload ID="fupphoto" runat="server"  />

                </td>
            </tr>
        </table>
 
    
    
        <asp:Button ID="btnsubmit" runat="server" Text="Submit"  />
        <asp:Button ID="btnshow" runat="server" Text="Show"  />
    </form>
</body>
</html>
