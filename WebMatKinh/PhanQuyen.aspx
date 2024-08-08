<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="PhanQuyen.aspx.cs" Inherits="WebMatKinh.PhanQuyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            height: 79px;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            text-align: center;
            color: #FF5050;
            font-size: xx-large;
            background-color: #FFFFCC;
        height: 80px;
    }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 33%;
            height: 158px;
        }
        .auto-style14 {
            font-size: x-large;
            font-weight: bold;
            background-color: #00FFFF;
        }
        .auto-style15 {
        background-color: #FFFFCC;
        width: 270px;
    }
        .auto-style16 {
            width: 214px;
            font-size: large;
            text-align: right;
            background-color: #FFFFCC;
        }
        .auto-style17 {
            font-size: medium;
        }
        .auto-style18 {
            font-size: large;
        }
    .auto-style36 {
        width: 538px;
        height: 23px;
        font-size: large;
        color: #FFFFFF;
        background-color: #FFFFDF;
    }
    .auto-style37 {
        width: 1287px;
        font-size: large;
        text-align: left;
        color: #000000;
        background-color: #FFFFCC;
    }
    .auto-style38 {
        width: 1287px;
        font-size: large;
        text-align: left;
        color: #000000;
        height: 74px;
        background-color: #FFFFCC;
    }
    .auto-style39 {
        background-color: #FFFFCC;
        width: 270px;
        height: 74px;
    }
    .auto-style40 {
        font-size: large;
        width: 682px;
        height: 25px;
        background-color: #E5E5E5;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin-left: 438px;" align="center" class="auto-style36" border="0">
    <tr>
        <td colspan="2" class="auto-style6"><strong>Đăng Nhập </strong> </td>
    </tr>
    <tr>
        <td class="auto-style37"><strong>Tên Đăng Nhập:</strong></td>
        <td class="auto-style15">
            <asp:TextBox ID="txtdn" runat="server" CssClass="auto-style40" Height="39px" Width="294px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdn" ErrorMessage="RequiredFieldValidator" ForeColor="#FF5050">(Nhập tên đăng nhập)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style38"><strong>Mật Khẩu:</strong></td>
        <td class="auto-style39">
            <asp:TextBox ID="txtmk" runat="server" TextMode="Password" CssClass="auto-style40" Height="38px" Width="295px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmk" ErrorMessage="RequiredFieldValidator" ForeColor="#FF5050">(Nhập mật khẩu)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style5">
            <asp:Label ID="Label1" runat="server" style="color: #FF5050" CssClass="auto-style18"></asp:Label>
            <strong>
            <br />
            <asp:Button ID="btndn" runat="server" OnClick="btndn_Click" Text="Đăng nhập" BorderColor="Black" CssClass="auto-style14" />
            <br />
            </strong>
        </td>
    </tr>
</table>
</asp:Content>
