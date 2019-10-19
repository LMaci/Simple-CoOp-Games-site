<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logowanie.aspx.cs" Inherits="CoOp.Logowanie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<br />
<table class="nav-justified">
    <tr>
        <td style="width: 40px">Login:</td>
        <td style="width: 211px">
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Pole wymagane" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 40px">Hasło: </td>
        <td style="width: 211px">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Pole wymagane" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
</table>
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zaloguj" />
<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Size="14pt"></asp:Label>
<br />
</asp:Content>
