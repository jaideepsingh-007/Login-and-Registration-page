<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration_page.aspx.cs" Inherits="registration_page" %>

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
            <td>Name :</td>
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Age :</td>
                <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Rollno :</td>
                <td><asp:TextBox ID="txtrollno" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               <%-- <td>Gender :</td>
                <td>
                    <asp:RadioButtonList ID="txtgender" runat="server" AutoPostBack="false">
                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                        <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>--%>
            </tr>
            <tr>
                <td>City :</td>
                <td>
                    <asp:DropDownList ID="txtcity" runat="server">
                        <asp:ListItem Value="Delhi" Text="Delhi"></asp:ListItem>
                        <asp:ListItem Value="Mumbai" Text="Mumbai"></asp:ListItem>
                        <asp:ListItem Value="Kolkatta" Text="Kolkatta"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="txtbutton" runat="server" Text="save" OnClick="txtbutton_Click" />
                </td>
            </tr>
            <tr>
                <td><asp:GridView ID="gvstudent" runat="server" AutoGenerateColumns="false" OnRowCommand="gvstudent_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="student Id">
                            <ItemTemplate>
                               <%#Eval("Id") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="student Name">
                            <ItemTemplate>
                                <%#Eval("Name") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="student Age">
                            <ItemTemplate>
                                <%#Eval("Age") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="student Rollno">
                            <ItemTemplate>
                               <%#Eval("Rollno")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="student gender">
                            <ItemTemplate>
                                <%#Eval("Gender") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="student city">
                            <ItemTemplate>
                                <%#Eval("city") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                
                    <asp:LinkButton ID="btndelete" runat="server" Text="Delete"  CommandName="A" CommandArgument=' <%#Eval("Id") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                         <asp:LinkButton ID="btnedit" runat="server" Text="Edit" CommandName="B" CommandArgument=' <%#Eval("Id") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                    </asp:GridView></td>
           </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
