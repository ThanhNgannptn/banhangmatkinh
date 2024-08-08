<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="WebMatKinh.QuenMatKhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            margin-left: 460px;
        }
        .auto-style30 {
            font-size: large;
        }
        .auto-style32 {
            height: 183px;
            width: 445px;
        }
        .auto-style33 {
            font-size: medium;
            height: 32px;
        }
        .auto-style34 {
            margin-left: 460px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style34" Font-Names="Verdana" Font-Size="10pt" Height="80px" Width="477px" OnSendingMail="PasswordRecovery1_SendingMail">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        <UserNameTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" class="auto-style32">
                            <tr>
                                <td align="center" class="auto-style30" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;">Quên Mật Khẩu</td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style33" colspan="2">Nhập tên đăng nhập để lấy lại mật khẩu</td>
                            </tr>
                            <tr>
                                <td align="right"><strong>
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="auto-style31">Tên đăng nhập:</asp:Label>
                                    </strong></td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" CssClass="auto-style31"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Font-Bold="True" Font-Size="Large" ForeColor="#284775" Height="41px" Text="Lấy lại mật khẩu" ValidationGroup="PasswordRecovery1" Width="193px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </UserNameTemplate>
    </asp:PasswordRecovery>
    <br />
</asp:Content>
