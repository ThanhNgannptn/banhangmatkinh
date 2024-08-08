<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLSP.aspx.cs" Inherits="WebMatKinh.QLSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 1271px;
        }
        .auto-style3 {
            width: 508px;
            height: 80px;
        }
        .auto-style1 {
            background-color: #00CCFF;
        }
        .auto-style5 {
        background-color: #FFFFFF;
        font-size: xx-large;
        color: #FF5050;
        text-align: center;
    }
                #Menu1 a.static {
    color: Black;
    text-decoration: none;
    margin-right: 10px;
}
        .auto-style7 {
            width: 1271px;
            height: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="auto-style8" ForeColor="Black" style="font-size: large; background-color: #00CCFF">
                            <DynamicHoverStyle BackColor="#66CCFF" />
                            <DynamicMenuItemStyle BackColor="#99CCFF" />
                            <DynamicMenuStyle BackColor="#99CCFF" />
                            <DynamicSelectedStyle BackColor="#66CCFF" />
                            <Items>
                                <asp:MenuItem Text="Trang Chủ" Value="Trang Chủ" NavigateUrl="~/Admin/HomeQL.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Sản Phẩm" NavigateUrl="~/Admin/QLSP.aspx">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Thêm Sản Phẩm" NavigateUrl="~/Admin/ThemSanPham.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Quản Lý Loại SP" NavigateUrl="~/Admin/QLLSP.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Thêm Loại SP" NavigateUrl="~/Admin/ThemLSP.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Đăng Xuất" NavigateUrl="~/index.aspx"></asp:MenuItem>
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
    <strong>Quản Lý Sản Phẩm </strong>
</p>
<strong>
<br class="auto-style2" />
</strong><span class="auto-style2">Loại Sản Phẩm: </span>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="srcloaisp" DataTextField="tenloaisp" DataValueField="maloaisp" Font-Size="Large">
</asp:DropDownList>
<br />
<asp:SqlDataSource ID="srcloaisp" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" SelectCommand="SELECT * FROM LoaiSP"></asp:SqlDataSource>
<asp:SqlDataSource ID="srcsp" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" DeleteCommand="DELETE FROM SanPham WHERE MaSP = @MaSP" SelectCommand="SELECT masp, maloaisp, tensp, nsx, dvt, dgban, dgnhap, hinh FROM sanpham WHERE (maloaisp = @maloaisp)" UpdateCommand="UPDATE sanpham SET tensp = @TenSP, dvt = @dvt, dgban = @dgban, nsx = @nsx, dgnhap = @dgnhap, maloaisp = @maloaisp, hinh = @hinh WHERE (masp = @MaSP)">
    <DeleteParameters>
        <asp:Parameter Name="MaSP" />
    </DeleteParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="maloaisp" PropertyName="SelectedValue" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenSP" />
        <asp:Parameter Name="dvt" />
        <asp:Parameter Name="dgban" />
        <asp:Parameter Name="nsx" />
        <asp:Parameter Name="dgnhap" />
        <asp:Parameter Name="maloaisp" />
        <asp:Parameter Name="hinh" />
        <asp:Parameter Name="MaSP" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="masp" DataSourceID="srcsp" Height="379px" PageSize="6" Width="1320px" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField HeaderText="Thao tác">
            <EditItemTemplate>
                <asp:ImageButton ID="ImageButton9" runat="server" CommandName="Update" Height="43px" ImageUrl="~/Images/icons8-ok-64.png" Width="37px" />
                <asp:ImageButton ID="ImageButton10" runat="server" CommandName="Cancel" Height="41px" ImageUrl="~/Images/icons8-cancel-60.png" Width="43px" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton7" runat="server" CommandName="Edit" Height="52px" ImageUrl="~/Images/icons8-edit-64.png" Width="47px" />
                <asp:ImageButton ID="ImageButton8" runat="server" CommandName="Delete" Height="52px" ImageUrl="~/Images/icons8-delete-64.png" OnClientClick="return window.confirm('Bạn chắc chắn xóa?');" Width="50px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="masp" HeaderText="Mã SP" ReadOnly="True" SortExpression="masp" />
        <asp:BoundField DataField="maloaisp" HeaderText="Mã Loại SP" SortExpression="maloaisp" />
        <asp:BoundField DataField="tensp" HeaderText="Tên SP" SortExpression="tensp" />
        <asp:BoundField DataField="nsx" HeaderText="NSX" SortExpression="nsx" />
        <asp:BoundField DataField="dvt" HeaderText="Đơn vị tính" SortExpression="dvt" />
        <asp:BoundField DataField="dgban" HeaderText="Đơn giá bán" SortExpression="dgban" />
        <asp:BoundField DataField="dgnhap" HeaderText="Đơn giá nhập" SortExpression="dgnhap" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" Height="60px" ImageUrl='<%# Eval("hinh") %>' Width="80px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="hinh" HeaderText="Hình Ảnh" SortExpression="hinh" />
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
    </form>
</body>
</html>
