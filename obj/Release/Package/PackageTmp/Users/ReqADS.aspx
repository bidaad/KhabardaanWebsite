<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true"
    Inherits="Users_ReqADS" Title="فرم درخواست تبلیغات" Codebehind="ReqADS.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="InnerBarWrap">
    </div>
    <div class="LeftCol">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    <div class="MainHeader">
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فرم درخواست تبلیغات"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Marginer2">
                        <AKP:MsgBox runat="server" ID="msgBox">
                        </AKP:MsgBox>
                        <div style="width:650px;background-color:#EEEEEE;padding:10px;border:solid 1px #C0BFBF;">
                            <table style="width: 100%">
                                <tr>
                                    <td class="style2" colspan="3">
                                        شماره حسابها
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        به&nbsp; نام علیرضا گرجی
                                    </td>
                                    <td class="style2" style="width: 25%">
                                        1880611874
                                    </td>
                                    <td style="width: 50%">
                                        بانک ملت
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        به&nbsp; نام علیرضا گرجی
                                    </td>
                                    <td style="width: 25%" class="style2">
                                        0200880553007
                                    </td>
                                    <td style="width: 50%">
                                        بانک پارسیان
                                    </td>
                                </tr>
                            </table>
                            <p>
                                &nbsp;</p>
                            <table style="width: 100%">
                                <tr>
                                    <td class="style2" colspan="3">
                                        شماره کارت
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        به&nbsp; نام علیرضا گرجی
                                    </td>
                                    <td class="style2" style="width: 25%">
                                        6104 3371 9047 4872
                                    </td>
                                    <td style="width: 50%">
                                        بانک ملت
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        به&nbsp; نام علیرضا گرجی
                                    </td>
                                    <td style="width: 25%" class="style2">
                                        6221 0610 2815 9194
                                    </td>
                                    <td style="width: 50%">
                                        بانک پارسیان
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Spacer1"></div>
                        
                        <asp:Panel ID="pnlSend" runat="server">
                            <div style="text-align: right">
                                <div class="FormRow">
                                    <div class="FormList">
                                        <AKP:Combo ID="cboHCAccountBankNameCode" AllowNull="false" Width="350" runat="server">
                                        </AKP:Combo>
                                    </div>
                                    <div class="FormRight">
                                        <asp:Label ID="Label3" runat="server" Text=":بانک"></asp:Label>
                                        <asp:Label ID="Label4" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                    </div>
                                </div>
                                <div class="FormRow">
                                    <div class="FormList">
                                        <asp:TextBox ID="txtFishNo" SkinID="English" Width="350" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="FormRight">
                                        <asp:Label ID="Label5" runat="server" Text=":شماره فیش"></asp:Label>
                                        <asp:Label ID="Label6" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                    </div>
                                </div>
                                <div class="FormRow">
                                    <div class="FormList">
                                        <asp:TextBox ID="txtTitle" Width="350" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="FormRight">
                                        <asp:Label ID="Label9" runat="server" Text=":عنوان آگهی"></asp:Label>
                                        <asp:Label ID="Label10" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                    </div>
                                </div>
                                <div class="FormRow">
                                    <div class="FormList">
                                        http://<asp:TextBox ID="txtLink" SkinID="English" Width="350" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="FormRight">
                                        <asp:Label ID="Label7" runat="server" Text=":لینک"></asp:Label>
                                        <asp:Label ID="Label8" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                    </div>
                                </div>
                                <div class="FormRow">
                                    <div class="FormList">
                                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" ControlToValidate="txtComment"
                                            runat="server" ErrorMessage="توضیحات را وارد کنید"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtComment" TextMode="MultiLine" Width="350" Rows="7" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="FormRight">
                                        <asp:Label ID="Label2" runat="server" Text=":متن تبلیغ"></asp:Label>
                                        <asp:Label ID="Label17" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                    </div>
                                </div>
                                <div class="Clear">
                                </div>
                                <div style="text-align: left; padding-left: 150px; padding-top: 5px;">
                                    <asp:LinkButton ID="btnSend" CssClass="button" Text="ارسال" runat="server" OnClick="btnSend_Click"></asp:LinkButton>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="RightCol">
        <Mnu:Menu ID="Menu1" runat="server" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
