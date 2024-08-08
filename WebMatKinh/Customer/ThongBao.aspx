<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ThongBao.aspx.cs" Inherits="WebMatKinh.ThongBao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            text-align: center;
        }
        .auto-style6 {
            font-size: xx-large;
            color: #FF5050;
        }
        .auto-style8 {
            color: #FF0066;
        }
        .auto-style5 {
            width: 51%;
            height: 234px;
            margin-left: 371px;
        }
        .auto-style9 {
            color: #FF5050;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style7">
    <span class="auto-style6"><strong>Đặt Hàng Thành Công!</strong></span><br class="auto-style9" />
</div>
<table class="auto-style5">
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblThongBao" runat="server" CssClass="auto-style9" ForeColor="Black"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
