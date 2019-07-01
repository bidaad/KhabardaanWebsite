<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_ForgotPass1" Title="پارست ::  بازیابی کلمه عبور مرحله اول" CodeBehind="ForgotPass1.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    <div class="MainHeader">
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="بازیابی کلمه عبور"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div>
                        <AKP:MsgBox ID="msgText" runat="server" />
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Marginer2">
                        <asp:Panel ID="pnlSend" runat="server">
                            <div style="text-align: right">
                                <div>
                                    <table>
                                        <tr>
                                            <td class="lbl" style="text-align: left">
                                                <asp:Label ID="Label1" runat="server" Text="ایمیل:"></asp:Label>
                                                <asp:Label ID="Label2" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                            </td>
                                            <td>
                                               
                                                <asp:TextBox ID="txtEmail" Width="150" SkinID="English" runat="server"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmail"
                                                    runat="server" ErrorMessage="ایمیل را وارد کنید"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ControlToValidate="txtEmail" ValidationGroup="ForgotPass" ErrorMessage="ایمیل معتبر نیست"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="Clear">
                                </div>
                                <div style="text-align: left; padding-left: 150px; padding-top: 5px;">
                                    <asp:LinkButton ID="btnSend" CssClass="button"  ValidationGroup="ForgotPass" Text="ارسال ایمیل" runat="server"
                                        OnClick="btnSend_Click"></asp:LinkButton>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="pnlMessage" Visible="false" CssClass="Message">
                            <asp:Label ID="lblMessage" CssClass="Marginer1" runat="server"></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
