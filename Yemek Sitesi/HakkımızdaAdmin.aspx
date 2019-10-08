<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="Yemek_Sitesi.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="+" Height="30px"  Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Text="Güncelle" Width="250px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
