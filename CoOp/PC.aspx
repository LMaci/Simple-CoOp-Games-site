<%@ Page Title="Strona główna" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PC.aspx.cs" Inherits="CoOp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">


        .auto-style10 {
            height: 24px;
        }
        .auto-style15 {
            height: 22px;
        }
        .auto-style17 {
            width: 218px;
        }
        .auto-style19 {
            height: 22px;
            width: 92px;
            text-align: left;
        }
        .auto-style20 {
            height: 24px;
            text-align: left;
        }
    </style>
    <div class="row">
        <div class="col-md-3">
            <asp:Panel ID="Panel3" runat="server" Width ="100%" Font-Size="12pt">
                <h1>FILTR</h1>
                <hr />
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="auto-style20">&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text="Tryb"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label5" runat="server" Text="Liczba graczy"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                        <asp:ListItem Selected="True" Value="Nieistotne">Nieistotne</asp:ListItem>
                                        <asp:ListItem>Internet</asp:ListItem>
                                        <asp:ListItem>LAN</asp:ListItem>
                                        <asp:ListItem Value="Split">SplitScreen</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem Selected="True" Value="1">Nieistotne</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem Value="5">&gt;4</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <hr />
                <asp:Button ID="Button2" runat="server" Font-Size="12pt" Text="Szukaj!" Width="100%" OnClick="Button2_Click" />
                <br />
                <br />
            </asp:Panel>
        </div>
        <div class="col-md-9">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            
                    <asp:Panel ID="Panel1" runat="server">
                        <h1>Lista gier - PC</h1>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="12pt" PageSize="15" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderStyle-CssClass="hiddencol" HeaderText="ID" InsertVisible="False" ItemStyle-CssClass="hiddencol" ReadOnly="True" SortExpression="ID" >
                                <HeaderStyle CssClass="hiddencol" />
                                <ItemStyle CssClass="hiddencol" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tytul" HeaderText="Tytul" SortExpression="Tytul" />
                                <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server">
                            <br />
                            <asp:Label ID="lGame" runat="server" Font-Bold="False" Font-Size="24pt" Font-Strikeout="False" Text="Label"></asp:Label>
                            <br />
                            <table class="nav-justified">
                                <tr>
                                    <td class="auto-style17" rowspan="5">
                                        <asp:Image ID="Image1" runat="server" Height="208px" Width="208px" />
                                    </td>
                                    <td class="auto-style19">Platforma: </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="lPlatforma" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Gatunek: </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="lGatunek" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Online:&nbsp;&nbsp;</td>
                                    <td class="auto-style15">
                                        <asp:Label ID="lOnline" runat="server" Text="Label"></asp:Label>
                                        &nbsp;<asp:Label ID="lOnlineLiczba" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">LAN:&nbsp;&nbsp;</td>
                                    <td class="auto-style15">
                                        <asp:Label ID="lLan" runat="server" Text="Label"></asp:Label>
                                        &nbsp;<asp:Label ID="lLanLiczba" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Split-screen: </td>
                                    <td class="auto-style15">
                                        <asp:Label ID="lSplit" runat="server" Text="Label"></asp:Label>
                                        &nbsp;<asp:Label ID="lSplitLiczba" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <asp:Label ID="lOpis" runat="server" Font-Size="16pt" Text="Opis"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Powrót do listy gier" />
                    </asp:Panel>
                    </ContentTemplate>
            </asp:UpdatePanel>                
            <p>
                &nbsp;</p>
        </div>
        <div>
            &nbsp;</div>
    </div>

</asp:Content>
