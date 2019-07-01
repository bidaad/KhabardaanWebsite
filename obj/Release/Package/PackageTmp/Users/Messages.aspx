<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_Messages" Title="پیامها" CodeBehind="Messages.aspx.cs" %>

<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="UserHead1">
            <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
        </div>
        <div class="Padder2">
            <div id="MenuTabs">
                <telerik:RadTabStrip CssClass="TabTitles" AutoPostBack="True" dir="rtl" ID="tsMessages"
                    runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Vista" skinspath="~/RadControls/TabStrip/Skins"
                    OnTabClick="tsMessages_TabClick">
                    <Tabs>
                        <telerik:RadTab ID="Tab1" runat="server" CssClass="TabTitle" Text="پیامهای دریافتی">
                        </telerik:RadTab>
                        <telerik:RadTab ID="Tab2" runat="server" CssClass="TabTitle" Text="پیامهای ارسال شده">
                        </telerik:RadTab>
                        <telerik:RadTab ID="Tab3" runat="server" CssClass="TabTitle" Text="ارسال پیام" Selected="True">
                        </telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
                <div class="cTabWrapper">
                    <telerik:RadMultiPage ID="RadMultiPage1" SelectedIndex="0" runat="server">
                        <telerik:RadPageView ID="PageView1" runat="server">
                            <asp:UpdateProgress ID="UpdateProgress" runat="server">
                                <ProgressTemplate>
                                    <div class="cAjaxLoading">
                                        Loading...<br />
                                        <br />
                                        <asp:Image ID="imgLoading" ImageUrl="~/images/loading.gif" runat="server" />
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <div class="Marginer2">
                                <div>
                                    <asp:Repeater runat="server" ID="rptMessages" OnItemCommand="HandleRepeaterCommand"
                                        OnItemDataBound="rptMessages_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="cOneMessage">
                                                <asp:Panel ID="pnlHeader" CssClass="MessageHeader" runat="server">
                                                    <div class="MessageArrow">
                                                        <asp:ImageButton CommandName="ShowAllMessage" ID="imgArrow" ImageUrl="~/images/btnRightArrow.jpg"
                                                            runat="server" /></div>
                                                    <div class="MessageCheckbox">
                                                        <asp:CheckBox runat="server" MessageCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>'
                                                            ID="chkDeleteMessage" />
                                                    </div>
                                                    <div class="MessageUserNameDate">
                                                        <asp:HyperLink runat="server" ID="hplSender" NavigateUrl='<%# "~/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "FromID") %>'><%#DataBinder.Eval(Container.DataItem, "FromUser")%></asp:HyperLink><br />
                                                        <span class="Date1">
                                                            <%#ShowDate(DataBinder.Eval(Container.DataItem, "SendDate"))%></span>
                                                    </div>
                                                    <div class="MessageTitle">
                                                        <asp:LinkButton CommandName="ShowAllMessage" ID="btnTitle" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>'
                                                            Font-Bold='<%#IsBold(DataBinder.Eval(Container.DataItem, "HCStatusCode"))%>'></asp:LinkButton></div>
                                                    <div class="MessageDelete">
                                                        <asp:ImageButton ID="hplReply" CommandName="ReplyMessage" FromUserCode='<%#DataBinder.Eval(Container.DataItem, "FromUserCode")%>'
                                                            runat="server" ImageUrl="~/images/Reply.gif"></asp:ImageButton>
                                                        <asp:ImageButton runat="server" CommandName="DeleteOneMessage" ImageUrl="~/images/delete-24x24.gif"
                                                            MessageCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>' ID="btnDeleteMessage" />
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="pnlFullMessage" CssClass="MessageFull" MessageCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>'
                                                    Visible="false" runat="server">
                                                    <table class="ctblMessageDesc">
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="pnlToUserPic" runat="server">
                                                                    <asp:HyperLink ID="HyperLink1" CssClass="cUserImageSmall" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "FromID") %>'
                                                                        ImageUrl='<%#ShowPic(DataBinder.Eval(Container.DataItem, "FromPicFile"))%>' runat="server" />
                                                                </asp:Panel>
                                                            </td>
                                                            <td>
                                                                <div class="cFullMessage">
                                                                    <%#Tools.FormatString( DataBinder.Eval(Container.DataItem, "Message").ToString())%>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="MessageButtons">
                                                        <table style="text-align: right">
                                                            <tr>
                                                                <td>
                                                                    <asp:ImageButton ID="btnShowHistory" CommandName="ShowHistory" CssClass="cbtnShowHistory"
                                                                        ImageUrl="~/images/spacer.gif" Width="140" Height="20" runat="server" />
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                    <asp:ImageButton ID="btnDelete" CommandName="DeleteOneMessage" ImageUrl="~/images/btnDelete.gif"
                                                                        runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="Clear">
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="pnlHistory" Visible="false" runat="server" FromUserCode='<%#DataBinder.Eval(Container.DataItem, "FromUserCode")%>'>
                                                    <asp:Repeater runat="server" ID="rptMessageHistory">
                                                        <ItemTemplate>
                                                            <table class="ctblMessageDesc" cellspacing="0" cellpadding="0">
                                                                <tr>
                                                                    <td style="text-align: left; width: 180px">
                                                                        <div class="cVerUL">
                                                                            <ul>
                                                                                <li class="cUserFullName2"><a href="../Users/<%#DataBinder.Eval(Container.DataItem, "FromID")%>.htm">
                                                                                    <%#DataBinder.Eval(Container.DataItem, "FromUser")%></a><br />
                                                                                    <div class="cDate">
                                                                                        <%#ShowDate(DataBinder.Eval(Container.DataItem, "SendDate"))%></div>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="cFullMessage">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>'
                                                                                Font-Bold='<%#IsBold(DataBinder.Eval(Container.DataItem, "HCStatusCode"))%>'></asp:Label><br />
                                                                            <%#DataBinder.Eval(Container.DataItem, "Message")%>
                                                                        </div>
                                                                        <div class="cSpacer3">
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </asp:Panel>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <div style="text-align: center">
                                        <asp:Label ID="lblNoMessage" CssClass="cNoMessage" runat="server" Text="شما هیج پیامی در صندوق پیامهای خود ندارید."
                                            Visible="false"></asp:Label><br />
                                        <br />
                                    </div>
                                    <div style="text-align: right; padding: 5px 5px 5px 5px;">
                                        <asp:ImageButton ID="btnDeleteAll" ImageUrl="~/images/btn_DeleteAll.jpg" runat="server"
                                            OnClick="btnDeleteAll_Click" /><br />
                                    </div>
                                    <asp:Panel runat="server" ID="pnlPagingRec">
                                        <div class="PagerContainer">
                                            <div class="pager">
                                                <ul>
                                                    <asp:Repeater runat="server" OnItemCommand="HandleRepeaterCommand" ID="rptPagingRec"
                                                        OnItemDataBound="PagingRecDataBound">
                                                        <HeaderTemplate>
                                                            <li>
                                                                <asp:LinkButton ID="btnFirstPage" CommandName="CPRecToFirst" runat="server" Text=" «« "></asp:LinkButton></li>
                                                            <li>
                                                                <asp:LinkButton ID="btnPrePage" CommandName="CPRecToPrevious" runat="server" Text=" « "></asp:LinkButton></li>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <li>
                                                                <asp:LinkButton ID="btnNum" PageNo='<%#DataBinder.Eval(Container.DataItem, "PageNo") %>'
                                                                    CommandName="CPRec" runat="server"><%#DataBinder.Eval(Container.DataItem, "PageNo") %></asp:LinkButton></li></ItemTemplate>
                                                        <FooterTemplate>
                                                            <li>
                                                                <asp:LinkButton ID="btnNextPage" CommandName="CPRecToNext" runat="server" Text=" » "></asp:LinkButton></li>
                                                            <li>
                                                                <asp:LinkButton ID="btnLastPage" CommandName="CPRecToLast" runat="server" Text=" »» "></asp:LinkButton></li>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                            </div>
                                            <br />
                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="PageView2" runat="server">
                            <div class="Marginer2">
                                <div>
                                    <asp:Repeater runat="server" ID="rptSentMessages" OnItemCommand="HandleRepeaterCommand">
                                        <ItemTemplate>
                                            <div class="cOneMessage">
                                                <asp:Panel ID="pnlHeader" CssClass="MessageHeader" runat="server">
                                                    <div class="MessageArrow">
                                                        <asp:ImageButton CommandName="ShowAllMessage" ID="imgArrow" ImageUrl="~/images/btnRightArrow.jpg"
                                                            runat="server" /></div>
                                                    <div class="MessageCheckbox">
                                                        <asp:CheckBox runat="server" MessageCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>'
                                                            ID="chkDeleteMessage" />
                                                    </div>
                                                    <div class="MessageUserNameDate">
                                                        برای:
                                                        <asp:HyperLink runat="server" ID="hplSender" NavigateUrl='<%# "~/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ToID") %>'><%#DataBinder.Eval(Container.DataItem, "ToUser")%></asp:HyperLink><br />
                                                        <span class="Date1">
                                                            <%#ShowDate(DataBinder.Eval(Container.DataItem, "SendDate"))%></span>
                                                    </div>
                                                    <div class="MessageTitle">
                                                        <asp:LinkButton CommandName="ShowAllMessage" ID="btnTitle" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>'
                                                            Font-Bold='<%#IsBold(DataBinder.Eval(Container.DataItem, "HCStatusCode"))%>'></asp:LinkButton></div>
                                                    <div class="MessageDelete">
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="pnlFullMessage" CssClass="MessageFull" MessageCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>'
                                                    Visible="false" runat="server">
                                                    <table class="ctblMessageDesc">
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="pnlToUserPic" runat="server">
                                                                    <asp:HyperLink ID="HyperLink1" CssClass="cUserImage" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "FromID") %>'
                                                                        ImageUrl='<%#ShowPic(DataBinder.Eval(Container.DataItem, "ToPicFile"))%>' runat="server" />
                                                                </asp:Panel>
                                                            </td>
                                                            <td>
                                                                <div class="cFullMessage">
                                                                    <%#Tools.FormatString( DataBinder.Eval(Container.DataItem, "Message").ToString())%>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="MessageButtons">
                                                        <table style="text-align: right">
                                                            <tr>
                                                                <td>
                                                                    <asp:ImageButton ID="btnShowHistory" CommandName="ShowHistory" CssClass="cbtnShowHistory"
                                                                        ImageUrl="~/images/spacer.gif" Width="140" Height="20" runat="server" />
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                    <asp:ImageButton ID="btnDelete" CommandName="DeleteMessage" ImageUrl="~/images/btnDelete.gif"
                                                                        runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="Clear">
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel ID="pnlHistory" Visible="false" runat="server" FromUserCode='<%#DataBinder.Eval(Container.DataItem, "FromUserCode")%>'>
                                                    <asp:Repeater runat="server" ID="rptMessageHistory">
                                                        <ItemTemplate>
                                                            <table class="ctblMessageDesc" cellspacing="0" cellpadding="0">
                                                                <tr>
                                                                    <td style="text-align: left; width: 180px">
                                                                        <div class="cVerUL">
                                                                            <ul>
                                                                                <li class="cUserFullName2"><a href="../Users/<%#DataBinder.Eval(Container.DataItem, "FromID")%>.htm">
                                                                                    <%#DataBinder.Eval(Container.DataItem, "FromUser")%></a><br />
                                                                                    <div class="cDate">
                                                                                        <%#ShowDate(DataBinder.Eval(Container.DataItem, "SendDate"))%></div>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="cFullMessage">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>'
                                                                                Font-Bold='<%#IsBold(DataBinder.Eval(Container.DataItem, "HCStatusCode"))%>'></asp:Label><br />
                                                                            <%#DataBinder.Eval(Container.DataItem, "Message")%>
                                                                        </div>
                                                                        <div class="cSpacer3">
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </asp:Panel>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <asp:Panel runat="server" ID="pnlPagingSent">
                                    <div class="PagerContainer">
                                        <div class="pager">
                                            <ul>
                                                <asp:Repeater runat="server" OnItemCommand="HandleRepeaterCommand" ID="rptPagingSent"
                                                    OnItemDataBound="PagingSentDataBound">
                                                    <HeaderTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="btnFirstPage" CommandName="CPSentToFirst" runat="server" Text=" «« "></asp:LinkButton></li>
                                                        <li>
                                                            <asp:LinkButton ID="btnPrePage" CommandName="CPSentToPrevious" runat="server" Text=" « "></asp:LinkButton></li>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="btnNum" PageNo='<%#DataBinder.Eval(Container.DataItem, "PageNo") %>'
                                                                CommandName="CPSent" runat="server"><%#DataBinder.Eval(Container.DataItem, "PageNo") %></asp:LinkButton></li></ItemTemplate>
                                                    <FooterTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="btnNextPage" CommandName="CPSentToNext" runat="server" Text=" » "></asp:LinkButton></li>
                                                        <li>
                                                            <asp:LinkButton ID="btnLastPage" CommandName="CPSentToLast" runat="server" Text=" »» "></asp:LinkButton></li>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                        <br />
                                    </div>
                                </asp:Panel>
                            </div>
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="PageView3" runat="server">
                            <div class="Marginer2">
                                <table style="direction: ltr;">
                                    <tr>
                                        <td style="text-align: right;">
                                            <telerik:RadComboBox ID="cboFriendList" runat="server" AllowCustomText="False" Width="200"
                                                ShowToggleImage="True" ShowMoreResultsBox="true" EnableLoadOnDemand="True" MarkFirstMatch="True"
                                                OnItemsRequested="cboFriendList_ItemsRequested" Style="direction: rtl;" EnableVirtualScrolling="true">
                                            </telerik:RadComboBox>
                                        </td>
                                        <td class="Farsi">
                                            <asp:Label ID="Label2" runat="server" Text="به: "></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">
                                            <asp:TextBox ID="txtSubject" Width="480" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="Farsi">
                                            <asp:Label ID="Label3" runat="server" Text="عنوان:"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">
                                            <asp:TextBox ID="txtMessage" CssClass="SendMessageContent" TextMode="MultiLine" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="Farsi">
                                            <asp:Label ID="Label4" runat="server" Text="متن پیام:"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align: right;">
                                            <asp:LinkButton ID="btnSendMessage" OnClick="btnSendMessage_Click" CssClass="button2"
                                                runat="server">ارسال</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </telerik:RadPageView>
                    </telerik:RadMultiPage>
                    <FTL:SendMessage runat="server" Visible="false" ID="SendMessage"></FTL:SendMessage>
                    <div>
                        <AKP:MsgBox runat="server" ID="msg" />
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
        <br />
        <br />
        <br />
    </div>
    <script type="text/javascript" language="JavaScript">
        function adjustDivs() {
            var df = document.getElementById('<%=UpdateProgress.ClientID %>');
            df.style.position = 'absolute';
            df.style.left = (document.documentElement.scrollLeft + 45) + '%';
            df.style.top = (document.documentElement.scrollTop + 300) + 'px';
        }

        window.onload = adjustDivs;
        window.onresize = adjustDivs;
        window.onscroll = adjustDivs;
    </script>
</asp:Content>
