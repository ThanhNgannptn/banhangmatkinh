<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WebMatKinh.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            margin-left: 556px;
            margin-bottom: 0px;
        }
        .auto-style30 {
            color: #FFFFFF;
            font-size: x-large;
            height: 56px;
            background-color: #6A686A;
        }
        .auto-style34 {
            height: 414px;
            width: 483px;
        }
        .auto-style35 {
            height: 26px;
        }
        .auto-style36 {
            text-align: left;
            width: 181px;
        }
        .auto-style37 {
            text-align: left;
            height: 34px;
            width: 181px;
        }
        .auto-style38 {
            margin-left: 556px;
            margin-bottom: 0px;
        }
        .auto-style40 {
            width: 290px;
        }
        .auto-style41 {
            height: 34px;
            width: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/login.aspx" CssClass="auto-style38" Height="110px" Width="261px" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" CreateUserButtonText="Đăng Ký" Font-Names="Verdana" Font-Size="10pt">
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#284775" />
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" >
                    <ContentTemplate>
                        <table class="auto-style34" style="font-size:100%;">
                            <tr>
                                <td align="center" class="auto-style30" colspan="2"><strong>Đăng Ký</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style36">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Tên đăng nhập:</asp:Label>
                                </td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="UserName" runat="server" Height="26px" Width="249px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật khẩu:</asp:Label>
                                </td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="Password" runat="server" Height="28px" TextMode="Password" Width="247px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Xác nhận mật khẩu:</asp:Label>
                                </td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="ConfirmPassword" runat="server" Height="29px" TextMode="Password" Width="247px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37">&nbsp;<asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                </td>
                                <td class="auto-style41">
                                    <asp:TextBox ID="Email" runat="server" Height="26px" Width="249px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Câu hỏi bảo mật:</asp:Label>
                                </td>
                                <td class="auto-style41">
                                    <asp:TextBox ID="Question" runat="server" Height="26px" Width="248px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Câu trả lời:</asp:Label>
                                </td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="Answer" runat="server" Height="21px" Width="255px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style35" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1">Mật khẩu và xác nhận mật khẩu không trùng khớp</asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" >
                </asp:CompleteWizardStep>
            </WizardSteps>
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="#FFFFFF" />
            <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
            </StepNavigationTemplate>
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    </p>
</asp:Content>
