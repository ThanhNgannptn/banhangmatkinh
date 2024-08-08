<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ChonSP.aspx.cs" Inherits="WebMatKinh.ChonSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 60%;
            height: 263px;
            margin-bottom: 0px;
            margin-left: 339px;
        }
        .auto-style8 {
        text-align: center;
        font-size: xx-large;
    }
    .auto-style9 {
        text-align: center;
        font-size: xx-large;
        color: #FF5050;
    }
        .auto-style10 {
            width: 584px;
            text-align: justify;
            height: 57px;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            width: 55px;
        }
        .auto-style28 {
        font-size: large;
    }
    .auto-style33 {
        font-size: large;
        text-align: left;
        margin-left: 0px;
    }
    .auto-style36 {
        width: 2891px;
        text-align: left;
    }
    .auto-style37 {
        width: 543px;
        height: 29px;
        text-align: left;
        font-size: x-large;
    }
    .auto-style39 {
        color: #000000;
    }
    .auto-style40 {
        margin-left: 46px;
    }
    .auto-style41 {
        width: 2891px;
    }
        .auto-style42 {
            width: 2891px;
            height: 78px;
        }
        .auto-style43 {
            font-size: large;
            width: 543px;
            height: 23px;
            text-align: left;
            color: #000000;
        }
        .auto-style44 {
            color: #FF5050;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thông Tin Sản Phẩm</strong></p>
<p>
    <table class="auto-style5">
        <tr>
            <td class="auto-style36">
                <asp:Label ID="lbltensp" runat="server" Font-Bold="True" ForeColor="Black" style="font-size: xx-large"></asp:Label>
                <br />
            </td>
            <td rowspan="4" class="auto-style16">
                <asp:Image ID="imghinh" runat="server" Height="220px" Width="249px" CssClass="auto-style40" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmasp" runat="server" Font-Underline="True" CssClass="auto-style39"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style41">
                &nbsp;<asp:Label ID="lbldongia" runat="server" Font-Bold="True" ForeColor="Black" style="font-size: x-large"></asp:Label>
            &nbsp;<span class="auto-style11">vnđ</span></td>
        </tr>
        <tr>
            <td class="auto-style42"><span class="auto-style37"><strong><span class="auto-style39">Số lượng:
                </span>
                <asp:TextBox ID="txtsl" runat="server"></asp:TextBox>
                </strong></span><span class="auto-style43">&nbsp;&nbsp;</span><span class="auto-style12"><asp:Label ID="lbldonvi" runat="server" CssClass="auto-style39"></asp:Label>
                </span><span class="auto-style43">&nbsp;</span><br class="auto-style39" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsl" CssClass="auto-style44" ErrorMessage="RequiredFieldValidator">(Nhập số lượng để đặt hàng)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style41">
                <asp:Button ID="btninsert" runat="server" OnClick="btninsert_Click" Text="Thêm Vào Giỏ Hàng" BackColor="Aqua" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="34px" style="text-align: center" Width="211px" />
                &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
</p>
</asp:Content>
