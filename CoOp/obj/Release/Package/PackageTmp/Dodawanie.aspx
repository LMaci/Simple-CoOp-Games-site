<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dodawanie.aspx.cs" Inherits="CoOp.Dodawanie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        

            <asp:Panel ID="Panel2" runat="server">
                <asp:Button ID="Button3" runat="server" Text="Dodaj grę" Width="200px" OnClick="Button3_Click" />
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Text="Usuń grę" Width="200px" OnClick="Button4_Click" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Wyloguj" />
            </asp:Panel>

    <asp:Panel ID="Panel1" runat="server">
    <h1>Dodawanie gry</h1>
            <table class="nav-justified">
                <tr>
                    <td class="text-right" style="width: 120px">Tytuł:</td>
                    <td>
                        <asp:TextBox ID="tbTytul" runat="server" Width="320px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">Platforma:</td>
                    <td style="margin-left: 40px">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="2">PC</asp:ListItem>
                            <asp:ListItem Value="3">Xbox 360</asp:ListItem>
                            <asp:ListItem Value="4">Xbox One</asp:ListItem>
                            <asp:ListItem Value="5">Playstation 3</asp:ListItem>
                            <asp:ListItem Value="6">Playstation 4</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">Gatunek:</td>
                    <td style="margin-left: 40px">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NAZWA" DataValueField="NAZWA">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=maci.database.windows.net;Initial Catalog=CoOp;User ID=maci;Password=&quot;1939459989 Fe57a&quot;;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="select NAZWA from GATUNEK where ID &gt; 1"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px; height: 24px">Internet:</td>
                    <td style="height: 24px">
                        <asp:TextBox ID="tbInternet" runat="server" TextMode="Number" min="0" step="1" Width="50px">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">LAN:</td>
                    <td>
                        <asp:TextBox ID="tbLAN" runat="server" TextMode="Number" min="0" step="1" Width="50px">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">SplitScreen:</td>
                    <td>
                        <asp:TextBox ID="tbSplit" runat="server" TextMode="Number" min="0" step="1" Width="50px">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">Opis:</td>
                    <td>
                        <asp:TextBox ID="tbOpis" runat="server" Height="240px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">Obrazek: </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 120px">
                        <asp:Button ID="btDodaj" runat="server" OnClick="Button1_Click" Text="Dodaj" Width="100%" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>

       
            <asp:Panel ID="Panel3" runat="server">
                <h1>Usuwanie gry</h1>
                <table class="nav-justified">
                    <tr>
                        <td>Nazwa</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btUsun" runat="server" OnClick="btUsun_Click" Text="Usuń grę" />
                        </td>
                        <td>&nbsp;</td>
                        <td class="text-right">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Usuń na stałe" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

       
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="24pt"></asp:Label>
        <br />
        <br />
    <br />
</asp:Content>
