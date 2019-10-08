<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Sitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
            font-size: small;
        }
        .auto-style9 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style10 {
            background-color: #FF9999;
        }
        .auto-style11 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
&nbsp;<br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                    </td>
                </tr>
                </strong>
                <tr>
                    <td class="auto-style7" style="border-bottom-style: inset; border-bottom-width: thin"><em><strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <div class="auto-style10">Yorum Yapma Paneli</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style6">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Ad Soyad :</td>
                    <strong>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    </strong>
                </tr>
                <tr>
                    <td class="auto-style11">Mail :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Yorumunuz :</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" Width="250px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" Text="Yorum Yap" Width="250px" OnClick="Button1_Click" />
                        </strong></td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>
