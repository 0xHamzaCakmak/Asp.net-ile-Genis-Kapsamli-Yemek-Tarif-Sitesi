<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Yemek_Sitesi.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        font-size: x-large;
    }
    .auto-style7 {
        background-color: #FF66FF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td class="auto-style7"><strong>

                  <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td></a>


            </tr>
            <tr>
                <td><strong>Malzemeler&nbsp; :</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi : </strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemektarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi : </strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("yemektarih") %>'></asp:Label>
                    &nbsp;- <strong>&nbsp;Puan : </strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekpuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #808080">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
