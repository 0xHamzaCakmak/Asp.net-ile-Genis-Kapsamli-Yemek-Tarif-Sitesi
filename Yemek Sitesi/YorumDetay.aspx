<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Sitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Ad Soyad :</td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail :</td>
            <td>
                <asp:TextBox ID="Txtmail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik :</td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yemek :</td>
            <td>
                <asp:TextBox ID="Txtyemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Btnonay" runat="server" Text="Onay" Width="256px" OnClick="Btnonay_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
