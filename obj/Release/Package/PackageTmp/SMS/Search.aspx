<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="Search.aspx.cs"
    Inherits="Parset.SMS.Search" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/UCSMSCats.ascx" TagName="UCSMSCats" TagPrefix="SMS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="WinRadiusGray Padder5">

                <div class="form-inline">

                    <div class="form-group">
                        <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در اس ام اس ها" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
                    </div>

                </div>

            </div>
            <AKP:MsgBox ID="msgText" runat="server" />

            <div class="WinRadiusGray">
                <div class="CatHeaderCont">
                    <h3 class="CatHeader">
                        <asp:Label ID="lblCatTitle" Text="اس ام اس"
                            runat="server"></asp:Label>
                    </h3>
                </div>
                <div class="clear">
                </div>

                <div >
                    
                    <div class="ParsetList">
                        <div class="Marginer1">
                            <div class="Marginer1">
                                <div class="CoolWin">
                                    <asp:HyperLink ID="hplHelpSMS" NavigateUrl="~/Help/SMSHelp.aspx" Target="_blank"
                                        runat="server">
                        از این پس میتوانید متن اس ام اس را مستقیما به موبایل خود ارسال کنید<br />
                        کافی است بر روی آیکون موبایل در کنار هر اس ام اس کلیک کنید و متن آنرا مستقیما به موبایل خود یا دوستانتان ارسال کنید.
                                    </asp:HyperLink>
                                </div>
                            </div>
                            <div class="Box3">
                                <div>
                                    <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="Clear">
                                </div>
                                <div class="Marginer3">
                                    <asp:Repeater ID="rptSMSList" OnItemCommand="HandleRepeaterCommand" runat="server">
                                        <ItemTemplate>
                                            <div class="SMSContent">
                                                <%#Highlight(Eval("SMSbody"))%>
                                                <div class="SendSMSArea">
                                                    <asp:ImageButton ID="btnSend" Code='<%#Eval("Code") %>' CommandName="ShowDialog"
                                                        ToolTip="ارسال به موبایل" CssClass="btnSendToCell" ImageUrl="~/images/spacer.gif"
                                                        Width="48" Height="48" runat="server" />
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <asp:Panel ID="pnlSendSMS" Visible="false" runat="server">
                                    <div id="SendSMS" title="ارسال اس ام اس">
                                        <table class="tblMainSMSPanel">
                                            <tr>
                                                <td class="SendSMSTools" style="width: 200px;">
                                                    <div>
                                                        <div class="SMSInnerArea">
                                                            <asp:Literal ID="ltrSMSContent" runat="server"></asp:Literal>
                                                        </div>
                                                        <div class="ToNumberArea">
                                                            <table class="tblSMSToNumber">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>شماره مقصد:
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtToCellNo" SkinID="Numeric" CssClass="ToNumber" runat="server"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="SMSButtons">
                                                            <asp:Button ID="btnDoSend" CssClass="btnSendSMS" OnClick="btnDoSend_Click" runat="server"
                                                                Text="" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <AKP:MsgBox runat="server" ID="msgSMSDialog">
                                                        </AKP:MsgBox>
                                                    </div>
                                                    <div class="RTL">
                                                        شما در صفحه نمایشگر موبایل روبرو متنی را که از روی سایت انتخاب (<span lang="en-us">Select</span>)
                                                        کرده اید مشاهده می کنید.<br />
                                                        جهت ارسال متن از طریق اس ام اس شماره موبایل دلخواهتان را درون کادر سفید رنگ داخل
                                                        موبایل در جلوی کلمه شماره مقصد وارد نمایید و سپس روی کلید ارسال کلیک نمایید.<br />
                                                        برای ارسال اس ام اس لازم است عضو سایت باشید و حداقل 1000 تومان (معادل ارسال 33 اس
                                                        ام اس) اکانت خود را شارژ کنید..<br />
                                                        <br />
                                                        <p>
                                                            اگر عضو نیستید میتوانید از طریق
                                                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="cColorLink" Target="_blank"
                                                                Font-Bold="true" NavigateUrl="~/Reg/Default.aspx">این لینک</asp:HyperLink>
                                                            عضو شوید.
                                                        </p>
                                                        <p>
                                                            اگر نیاز به شارژ موجودی دارید از طریق
                                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="cColorLink" Target="_blank"
                                                                Font-Bold="true" NavigateUrl="~/Users/AccountCharge.aspx">این لینک</asp:HyperLink>
                                                            موجودی خود را اضافه کنید.
                                                        </p>
                                                        <p>
                                                            در صورتی که مایل به تغییر متن اس ام اس هستید لطفا این پنجره را ببندید و متن مورد
                                                            نظر خود را دوباره انتخاب کنید.
                                                        </p>
                                                        <p>
                                                            هزینه ارسال هر اس ام اس : 50 تومان
                                                        </p>
                                                        <p>
                                                            <a target="_blank" class="cColorLink" href="http://www.parset.com/Help/SMSHelp.aspx">راهنمای ارسال اس ام اس</a>
                                                        </p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </asp:Panel>
                                <div>
                                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                                </div>
                                <div class="Box3Toolbar">
                                    <Tlb:Toolbar ID="tlb1" runat="server" />
                                </div>
                                <div class="Clear">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="direction: ltr; text-align: left;">
                        <UCBanner:Banner ID="Banner1" PositionCode="16" runat="server" />
                    </div>
                    <div class="Clear">
                    </div>
                </div>
            </div>

            
                <UCBanner:Banner ID="Banner2" PositionCode="11" runat="server" />
            
            <div class="Clear">
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
