<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Sitesi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            width: 324px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style3"><strong>ONAYSIZ TARİF&nbsp; LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tarifad") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                           <a href="TarifOnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/proposal.png" Width="30px" /></a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button3" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click1" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button4" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style3"><strong>ONAYLANMIŞ&nbsp; TARİF&nbsp; LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tarifad") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                           <a href="TarifOnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/proposal.png" Width="30px" /></a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
    </asp:Panel>
</asp:Content>
