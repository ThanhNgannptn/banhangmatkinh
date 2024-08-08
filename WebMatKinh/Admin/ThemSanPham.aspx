<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="WebMatKinh.ThemSanPham" %>

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

        .auto-style5 {
        text-align: center;
        color: #FF5050;
        font-size: xx-large;
    }
        .auto-style6 {
            font-size: large;
            background-color: #00FFFF;
        }
        .auto-style7 {
            font-size: large;
            width: 199px;
        }
        .auto-style9 {
            background-color: #00FFFF;
        }
        .auto-style10 {
            width: 39%;
            height: 380px;
            margin-left: 467px;
            background-color: #99CCFF;
        }

        .auto-style1 {
            background-color: #00CCFF;
        }
        .auto-style2 {
            width: 1674px;
            height: 86px;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 387px;
            height: 86px;
        }
        .auto-style20 {
            color: #000000;
            font-size: large;
            background-color: #99CCFF;
        }
                #Menu1 a.static {
    color: Black;
    text-decoration: none;
    margin-right: 10px;
}
        .auto-style21 {
            font-size: large;
            width: 199px;
            height: 38px;
        }
        .auto-style22 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="auto-style8" ForeColor="Black" style="font-size: large; background-color: #00CCFF">
                            <DynamicHoverStyle BackColor="#66CCFF" />
                            <DynamicMenuItemStyle BackColor="#99CCFF" />
                            <DynamicMenuStyle BackColor="#99CCFF" />
                            <DynamicSelectedStyle BackColor="#66CCFF" />
                            <Items>
                                <asp:MenuItem Text="Trang Chủ" Value="Trang Chủ" NavigateUrl="~/Admin/HomeQL.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Sản Phẩm" Value="Quản Lý Sản Phẩm" NavigateUrl="~/Admin/QLSP.aspx">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Thêm Sản Phẩm" Value="Thêm Sản Phẩm" NavigateUrl="~/Admin/ThemSanPham.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Loại SP" Value="Quản Lý Loại SP" NavigateUrl="~/Admin/QLLSP.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Thêm Loại SP" Value="Thêm Loại SP" NavigateUrl="~/Admin/ThemLSP.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Đăng Xuất" Value="Đăng Xuất" NavigateUrl="~/index.aspx"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#CCFFFF" ForeColor="Black" />
                            <StaticMenuItemStyle ForeColor="Black" />
                            <StaticMenuStyle BackColor="#00CCFF" />
                            <StaticSelectedStyle ForeColor="Black" />
                            <StaticItemTemplate>
                                <%# Eval("Text") %>
                            </StaticItemTemplate>
                        </asp:Menu>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    </td>
                    <td class="auto-style3">
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
        <p class="auto-style5">
    <strong>Thêm Sản Phẩm</strong></p>
<p>
    <asp:SqlDataSource ID="srcdvt" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" SelectCommand="SELECT distinct dvt FROM SanPham "></asp:SqlDataSource>
    <asp:SqlDataSource ID="srcloaisp" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" SelectCommand="SELECT maloaisp, tenloaisp FROM loaisp ORDER BY tenloaisp"></asp:SqlDataSource>
</p>
    <table style="margin-bottom: 0px;" class="auto-style10">
        <tr>
            <td class="auto-style7"><strong>Mã Sản Phẩm:</strong></td>
            <td>
                <asp:TextBox ID="txtMaSP" runat="server" Height="27px" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tên Sản Phẩm:</strong></td>
            <td>
                <asp:TextBox ID="txtTenSP" runat="server" Height="23px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Loại Sản Phẩm:</strong></td>
            <td class="auto-style22">
                <asp:DropDownList ID="drpLoai" runat="server" DataSourceID="srcloaisp" DataTextField="tenloaisp" DataValueField="maloaisp" Height="23px" Width="218px">
                </asp:DropDownList>
            &nbsp; <em>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="False" Font-Underline="True" ForeColor="Black" PostBackUrl="~/ThemLSP.aspx" BorderStyle="None" CssClass="auto-style20" Font-Size="Large" Height="25px" Width="103px">   Loại Khác</asp:LinkButton>
                </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Ngày Sản Xuất:</strong></td>
            <td>
                <asp:TextBox ID="txtnsx" runat="server" TextMode="Date" Height="22px" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Đơn Vị Tính:</strong></td>
            <td>
                <asp:DropDownList ID="drpDVT" runat="server" DataSourceID="srcdvt" DataTextField="dvt" DataValueField="dvt" Height="23px" Width="218px">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Đơn Giá Bán:</strong></td>
            <td>
                <asp:TextBox ID="txtDgban" runat="server" Height="23px" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Đơn Giá Nhập:</strong></td>
            <td>
                <asp:TextBox ID="txtDgnhap" runat="server" Height="27px" Width="208px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Hình Sản Phẩm:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="36px" Width="282px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm Sản Phẩm" BorderColor="Black" CssClass="auto-style6" Font-Bold="True" Font-Size="Large" Height="36px" Width="218px" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnhuy" runat="server" OnClick="btnhuy_Click" Text="Hủy Bỏ" BorderColor="Black" CssClass="auto-style9" Font-Bold="True" Font-Size="Large" Height="39px" Width="116px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblstatus" runat="server" CssClass="auto-style11" style="color: #FF5050"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
