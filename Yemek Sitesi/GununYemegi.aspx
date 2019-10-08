<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Sitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-decoration: underline;
    }
    .auto-style6 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <ItemStyle BackColor="White" ForeColor="#003399" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>
                        <span class="auto-style5"><strong>Malzemeler </strong></span>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="auto-style5"><strong>Tarif </strong></span>
                        <br />
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image2" runat="server" Height="177px" Width="342px" ImageUrl="~/Resimler/mucver.jpg" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td><span class="auto-style5"><strong><em>Puan<br /></em></strong></span><em>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    </em></td>
                                <td class="auto-style6"><span class="auto-style5"><strong><em>Eklenme Tarihi</em></strong></span> <em>
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </em></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:DataList>
</asp:Content>
