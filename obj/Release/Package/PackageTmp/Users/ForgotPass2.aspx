<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_ForgotPass2" Title="بازیابی کلمه عبور مرحله دوم" CodeBehind="ForgotPass2.aspx.cs" %>

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
                    <div style="padding: 10px;">
                        <AKP:MsgBox ID="msgText" runat="server" />
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Marginer2" style="display: block;">
                        <asp:Panel ID="pnlNewPassword" runat="server">
                            <table border="0" class="ctblFP" cellpadding="2" cellspacing="0">
                                <tr>
                                    <td colspan="2">
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPassword"
                                            ControlToCompare="txtConfirmPassword" ErrorMessage="کلمه عبور و تایید کلمه عبور یکی نیستند"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 90px">
                                        <asp:TextBox ID="txtPassword" SkinID="English" TextMode="Password" runat="server"
                                            Width="256px" Height="18px" Style="border: 1px #999999 solid; font-family: tahoma;
                                            font-size: 11px; color: #000000; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=50);
                                            z-index: 999; filter: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#FFFFFF,endColorStr=#efefef);"></asp:TextBox>
                                    </td>
                                    <td class="cFPLabel">
                                        <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="#365887" Text="کلمه عبور جدید :"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 90px;">
                                        <asp:TextBox ID="txtConfirmPassword" SkinID="English" runat="server" TextMode="Password"
                                            Width="256px" Height="18px" Style="border: 1px #999999 solid; font-family: tahoma;
                                            font-size: 11px; color: #000000; filter: progid:DXImageTransform.Microsoft.Alpha(opacity=50);
                                            z-index: 999; filter: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#FFFFFF,endColorStr=#efefef);">power</asp:TextBox>
                                    </td>
                                    <td class="cFPLabel">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="#365887" Text="تایید کلمه عبور :"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: left">
                                        <asp:LinkButton ID="btnNewPass" runat="server" Text="ذخیره" CssClass="button2" OnClick="btnSetNewPassword_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="pnlMessage" Visible="false" CssClass="Message">
                            <asp:Label ID="lblMessage" CssClass="Marginer1" runat="server"></asp:Label>
                        </asp:Panel>
                    </div>
                    <div class="Clear">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
