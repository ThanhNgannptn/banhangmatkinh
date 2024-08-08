<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DonHang.aspx.cs" Inherits="WebMatKinh.DonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: xx-large;
        text-align: center;
        color: #FF5050;
    }
        .auto-style8 {
            height: 45px;
            background-color: #FFFFFF;
        }
        .auto-style16 {
            height: 26px;
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style26 {
            margin-left: 164px;
        }
        .auto-style28 {
            width: 1261px;
            height: 273px;
        }
        .auto-style32 {
            width: 171px;
            color: #000000;
        }
        .auto-style37 {
            font-size: medium;
            background-color: #E5E5E5;
        }
        .auto-style40 {
            color: #000000;
        }
        .auto-style43 {
            background-color: #FFFFFF;
            width: 255px;
            color: #000000;
            height: 39px;
        }
        .auto-style44 {
            background-color: #FFFFFF;
        }
        .auto-style45 {
            font-size: x-large;
        }
    .auto-style47 {
        color: #FF5050;
        float: left;
    }
    .auto-style48 {
        background-color: #FFFFFF;
        width: 255px;
        color: #000000;
        height: 66px;
    }
    .auto-style50 {
        background-color: #FFFFFF;
        width: 255px;
        color: #000000;
        height: 47px;
    }
    .auto-style54 {
        background-color: #FFFFFF;
        width: 255px;
        color: #000000;
        height: 30px;
    }
    .auto-style55 {
        background-color: #FFFFFF;
        width: 255px;
        color: #000000;
        height: 48px;
    }
    .auto-style57 {
        background-color: #FFFFFF;
        width: 255px;
        color: #000000;
        height: 49px;
    }
    .auto-style59 {
        background-color: #FFFFFF;
        width: 255px;
        color: #000000;
        height: 59px;
    }
        .auto-style66 {
            width: 740px;
            height: 483px;
            margin-left: 573px;
            margin-right: 710px;
        }
        .auto-style68 {
            width: 446px;
        }
        .auto-style69 {
            width: 122px;
            height: 49px;
        }
        .auto-style70 {
            width: 122px;
        }
        .auto-style71 {
            width: 122px;
            height: 39px;
        }
        .auto-style73 {
            background-color: #FFFFFF;
            width: 255px;
            color: #000000;
        }
        .auto-style74 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
    <strong>Thông Tin Đơn Hàng</strong><div class="auto-style74">
<asp:GridView ID="grddh" runat="server" Height="101px" Width="1226px" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style26">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
        </div>
        <span class="auto-style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTongTien" runat="server" CssClass="auto-style29"></asp:Label>
        </strong> </span>
    </p>
    <p class="auto-style5">
    <strong>Thông Tin Người Nhận </strong></p>
    <table class="auto-style66">
    <tr>
        <td class="auto-style73"><strong>Họ tên:</strong> </td>
        <td class="auto-style70">
            <asp:TextBox ID="txtHoTen" runat="server" Width="263px" CssClass="auto-style37"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" CssClass="auto-style47" Height="27px" Width="261px">(Nhập Họ Tên)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style59"><strong>Email: </strong> </td>
        <td class="auto-style70">
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="261px" CssClass="auto-style37"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" CssClass="auto-style47" Height="27px" Width="261px">(Nhập Email)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style55"><strong>Điện thoại:</strong></td>
        <td class="auto-style70">
            <asp:TextBox ID="txtDienThoai" runat="server" Width="262px" CssClass="auto-style37"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDienThoai" CssClass="auto-style47" Height="24px" Width="271px">(Nhập SĐT)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style54"><strong>Số nhà:</strong> </td>
        <td class="auto-style70">
            <asp:TextBox ID="txtSoNha" runat="server" Width="262px" CssClass="auto-style37"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSoNha" CssClass="auto-style47" Height="25px" Width="267px">(Nhập Số Nhà)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style50"><strong>Đường: </strong> </td>
        <td class="auto-style70">
            <asp:TextBox ID="txtDuong" runat="server" Width="264px" CssClass="auto-style37" Height="21px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDuong" CssClass="auto-style47" Height="23px" Width="265px">(Nhập Tên Đường)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style48"><strong>Phường/Xã: </strong> </td>
        <td class="auto-style70">
            <asp:TextBox ID="txtPhuong" runat="server" Width="263px" CssClass="auto-style37"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhuong" CssClass="auto-style47" Height="25px" Width="423px">(Nhập Phường/Xã)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style43"><strong>Quận/Huyện:</strong></td>
        <td class="auto-style71">
            <asp:TextBox ID="txtQuan" runat="server" Width="263px" CssClass="auto-style37"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtQuan" CssClass="auto-style47" Height="26px" Width="502px">(Nhập Quận/huyện)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style57"><strong class="auto-style32"><span class="auto-style44">Tỉnh/TP:</span></strong></td>
        <td class="auto-style69">
            <asp:TextBox ID="txtTP" runat="server" Width="262px" CssClass="auto-style37"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" CssClass="auto-style47" Height="27px" Width="261px">(Nhập Tỉnh/TP)</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style68" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnok" runat="server" OnClick="btnok_Click" Text="Thanh Toán" BackColor="Aqua" BorderColor="Black" CssClass="auto-style45" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="55px" Width="200px" />
            <span class="auto-style40">&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Label ID="lblstatus" runat="server" CssClass="auto-style40"></asp:Label>
            <br />
        </td>
    </tr>
</table>
    </asp:Content>
