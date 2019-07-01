<%@ Page Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true"
    Inherits="Users_Profile" Title="تغییر مشخصات" CodeBehind="Profile.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/UserBar.ascx" TagName="UserBar" TagPrefix="UB" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/UCNewsTicker.ascx" TagName="UCNewsTicker" TagPrefix="UCNT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="WinRadiusGray">
        <div class="InnerBarWrap">
            <UCNT:UCNewsTicker runat="server" />
        </div>
    </div>
    <div class="WinRadiusGray">
        <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
    </div>
    <div class="Col2G">
        <div class="Col2GLeft">
            <div class="WinRadiusGray">
                <div class="Marginer1">
                    <div class="TabCont">
                        <telerik:RadTabStrip CssClass="TabTitles" Font-Names="Tahoma" ID="tsUser" dir="rtl"
                            runat="server" MultiPageID="RadMultiPage1" SelectedIndex="1" Skin="Vista" skinspath="~/RadControls/TabStrip/Skins">
                            <Tabs>
                                <telerik:RadTab ID="Tab1" runat="server" Font-Names="tahoma" CssClass="TabTitle"
                                    Text="آخرین فعالیتها">
                                </telerik:RadTab>
                                <telerik:RadTab ID="Tab2" runat="server" Font-Names="tahoma" CssClass="TabTitle"
                                    Text="اطلاعات عمومی">
                                </telerik:RadTab>
                                <telerik:RadTab ID="Tab3" runat="server" Font-Names="tahoma" CssClass="TabTitle"
                                    Text="عکسها">
                                </telerik:RadTab>
                            </Tabs>
                        </telerik:RadTabStrip>
                        <div class="cTabWrapper">
                            <telerik:RadMultiPage ID="RadMultiPage1" SelectedIndex="1" runat="server">
                                <telerik:RadPageView ID="PageView1" runat="server">
                                    <div class="Marginer2">
                                        <asp:Repeater runat="server" OnItemCommand="HandleRepeater" ID="rptComments">
                                            <ItemTemplate>
                                                <div class="cOneCommentSmall">
                                                    <div class="CommentsLeftSmall">
                                                        <asp:HyperLink ID="HyperLink1" CssClass="cUserImageSmall" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "UserID")%>'
                                                            ImageUrl='<%#ShowPic("Users",DataBinder.Eval(Container.DataItem, "PicFile"), DataBinder.Eval(Container.DataItem, "HCPicStatusCode"))%>'
                                                            runat="server" />
                                                    </div>
                                                    <div class="CommentsRightSmall">
                                                        <span class="Commenter">
                                                            <asp:ImageButton ID="btnDelComment" CssClass="cDelComment" Visible="<%#ShowDelVisibility() %>"
                                                                ImageUrl="~/images/delete-24x24.gif" CommentID='<%#DataBinder.Eval(Container.DataItem, "ID")%>'
                                                                CommandName="DeleteMainComment" runat="server"></asp:ImageButton>
                                                            <asp:HyperLink ID="HyperLink2" CssClass="Commenter" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "UserID") %>'
                                                                runat="server"><%#DataBinder.Eval(Container.DataItem, "FirstName")%>&nbsp;<%#DataBinder.Eval(Container.DataItem, "LastName")%>:&nbsp;</asp:HyperLink>
                                                        </span>
                                                        <%#DataBinder.Eval(Container.DataItem, "Comment")%><br />
                                                        <span class="DateAgo">
                                                            <%#DateAgo(DataBinder.Eval(Container.DataItem, "ActionDate"))%></span>
                                                    </div>
                                                </div>
                                                <div class="Clear">
                                                </div>
                                                <div class="Line3">
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="PageView2" runat="server">
                                    <div class="Marginer2" style="min-height: 300px;">
                                        <div>
                                            <div class="BlueHeader">
                                                <asp:Label ID="Label14" runat="server" Text="اطلاعات پایه"></asp:Label>
                                            </div>
                                            <asp:Panel ID="pnlSex" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblSex" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label15" runat="server" Text=":جنسیت"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlBirthDate" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblBirthDate" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label16" runat="server" Text=":تاریخ تولد"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <%--<asp:Panel ID="pnlEmail" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="lblEmailLabel" runat="server" Text=":ایمبل"></asp:Label>
                                            </div>
                                        </asp:Panel>--%>
                                            <asp:Panel ID="pnlLocation" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblLocation" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label19" runat="server" Text=":محل"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <div class="BlueHeader">
                                                <asp:Label ID="Label18" runat="server" Text="اطلاعات مکانی"></asp:Label>
                                            </div>
                                            <asp:Panel ID="pnlMaritalStaus" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblMaritalStaus" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label20" runat="server" Text=":وضعیت تاهل"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlEducation" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblEducation" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label22" runat="server" Text=":تحصیلات"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <div class="BlueHeader">
                                                <asp:Label ID="Label21" runat="server" Text="اطلاعات تماس"></asp:Label>
                                            </div>
                                            <asp:Panel ID="pnlMobileNumber" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblMobileNumber" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label25" runat="server" Text=":موبایل"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlTel" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblTel" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label30" runat="server" Text=":تلفن"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <div class="BlueHeader">
                                                <asp:Label ID="Label28" runat="server" Text="اطلاعات دیگر"></asp:Label>
                                            </div>
                                            <asp:Panel ID="pnlHairColor" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblHairColor" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label32" runat="server" Text=":رنگ مو"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlEyeColor" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblEyeColor" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label33" runat="server" Text=":رنگ چشم"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlBodyType" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblBodyType" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label35" runat="server" Text=":نوع جثه"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlKidNo" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblKidNo" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label39" runat="server" Text=":تعداد فرزندان"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlProfession" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblProfession" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label43" runat="server" Text=":حرفه"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlIncome" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblIncome" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label45" runat="server" Text=":درآمد"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlReligion" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblReligion" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label38" runat="server" Text=":مذهب"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlSmoke" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblSmoke" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label42" runat="server" Text=":سیگار"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlHumor" CssClass="Col2Small" runat="server">
                                                <div class="LeftCol">
                                                    <asp:Label ID="lblHumor" runat="server"></asp:Label>
                                                </div>
                                                <div class="RightCol">
                                                    <asp:Label ID="Label46" runat="server" Text=":مشرب"></asp:Label>
                                                </div>
                                            </asp:Panel>
                                        </div>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="PageView3" runat="server">
                                    <div class="Marginer2">
                                        <div class="BlueHeader">
                                            <asp:Label ID="lblAlbumMessageCaption" runat="server"></asp:Label>
                                        </div>
                                        <div>
                                            <asp:DataList runat="server" EnableViewState="false" RepeatDirection="Horizontal"
                                                RepeatColumns="4" ID="rptPhotos">
                                                <ItemTemplate>
                                                    <div>
                                                        <asp:HyperLink ID="hplPhotoCover" AlbumCode='<%#DataBinder.Eval(Container.DataItem, "Code") %>'
                                                            CssClass="cUserImage" NavigateUrl='<%#"http://www.parset.com/Users/UserPhotos.aspx?AlbumID=" + DataBinder.Eval(Container.DataItem, "ID")%>'
                                                            ImageUrl='<%#Tools.ShowPic(DataBinder.Eval(Container.DataItem, "PicFile"), "images/PhotoAlbum.gif", "~/Files/UsersPhotos/")%>'
                                                            runat="server" />
                                                    </div>
                                                    <div>
                                                        <%#DataBinder.Eval(Container.DataItem, "Title") %></div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </telerik:RadPageView>
                            </telerik:RadMultiPage>
                            <div class="Clear">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner1" runat="server" PositionCode="16" />
            </div>
        </div>
        <div class="Col2GRight">
            <div class="WinRadiusGray">
                <UB:UserBar runat="server" ID="UserBar1">
                </UB:UserBar>
            </div>
            
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
