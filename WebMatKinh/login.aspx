<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebMatKinh.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style31 {
            margin-left: 476px;
        }
        .auto-style32 {
            font-size: large;
        }
        .auto-style33 {
            font-size: medium;
        }
        .auto-style34 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style31" Font-Names="Verdana" Font-Size="10pt" Height="273px" Width="473px">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="height: 273px; width: 473px;">
                            <tr>
                                <td align="center" class="auto-style32" colspan="2" style="color: White; background-color: #6B696B; font-weight: bold;">Đăng Nhập</td>
                            </tr>
                            <tr>
                                <td align="right"><strong>
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="auto-style33">Tên đăng nhập:</asp:Label>
                                    </strong></td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" CssClass="auto-style33" Width="243px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><strong>
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="auto-style33">Mật khẩu:</asp:Label>
                                    </strong></td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" CssClass="auto-style33" TextMode="Password" Width="243px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Ghi nhớ mật khẩu" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style34" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    <br />
                                    <em>
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style33" Font-Underline="True" ForeColor="Black" NavigateUrl="~/QuenMatKhau.aspx">Quên mật khẩu</asp:HyperLink>
                                    </em>&nbsp; <em>
                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style33" Font-Underline="True" ForeColor="Black" NavigateUrl="~/DangKy.aspx">Đăng ký</asp:HyperLink>
                                    </em>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" BackColor="White" CommandName="Login" CssClass="auto-style32" Font-Bold="True" Font-Size="Large" ForeColor="#284775" PostBackUrl="~/Customer/GioHang.aspx" Text="Đăng Nhập" ValidationGroup="Login1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    </asp:Login>
    <br />
    <br />
</asp:Content>
