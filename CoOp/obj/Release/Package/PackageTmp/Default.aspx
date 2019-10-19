<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoOp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Witaj na stronie głównej!</h1>
    <br />
    <h3>Na naszej stronie znajdziesz spis gier, w które możesz zagrać ze swoimi znajomymi! </h3>
    <h3>Aby rozpocząć wybierz platformę do grania.</h3>
    <p>&nbsp;</p>
<table class="nav-justified">
    <tr>
        <td class="text-center">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="128px" ImageUrl="IMG\PC.png" Width="128px" PostBackUrl="PC" />
        </td>
        <td class="text-center">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="128px" ImageUrl="IMG\Xbox 360 Logo.png" Width="128px" PostBackUrl="Xbox360" />
        </td>
        <td class="text-center">
        <asp:ImageButton ID="ImageButton3" runat="server" Height="128px" ImageUrl="IMG\xbox one.png" Width="128px" PostBackUrl="Xbox-One" />
        </td>
        <td class="text-center">
        <asp:ImageButton ID="ImageButton4" runat="server" Height="128px" ImageUrl="IMG\PS3 Logo.png" Width="128px" PostBackUrl="PS3" />
        </td>
        <td class="text-center">
        <asp:ImageButton ID="ImageButton5" runat="server" Height="128px" ImageUrl="IMG\PS4 Logo.png" Width="128px" PostBackUrl="PS4" />
        </td>
    </tr>
</table>
    <p>
        &nbsp;</p>

</asp:Content>
