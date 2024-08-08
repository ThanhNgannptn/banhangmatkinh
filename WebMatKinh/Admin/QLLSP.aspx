<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLLSP.aspx.cs" Inherits="WebMatKinh.QLLSP" %>

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
        }
        
        .auto-style1 {
            background-color: #00CCFF;
        }
        .auto-style4 {
            margin-left: 250px;
        }

        .auto-style5 {
            text-align: center;
            margin-top: 0px;
        }
        #Menu1 a.static {
    color: Black;
    text-decoration: none;
    margin-right: 10px;
}
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            font-size: xx-large;
            color: #FF5050;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31">
                        &nbsp;</td>
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
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" DeleteCommand="DELETE FROM loaisp WHERE (maloaisp = @maloaisp)" SelectCommand="SELECT * FROM [loaisp]" UpdateCommand="UPDATE loaisp SET tenloaisp = @tenloaisp WHERE (maloaisp = @maloaisp)">
                <DeleteParameters>
                    <asp:Parameter Name="maloaisp" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tenloaisp" />
                    <asp:Parameter Name="maloaisp" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="auto-style6">
                <br />
                <span class="auto-style7"><strong>Quản Lý Loại Sản Phẩm</strong></span></div>
        </div>
        <br />
            <div class="auto-style5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="maloaisp" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="242px" Width="936px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Thao Tác">
                    <EditItemTemplate>
                        <asp:ImageButton ID="ImageButton7" runat="server" CommandName="Update" Height="46px" ImageUrl="~/Images/icons8-ok-64.png" Width="44px" />
                        <asp:ImageButton ID="ImageButton8" runat="server" CommandName="Cancel" Height="43px" ImageUrl="~/Images/icons8-cancel-60.png" Width="40px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton5" runat="server" CommandName="Edit" Height="55px" ImageUrl="~/Images/icons8-edit-64.png" Width="47px" />
                        <asp:ImageButton ID="ImageButton9" runat="server" CommandName="Delete" Height="48px" ImageUrl="~/Images/icons8-delete-64.png" OnClientClick="return window.confirm('Bạn chắc chắn xóa?');" Width="48px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="maloaisp" HeaderText="Mã Loại SP" ReadOnly="True" SortExpression="maloaisp" />
                <asp:BoundField DataField="tenloaisp" HeaderText="Tên Loại SP" SortExpression="tenloaisp" />
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
