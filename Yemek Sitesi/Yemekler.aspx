<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Sitesi.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #CCCCCC;
        }
    .auto-style6 {
        width: 255px;
        margin-left: 40px;
    }
    .auto-style7 {
        text-align: right;
    }
    .auto-style8 {
        text-align: right;
        margin-left: 40px;
    }
        .auto-style9 {
            width: 36px;
        }
        .auto-style10 {
            width: 38px;
        }
        .auto-style11 {
            font-weight: bold;
            background-color: #6699FF;
        }
        .auto-style12 {
            height: 19px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            height: 28px;
        }
        .auto-style15 {
            text-align: center;
            height: 28px;
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
                <td>YEMEK&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                           <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                           <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <br />
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button3" runat="server" Text="+" Height="30px" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Ad :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Malzemeler :</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarif :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="BtnYemEKle" runat="server" CssClass="auto-style11" OnClick="BtnKatEKle_Click" Text="EKLE" Width="100px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
