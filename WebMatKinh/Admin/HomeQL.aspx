<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeQL.aspx.cs" Inherits="WebMatKinh.HomeQL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            background-color: #00CCFF;
            width: 1448px;
            height: 79px;
        }
        .auto-style2 {
            width: 1378px;
        }
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

        .hinhgiohang {
    position: absolute;
    z-index: 1;
    top: 35px;
    right: 10px;
}

        .auto-style5 {
            text-align: center;
        }
                #Menu1 a.static {
    color: Black;
    text-decoration: none;
    margin-right: 10px;
}
        .auto-style8 {
            width: 1364px;
        }
        .auto-style9 {
            width: 1225px;
            height: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style9">
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
                                <asp:MenuItem Text="Trang Chủ" Value="Trang Chủ" NavigateUrl="~/Admin/HomeQL.aspx" ImageUrl="~/Images/icons8-home-48.png"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Sản Phẩm" Value="Quản Lý Sản Phẩm" NavigateUrl="~/Admin/QLSP.aspx" ImageUrl="~/Images/icons8-product-48.png">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Thêm Sản Phẩm" Value="Thêm Sản Phẩm" NavigateUrl="~/Admin/ThemSanPham.aspx" ImageUrl="~/Images/icons8-add-64.png"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Loại SP" Value="Quản Lý Loại SP" NavigateUrl="~/Admin/QLLSP.aspx" ImageUrl="~/Images/icons8-product-48.png"></asp:MenuItem>
                                <asp:MenuItem Text="Thêm Loại SP" Value="Thêm Loại SP" NavigateUrl="~/Admin/ThemLSP.aspx" ImageUrl="~/Images/icons8-add-64.png"></asp:MenuItem>
                                <asp:MenuItem Text="Đăng Xuất" Value="Đăng Xuất" NavigateUrl="~/index.aspx" ImageUrl="~/Images/icons8-log-out-64.png"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#CCFFFF" ForeColor="Black" />
                            <StaticMenuItemStyle ForeColor="Black" />
                            <StaticMenuStyle BackColor="#00CCFF" />
                            <StaticSelectedStyle ForeColor="Black" />
                            <StaticItemTemplate>
                                <%# Eval("Text") %>
                            </StaticItemTemplate>
                        </asp:Menu>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                </table>
        </div>
        <asp:SqlDataSource ID="srcsp" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" SelectCommand="SELECT * FROM [sanpham]"></asp:SqlDataSource>
        <div class="auto-style5">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="masp" DataSourceID="srcsp" ForeColor="#333333" GridLines="None" Height="285px" Width="1450px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="masp" HeaderText="Mã SP" ReadOnly="True" SortExpression="masp" />
                <asp:BoundField DataField="maloaisp" HeaderText="Mã Loại SP" SortExpression="maloaisp" />
                <asp:BoundField DataField="tensp" HeaderText="Tên SP" SortExpression="tensp" />
                <asp:BoundField DataField="nsx" HeaderText="NSX" SortExpression="nsx" />
                <asp:BoundField DataField="dvt" HeaderText="DVT" SortExpression="dvt" />
                <asp:BoundField DataField="dgban" HeaderText="Giá Bán" SortExpression="dgban" />
                <asp:BoundField DataField="dgnhap" HeaderText="Giá Nhập" SortExpression="dgnhap" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="127px" ImageUrl='<%# Eval("hinh") %>' Width="162px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="hinh" HeaderText="Hình " SortExpression="hinh" />
            </Columns>
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
    </form>
</body>
</html>
