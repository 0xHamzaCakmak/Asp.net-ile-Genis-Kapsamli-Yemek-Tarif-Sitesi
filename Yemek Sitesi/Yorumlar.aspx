<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Sitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            background-color: #CCCCCC;
        }
        .auto-style9 {
            width: 36px;
        }
        .auto-style10 {
            width: 38px;
        }
        .auto-style6 {
        width: 255px;
        margin-left: 40px;
    }
    .auto-style8 {
        text-align: right;
        margin-left: 40px;
    }
        .auto-style7 {
        text-align: right;
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
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>ONAYLANAN YORUM&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                           <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style7">
                           <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button3" runat="server" Text="+" Height="30px"  Width="30px" OnClick="Button3_Click1" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>ONAYSIZ YORUM&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                           <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style7">
                           <a href="YorumDetay.aspx?yorumid=<%#Eval("yorumid") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <br />
    </asp:Content>
