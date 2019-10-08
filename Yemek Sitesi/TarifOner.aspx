<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Sitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        margin-left: 55px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Tarif Ad :</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifad" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Malzemeler</strong></td>
        <td>
            <asp:TextBox ID="TxtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Yapılışı :</strong></td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Resim :</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Tarif Öneren:</strong></td>
        <td>
            <asp:TextBox ID="TxtOneren" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail Adresi :</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnTarifOner" runat="server" BorderColor="Blue" CssClass="auto-style6" Font-Bold="True" Font-Italic="True" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
            <br />
            <br />
        </td>
    </tr>
</table>
&nbsp;&nbsp;&nbsp; 
</asp:Content>
