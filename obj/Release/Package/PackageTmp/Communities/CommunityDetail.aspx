<%@ Page Title="" Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Communities_CommunityDetail" Codebehind="CommunityDetail.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/MessageBox.ascx" TagName="MessageBox" TagPrefix="Msg" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    
            <div class="Col2">
                <div class="Col2Left">
                    <div class="UserHead1">
                        <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
                    </div>
                    <div>
                        <AKP:MsgBox runat="server" ID="msg" />
                    </div>
                    <div class="Box1">
                        <div class="Box1Header">
                            <asp:Label ID="lblCommunityName" runat="server" Text=""></asp:Label>
                            <div class="BoxHeaderMessage">
                                <asp:Label ID="lblComMem" Visible="false" runat="server" Text="شما عضوی این گروه هستید"></asp:Label></div>
                        </div>
                        <div>
                            <table style="width: 100%;">
                                <tr>
                                    <td>
                                        <asp:Panel runat="server" ID="pnlBoxDesc" Visible="false" class="DescBox1">
                                            <div class="Padder2">
                                                <div class="cCommunityPhoto">
                                                    <asp:Image ID="imgComPhoto" CssClass="SmallPic" BorderWidth="1" runat="server" /></div>
                                                <asp:Label ID="lblDescription" runat="server"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                    </td>
                                    <td style="width: 100px;">
                                        <div class="RightContents">
                                            <asp:LinkButton ID="btnJoinCommunity" Text="درخواست عضویت" CssClass="button2" runat="server"
                                                OnClick="btnJoinCommunity_Click"></asp:LinkButton>
                                            <asp:LinkButton ID="btnUnJoin" Text="انصراف از عضویت" CssClass="button4" runat="server"
                                                OnClick="btnUnJoin_Click"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="BlueHeader">
                            <asp:Label ID="lblCaption" Text="آخرین عکسها" runat="server"></asp:Label>
                        </div>
                        <asp:Repeater runat="server" ID="rptPosts" OnItemCommand="HandleRepeaterCommand">
                            <ItemTemplate>
                                <div class="Padder1">
                                    <div>
                                        &nbsp;
                                        <asp:LinkButton ID="hplTitle" CommandName="EditCommunityPost" PostID='<%#DataBinder.Eval(Container.DataItem, "ID") %>'
                                            CssClass="cCommunityPostTitle" NavigateUrl='<%#"http://www.parset.com/Communities/CommunityPosts.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                            Text='<%#DataBinder.Eval(Container.DataItem, "Title") %>' runat="server" />&nbsp;
                                    </div>
                                    <div>
                                        &nbsp;
                                        <%#DataBinder.Eval(Container.DataItem, "Description") %>&nbsp;<span class="DateAgo">
                                            <%#Tools.GetPrettyDate((DateTime)DataBinder.Eval(Container.DataItem, "PostDate"))%>
                                        </span>
                                    </div>
                                    <div>
                                        <asp:Panel ID="pnlLikes" CssClass="cLikePanel" Visible="false" runat="server">
                                            <div class="Padder1">
                                                <div>
                                                    <asp:Label ID="lblLikeCaption" runat="server"></asp:Label>
                                                </div>
                                                <div>
                                                    <asp:Repeater runat="server" ID="rptComments" OnItemCommand="HandleCommunityCommentsRepeater">
                                                        <ItemTemplate>
                                                            <table>
                                                                <tr>
                                                                    <td style="width: 60px;">
                                                                        <asp:HyperLink CssClass="cUserImageSmall" BorderWidth="1" BorderColor="Black" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                                                            ImageUrl='<%#ShowPic(DataBinder.Eval(Container.DataItem, "SmallPicFile"))%>'
                                                                            runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <span class="Commenter">
                                                                            <%#DataBinder.Eval(Container.DataItem, "FirstName")%>&nbsp;<%#DataBinder.Eval(Container.DataItem, "LastName")%></span>&nbsp;<%#DataBinder.Eval(Container.DataItem, "Comment") %>
                                                                        <br />
                                                                        <span class="DateAgo">
                                                                            <%#Tools.GetPrettyDate((DateTime)DataBinder.Eval(Container.DataItem, "CommentDate"))%></span>
                                                                        &nbsp;<div class="cDelComment">
                                                                            <asp:LinkButton ID="btnDeleteComment" Visible='<%#ShowDelVisibility(DataBinder.Eval(Container.DataItem, "UserCode")) %>'
                                                                                CommentID='<%#DataBinder.Eval(Container.DataItem, "ID") %>' CommandName="DeleteComment"
                                                                                runat="server">Delete</asp:LinkButton></div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                                <div>
                                                    <asp:TextBox ID="txtComment" TextMode="MultiLine" CssClass="txtComment" Visible="false"
                                                        runat="server"></asp:TextBox>
                                                </div>
                                                <div>
                                                    <div class="ButtonsCont1">
                                                        <div style="float: right; padding-right: 5px;">
                                                            <asp:LinkButton ID="btnSendComment" CssClass="button1" Visible="false" CommandName="SendComment"
                                                                runat="server">ارسال مطلب</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <div class="LikeComTime">
                                            <asp:LinkButton ID="btnLike" LikeFlag="0" CommandName="LikePost" PostID='<%#DataBinder.Eval(Container.DataItem, "ID") %>'
                                                runat="server"><%#ShowLikeLabel(DataBinder.Eval(Container.DataItem, "Code"))%></asp:LinkButton>
                                            &nbsp;-&nbsp;
                                            <asp:LinkButton ID="btnComment" CommandName="ShowCommentBox" PostID='<%#DataBinder.Eval(Container.DataItem, "ID") %>'
                                                runat="server">ارسال مطلب</asp:LinkButton>
                                        </div>
                                        <br />
                                        <br />
                                    </div>
                                </div>
                                <div class="Clear">
                                </div>
                                <div class="Line3">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div style="width: 580px;">
                    </div>
                </div>
                <div class="Col2Right">
                    <div class="Padder2">
                        <div style="direction: rtl; text-align: right;">
                            <SRP:SmallRandPro ID="SmallRandPro1" runat="server" />
                        </div>
                        <div>
                            <RND:RandUsers runat="server" ID="RandUsers1" PositionCode="1" />
                        </div>
                    </div>
                </div>
            </div>
        
</asp:Content>
