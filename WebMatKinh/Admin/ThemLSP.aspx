<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemLSP.aspx.cs" Inherits="WebMatKinh.ThemLSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        #giohang

{
    float: right;
    margin-top: 40px;
    padding-right: 100px;
    height: 1px;
    width: 1px;
    margin-bottom: 0px;
    background-color: #00CCFF;
}

        .auto-style7 {
            font-size: x-large;
            background-color: #00FFFF;
        }
                #Menu1 a.static {
    color: Black;
    text-decoration: none;
    margin-right: 10px;
}
        .auto-style8 {
            background-color: #00B0F2;
        }
        .auto-style9 {
            color: #FF5050;
            font-size: x-large;
            text-align: center;
        }
        .auto-style10 {
            width: 972px;
            height: 149px;
        }
        .auto-style11 {
            width: 972px;
            height: 149px;
            margin-left: 261px;
        }
        .auto-style12 {
            width: 605px;
            height: 263px;
            margin-left: 454px;
            background-color: #99CCFF;
        }
        .auto-style13 {
            height: 121px;
        }
        .auto-style15 {
            height: 64px;
        }
        .auto-style16 {
            height: 66px;
        }
        .auto-style17 {
            height: 41px;
            width: 447px;
        }
        .auto-style18 {
            width: 1541px;
            height: 81px;
            background-color: #00B0F2;
        }
        .auto-style19 {
            height: 64px;
            width: 184px;
        }
        .auto-style20 {
            height: 66px;
            width: 184px;
        }
        .auto-style21 {
            height: 41px;
            width: 1263px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style18">
                <tr>
                    <td class="auto-style21">
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="auto-style8" ForeColor="Black" style="font-size: large; ">
                            <DynamicHoverStyle BackColor="#00B0F2" />
                            <DynamicMenuItemStyle BackColor="#00B0F2" />
                            <DynamicMenuStyle BackColor="#00B0F2" />
                            <DynamicSelectedStyle BackColor="#00B0F2" />
                            <Items>
                                <asp:MenuItem Text="Trang Chủ" Value="Trang Chủ" NavigateUrl="~/Admin/HomeQL.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Sản Phẩm" Value="Quản Lý Sản Phẩm" NavigateUrl="~/Admin/QLSP.aspx">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Thêm Sản Phẩm" Value="Thêm Sản Phẩm" NavigateUrl="~/Admin/ThemSanPham.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Loại SP" Value="Quản Lý Loại SP" NavigateUrl="~/Admin/QLLSP.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Thêm Loại SP" Value="Thêm Loại SP" NavigateUrl="~/Admin/ThemLSP.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Đăng Xuất" Value="Đăng Xuất" NavigateUrl="~/index.aspx"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#00B0F2" ForeColor="Black" />
                            <StaticMenuItemStyle ForeColor="Black" BackColor="#00B0F2" />
                            <StaticMenuStyle BackColor="#00B0F2" />
                            <StaticSelectedStyle ForeColor="Black" BackColor="#00B0F2" />
                            <StaticItemTemplate>
                                <%# Eval("Text") %>
                            </StaticItemTemplate>
                        </asp:Menu>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    </td>
                    <td class="auto-style17">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div>
                            <div>
                                <div>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style28" Height="28px" Width="211px"></asp:TextBox>
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="22px" ImageUrl="~/Images/loupe.png" Width="27px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="23px" ImageUrl="~/Images/user.png" Width="30px" PostBackUrl="~/DangNhap.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                            </div>
                        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                </table>
        </div>
        <p class="auto-style9">
            <strong>Thêm Loại Sản Phẩm</strong></p>
    <table style="margin-bottom: 0px;" class="auto-style12">
        <tr>
            <td class="auto-style19"><strong>Mã Loại Sản Phẩm:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="txtMaloaiSP" runat="server" CssClass="auto-style10" Height="34px" Width="285px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMaloaiSP" ForeColor="#FF5050">(Nhập mã loại sp)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Tên Loại Sản Phẩm:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="txtTenloaiSP" runat="server" CssClass="auto-style10" Height="33px" Width="285px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTenloaiSP" ForeColor="#FF5050">(Nhập tên loại sp)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm Loại SP" BorderColor="Black" CssClass="auto-style7" Font-Bold="True" Font-Size="Large" Height="37px" Width="168px" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnhuy" runat="server" OnClick="btnhuy_Click" Text="Hủy Bỏ" BackColor="#66FFFF" BorderColor="Black" CssClass="auto-style8" Font-Bold="True" Font-Size="Large" Height="38px" Width="100px" />
                <br />
                <asp:Label ID="lblstatus" runat="server" CssClass="auto-style11" style="color: #FF5050"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
