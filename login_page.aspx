<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_page.aspx.cs" Inherits="login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Username: </td>
                <td><asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td>Passward :</td>
                <td><asp:TextBox ID="txtpassward" runat="server"></asp:TextBox></td>
             
            </tr>
            <tr>
                <td><asp:Button ID="btnsave" runat="server" Text="save" OnClick="txtsave_Click" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
