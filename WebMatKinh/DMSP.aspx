<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DMSP.aspx.cs" Inherits="WebMatKinh.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style29 {
            width: 21%;
            height: 61px;
            margin-left: 1081px;
        }
        .auto-style30 {
            width: 57px;
        }
        .auto-style31 {
            width: 120px;
        }
        .auto-style32 {
            font-size: large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="srcsp" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" SelectCommand="SELECT masp, tensp, dgban, hinh FROM sanpham ORDER BY tensp"></asp:SqlDataSource>
        <table class="auto-style29">
            <tr>
                <td class="auto-style30">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="49px" ImageUrl="~/Images/icons8-filter-64.png" OnClick="ImageButton5_Click" Width="64px" />
                </td>
                <td class="auto-style31">
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" CssClass="auto-style32" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Tăng Dần" ValidationGroup="filter" />
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" CssClass="auto-style32" OnCheckedChanged="CheckBox2_CheckedChanged" Text="Giảm Dần" ValidationGroup="filter" />
                </td>
            </tr>
        </table>
        <asp:DataList ID="lsttimkiem" runat="server" DataKeyField="masp" DataSourceID="srcsp" Height="573px" RepeatColumns="4" Width="1435px">
            <ItemTemplate>
                <div class="auto-style5">
                      
                    <asp:Image ID="Image3" runat="server" Height="188px" ImageUrl='<%# Eval("hinh") %>' Width="192px" />
                  
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text='<%# Eval("tenSP") %>'></asp:HyperLink>
                    <br />
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Font-Size="Large" ForeColor="#666666" Text='<%# Eval("dgban" ,"{0:0,000 vnđ}") %>' />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="#B4B469" NavigateUrl='<%# "ChonSP.aspx?MaSP=" + Eval("MaSP") %>'>Xem chi tiết</asp:HyperLink>
                    <br />
                    <br />
                </div>
            </ItemTemplate>
    </asp:DataList>
</p>
    <p class="auto-style5">
        <asp:DataList ID="lstsp" runat="server" DataKeyField="masp" DataSourceID="srcsp" RepeatColumns="4" Width="1473px" CssClass="auto-style39" Height="431px">
        <ItemTemplate>
            <div class="auto-style5">
                <asp:Image ID="Image3" runat="server" Height="188px" ImageUrl='<%# Eval("hinh") %>' Width="192px" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text='<%# Eval("tenSP") %>'></asp:HyperLink>
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Font-Size="Large" ForeColor="#666666" Text='<%# Eval("dgban" ,"{0:0,000 vnđ}") %>' />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="#B4B469" NavigateUrl='<%# "ChonSP.aspx?MaSP=" + Eval("MaSP") %>'>Xem chi tiết</asp:HyperLink>
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p class="auto-style5">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <div class="auto-style38">
        </div>
    <br />
</p>

</body>

</html>
</asp:Content>
