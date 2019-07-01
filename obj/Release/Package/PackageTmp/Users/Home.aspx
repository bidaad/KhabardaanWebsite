<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Home" Title="  صفحه شخصی" CodeBehind="Home.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UserTools.ascx" TagName="UserTools" TagPrefix="UTL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress ID="UpdateProgress" runat="server">
                <ProgressTemplate>
                    <div class="cAjaxLoading">
                        <asp:Image ID="imgLoading" ImageUrl="~/images/loading.gif" runat="server" /><br />
                        <br />
                        Loading...
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <div class="WinRadiusGray">
                <div class="Marginer1">
                    <div class="Box1">

                        <div class="row">
                            <div class="col-md-4">
                                <asp:Image ID="imgPic" CssClass="MainPic" BorderWidth="1" Width="200" ImageUrl="~/images/man_icon.gif"
                                    runat="server" />
                                <div>
                                    <asp:HyperLink ID="hplUploadPic" NavigateUrl="~/Users/UploadPhoto.aspx" runat="server">تغییر عکس</asp:HyperLink>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="HomeSendPost">
                                    <div class="text-left">
                                        <asp:Label ID="Label2" runat="server" Text="در چه فکری هستید؟"></asp:Label>
                                    </div>
                                    <div>
                                        <asp:TextBox ID="txtComment" CssClass="form-control" onkeyup="ChangeArea(this)" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                                <asp:Panel ID="pnlAttachLink" CssClass="cpnlAttachLink" Visible="false" runat="server">
                                    <table style="width: 100%;" cellpadding="2" cellspacing="1">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtLink" Text="http://" CssClass="form-control" SkinID="English" onclick="this.value=''"
                                                    runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="btnCloseAttachLink" OnClick="btnCloseAttachLink_Click" ImageUrl="~/images/btnClose.jpg"
                                                    runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <div class="BlueHeader2 " style="width: 100%;">
                                    <table style="width: 100%; direction: ltr;" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="text-align: left;">
                                                <div>
                                                    <asp:LinkButton ID="btnShare" Text="اشتراک" CssClass="btn btn-primary" runat="server" OnClick="btnShare_Click"></asp:LinkButton>
                                                </div>
                                            </td>

                                            <td style="text-align: right;">افزودن لینک
                                                <asp:ImageButton ID="btnLink" OnClick="btnLink_Click" ImageUrl="~/images/linkbutton.gif"
                                                    runat="server" />
                                            </td>

                                        </tr>
                                    </table>
                                </div>
                                <div class="Clear">
                                </div>
                                <div>
                                    <AKP:MsgBox runat="server" ID="msg" />
                                </div>
                                <div class="Clear">
                                </div>
                                <div class="RightBot">
                                    <asp:HyperLink ID="LinkButton1" CssClass="btn btn-success" NavigateUrl="~/Users/RetrievContacts.aspx"
                                        runat="server">دعوت از دوستان</asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink1" CssClass="btn btn-success" NavigateUrl="~/Users/Albums.aspx"
                                        runat="server">ارسال عکس</asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink2" CssClass="btn btn-success" NavigateUrl="~/Users/Friends.aspx"
                                        runat="server">پبدا کردن دوستان</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Spacer1">
                    </div>
                    <asp:Panel runat="server" ID="pnlNewFriendship">
                        <fieldset>
                            <legend>
                                <asp:Literal ID="ltrNewFreindship" Text=" درخواست دوستی جدید " runat="server"></asp:Literal></legend>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    <div class="Loading">
                                    </div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <div>
                                <asp:Repeater runat="server" ID="rptMessages" OnItemCommand="HandleMessagesRepeater">
                                    <ItemTemplate>
                                        <div class="cOneMessage">
                                            <asp:Panel ID="pnlHeader" CssClass="MessageHeader" runat="server">
                                                <div class="MessageArrow">
                                                    <asp:ImageButton CommandName="ShowAllMessage" ID="imgArrow" ImageUrl="~/images/btnRightArrow.jpg"
                                                        runat="server" />
                                                </div>
                                                <div class="MessageTitleHome">
                                                    <asp:LinkButton CommandName="ShowAllMessage" ID="btnTitle" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title")%>'
                                                        Font-Bold='<%#IsBold(DataBinder.Eval(Container.DataItem, "HCStatusCode"))%>'></asp:LinkButton><br />
                                                    <span class="Date1">
                                                        <%#ShowDate(DataBinder.Eval(Container.DataItem, "SendDate"))%></span>
                                                </div>
                                                <div class="MessageDelete">
                                                    <asp:ImageButton ID="hplReply" CommandName="ReplyMessage" ToolTip="پاسخ" FromUserCode='<%#DataBinder.Eval(Container.DataItem, "FromUserCode")%>'
                                                        runat="server" ImageUrl="~/images/Reply.gif"></asp:ImageButton>
                                                    <asp:ImageButton ID="btnAccept" ImageUrl="~/images/accept-24x24.gif" ToolTip="تایید درخواست"
                                                        CommandName="AccpetFriendshipReq" CssClass="cAcceptFriendshipReq" runat="server"></asp:ImageButton>
                                                    <asp:ImageButton runat="server" CommandName="DeleteOneMessage" ToolTip="حذف" ImageUrl="~/images/delete-24x24.gif"
                                                        MessageCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>' ID="btnDeleteMessage" />
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlFullMessage" CssClass="MessageFull" MessageCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>'
                                                Visible="false" runat="server">
                                                <table class="ctblMessageDesc">
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="pnlToUserPic" runat="server">
                                                                <asp:HyperLink runat="server" CssClass="cUserImage" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "FromID") %>'>
                                                                        <img alt='' src='<%#ShowPic(DataBinder.Eval(Container.DataItem, "FromPicFile"))%>' />
                                                                </asp:HyperLink>
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
                                                            <td></td>
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
                                                                            <li class="cUserFullName2">
                                                                                <asp:HyperLink runat="server" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "FromUserCode")%>'>
                                                                                    <%#DataBinder.Eval(Container.DataItem, "FromUser")%></asp:HyperLink><br />
                                                                                <div class="cDate">
                                                                                    <%#ShowDate(DataBinder.Eval(Container.DataItem, "SendDate"))%>
                                                                                </div>
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
                                <FTL:SendMessage runat="server" Visible="false" ID="SendMessage"></FTL:SendMessage>
                            </div>
                        </fieldset>
                    </asp:Panel>
                    <div class="pnlHomeEvents">
                        <asp:Repeater runat="server" ID="rptComments" OnItemCommand="HandleCommentsRepeater">
                            <ItemTemplate>
                                <div class="row">

                                    <div class="col-md-1">
                                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cUserImageSmall" NavigateUrl='<%#"~/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "UserID") %>'>
                                                    <img src='<%#ShowPic(DataBinder.Eval(Container.DataItem, "SmallPicFile"))%>' alt="" />
                                        </asp:HyperLink>
                                    </div>
                                    <div class="col-md-11">
                                        <div class="Padder2">

                                            <div class="tblComments row">
                                                <div class="col-md-2">
                                                    <span class="Commenter">
                                                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="Commenter" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "UserID")%>'>
                                                                    <%#DataBinder.Eval(Container.DataItem, "FirstName")%>&nbsp;<%#DataBinder.Eval(Container.DataItem, "LastName")%></asp:HyperLink>
                                                    </span>
                                                </div>
                                                <div class="col-md-6">
                                                    <%#DataBinder.Eval(Container.DataItem, "Comment")%>
                                                </div>
                                                <div class="col-md-1">
                                                    <span class="DateAgo">
                                                        <%#DateAgo(DataBinder.Eval(Container.DataItem, "ActionDate"))%>
                                                    </span>
                                                </div>

                                                <div class="col-md-1">
                                                    <%#ShowLink( DataBinder.Eval(Container.DataItem, "Link")) %>
                                                </div>
                                                <div class="col-md-2 LikeComTime">
                                                    <asp:ImageButton ID="btnLike" LikeFlag="0" UserCode='<%#DataBinder.Eval(Container.DataItem, "UserCode") %>'
                                                        ImageUrl='<%#ShowLikeLabel(DataBinder.Eval(Container.DataItem, "Code")) %>' CommandName="LikePost"
                                                        ActionID='<%#DataBinder.Eval(Container.DataItem, "ID") %>' runat="server"></asp:ImageButton>
                                                    
                                                                    <asp:ImageButton ID="btnComment" ImageUrl="~/images/newpost.png" AlternateText="ارسال مطلب" EnableViewState="false" CommandName="ShowCommentBox"
                                                                        runat="server">
                                                                        
                                                                    </asp:ImageButton>
                                                </div>
                                            </div>


                                        </div>
                                    </div>

                                </div>
                                <div class="Clear">
                                </div>
                                <div class="row text-right">

                                    <div style="width: 100%;">
                                        <asp:Panel ID="pnlLikes" CssClass="cLikePanel" Visible="false" runat="server">
                                            <div class="Padder1">
                                                <div>
                                                    <asp:Label ID="lblLikeCaption" runat="server"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:Repeater runat="server" ID="rptCommentsInnerComments" OnItemCommand="HandleCommentsInnerCommentRepeater">
                                                        <ItemTemplate>
                                                            <table style="width: 100%;">
                                                                <tr>
                                                                    <td style="width: 60px;">
                                                                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="cUserImageSmall" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "UserID")%>'>
                                                                                                        <img src='<%#ShowPic(DataBinder.Eval(Container.DataItem, "SmallPicFile"))%>' alt='' />
                                                                        </asp:HyperLink>
                                                                    </td>
                                                                    <td>
                                                                        <span class="Commenter">
                                                                            <%#DataBinder.Eval(Container.DataItem, "FirstName")%>&nbsp;<%#DataBinder.Eval(Container.DataItem, "LastName")%></span>
                                                                        &nbsp;<%#DataBinder.Eval(Container.DataItem, "Comment") %>
                                                                        <br />
                                                                        <span class="DateAgo">
                                                                            <%#Tools.GetPrettyDate((DateTime)DataBinder.Eval(Container.DataItem, "CommentDate"))%></span>
                                                                        &nbsp;
                                                                                                <div class="cDelComment">
                                                                                                    <asp:LinkButton ID="btnDeleteComment" Visible='<%#ShowDelVisibility(DataBinder.Eval(Container.DataItem, "UserCode")) %>'
                                                                                                        ActionID='<%#DataBinder.Eval(Container.DataItem, "ID") %>' CommandName="DeleteComment"
                                                                                                        runat="server">حذف</asp:LinkButton>
                                                                                                </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>

                                                <div>
                                                    <asp:Panel ID="pnlSendComment" Visible="false" runat="server" CssClass="pnlSendComment">
                                                        <div>
                                                            <asp:TextBox ID="txtComment" TextMode="MultiLine" CssClass="form-control"
                                                                runat="server"></asp:TextBox>
                                                        </div>
                                                        <div style="margin-top: 5px;">
                                                            <asp:LinkButton ID="btnSendComment" CssClass="btn btn-warning" CommandName="SendComment"
                                                                runat="server">ارسال</asp:LinkButton>
                                                            <asp:LinkButton ID="btnCancelSendComment" CssClass="btn btn-warning" CommandName="CloseCommentBox"
                                                                runat="server">انصراف</asp:LinkButton>
                                                        </div>
                                                    </asp:Panel>
                                                </div>
                                            </div>
                                        </asp:Panel>

                                    </div>

                                </div>
                                <div class="Line3">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
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
