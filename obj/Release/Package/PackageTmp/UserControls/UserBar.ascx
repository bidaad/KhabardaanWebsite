<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/AddFreind.ascx" TagName="AddFriend" TagPrefix="FTL" %>
<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_UserBar" CodeBehind="UserBar.ascx.cs" %>
<div class="Box10">
    <div class="panel success">
        <div class="heading">
            <asp:Label ID="lblUserFullName" runat="server"></asp:Label>
        </div>
        <div class="Clear">
        </div>
        <div class="UserProfileCol content">
            <div class="Marginer1">
                <div class="cUserImageMedCont">
                    <asp:Image ID="imgUserPhoto" BorderWidth="1" ImageUrl="~/Files/Users/man_icon.gif"
                        CssClass="cUserImageMed" runat="server" />
                </div>
            </div>
            <div class="Clear">
            </div>
            <%--        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>
            <FTL:AddFriend runat="server" Visible="false" ID="AddFriend"></FTL:AddFriend>
            <FTL:SendMessage runat="server" Visible="false" ID="SendMessage"></FTL:SendMessage>
            <asp:Panel runat="server" ID="pnlUserAddTools" class="AddToolsProfile">
                <asp:Panel ID="pnlAddFriend" runat="server" CssClass="AddToFriends">
                    <asp:LinkButton ID="btnAddFriend" OnClick="btnAddFriend_Click" runat="server">اضافه کردن به دوستان</asp:LinkButton>
                </asp:Panel>
                <div class="SendMessage">
                    <asp:LinkButton ID="btnSendMessage" OnClick="btnSendMessage_Click" runat="server">ارسال پیام</asp:LinkButton>
                </div>
                <div class="circle-friends">
                    <asp:LinkButton ID="btnViewFriends" OnClick="btnViewFriends_Click" runat="server">مشاهده دوستان</asp:LinkButton>
                </div>
            </asp:Panel>
            <%-- </ContentTemplate>
        </asp:UpdatePanel>--%>
        </div>
    </div>
    <div class="panel">
        <div class="heading">
            <asp:Label ID="Label3" runat="server" Text="اطلاعات"></asp:Label>
        </div>
        <div class="content">
            <div class="UserInfo">
                <div>
                    <asp:Label ID="lblLocationLabel" Font-Bold="true" runat="server" Text="مکان:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblUserLocation" CssClass="NormalText" runat="server"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblBirthdateLabel" Font-Bold="true" runat="server" Text="تاریخ تولد:"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblBirthdate" CssClass="NormalText" runat="server"></asp:Label>
                </div>
            </div>
            <div class="Clear"></div>
            <asp:Panel ID="pnlMutualFriends" CssClass="MutualFriends" runat="server">
                <div class="InnerHeader1">
                    <asp:Label ID="Label5" runat="server" Text="دوستان مشترک"></asp:Label>
                </div>
                <div class="Marginer1">
                    <div class="row">
                        <div class="col-md-9">
                            <asp:Label ID="lblCommonFriends" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-3 nowrap">
                            <asp:HyperLink ID="hplAllMutual" runat="server">بیشتر » </asp:HyperLink>
                        </div>
                    </div>
                    <div class="Line2">
                        <hr />
                    </div>
                    <div class="Clear">
                    </div>
                    <div>
                        <asp:Repeater ID="rptMutualFriends" EnableViewState="false" runat="server">
                            <ItemTemplate>
                                <div class="UserData">
                                    <div class="UserDataLeft">
                                        <asp:HyperLink ID="hplUserImage" BorderColor="Black" BorderWidth="1" CssClass="cUserImageSmall"
                                            NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID")%>'
                                            ImageUrl='<%#ShowPic("Users", DataBinder.Eval(Container.DataItem, "SmallPicFile"), DataBinder.Eval(Container.DataItem, "HCPicStatusCode"))%>'
                                            runat="server" />
                                    </div>
                                    <div class="UserDataRight">
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID")%>'>
                                   <%#DataBinder.Eval(Container.DataItem, "FirstName")%>&nbsp;<%#DataBinder.Eval(Container.DataItem, "LastName")%></asp:HyperLink>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </asp:Panel>
            <div class="Clear"></div>
            <asp:Panel ID="pnlFriends" runat="server">
                <div class="InnerHeader1">
                    <asp:Label ID="Label6" runat="server" Text="دوستان"></asp:Label>
                </div>
                <div class="Marginer1">
                    <div class="row">
                        <div class="col-md-9">
                            <asp:Label ID="lblFriendCount" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-3 nowrap">
                            <asp:HyperLink ID="hplFriends" runat="server">بیشتر » </asp:HyperLink>
                        </div>
                    </div>

                    <div class="Line2">
                        <hr />
                    </div>
                    <div>
                        <asp:Repeater ID="rptFriends" EnableViewState="false" runat="server">
                                <HeaderTemplate>
                                    <ul class="SmallFriendList">
                                </HeaderTemplate>
                            <ItemTemplate>
                                    <li>
                                        <div class="UserData">
                                    <div class="UserDataLeft">
                                        <asp:HyperLink ID="hplUserImage" BorderColor="Black" BorderWidth="1" CssClass="cUserImageSmall"
                                            NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                            ImageUrl='<%#ShowPic("Users",DataBinder.Eval(Container.DataItem, "SmallPicFile"), DataBinder.Eval(Container.DataItem, "HCPicStatusCode"))%>'
                                            runat="server" />
                                    </div>
                                    <div class="UserDataRight">
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'>
                                   <%#DataBinder.Eval(Container.DataItem, "FirstName")%>&nbsp;<%#DataBinder.Eval(Container.DataItem, "LastName")%></asp:HyperLink>
                                    </div>
                                    </li>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="Clear"></div>
                </div>
            </asp:Panel>
            <div class="Clear"></div>
            <asp:Panel ID="pnlCommunities" runat="server">
                <div class="InnerHeader1">
                    <asp:Label ID="Label1" runat="server" Text="گروه ها"></asp:Label>
                </div>
                <div class="Marginer1">
                    <div class="row">
                        <div class="col-md-9">
                            <asp:Label ID="lblCommunityCount" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-3 nowrap">
                            <asp:HyperLink ID="hplCommunities" runat="server">بیشتر » </asp:HyperLink>
                        </div>
                    </div>

                    <div class="Line2">
                        <hr />
                    </div>
                    <div>
                        <asp:Repeater ID="rptCommunities" EnableViewState="false" runat="server">
                            <ItemTemplate>
                                <div class="UserData">
                                    <div class="UserDataLeft">
                                        <asp:HyperLink ID="hplUserImage" BorderColor="Black" BorderWidth="1" CssClass="cUserImageSmall"
                                            NavigateUrl='<%#"http://www.parset.com/Communities/CommunityDetail.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                            ImageUrl='<%#ShowPic("CommunityPhotos",DataBinder.Eval(Container.DataItem, "PicFile"), DataBinder.Eval(Container.DataItem, "HCPicStatusCode"))%>'
                                            runat="server" />
                                    </div>
                                    <div class="UserDataRight">
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"http://www.parset.com//Communities/CommunityDetail.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'>
                                                <%#DataBinder.Eval(Container.DataItem, "Title")%>&nbsp;</asp:HyperLink>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </asp:Panel>
            <div class="Clear"></div>
            <asp:Panel ID="pnlPhotos" CssClass="UserBarPhotos" runat="server">
                <div class="InnerHeader1">
                    <asp:Label ID="Label7" runat="server" Text="عکسها"></asp:Label>
                </div>
                <div class="Marginer1">
                    <div class="row">
                        <div class="col-md-9">
                            <asp:Label ID="lblAlbumCount" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-3 nowrap">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Users/Albums.aspx" runat="server">بیشتر »</asp:HyperLink>
                        </div>
                    </div>

                    <div class="Line2">
                        <hr />
                    </div>
                    <div>
                        <asp:Repeater ID="rptUserAlbums" EnableViewState="false" runat="server">
                            <HeaderTemplate>
                                <table>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="hplUserImage" CssClass="cUserImageSmall" NavigateUrl='<%#"http://www.parset.com/Users/UserPhotos.aspx?AlbumID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                            ImageUrl='<%#Tools.ShowPic(DataBinder.Eval(Container.DataItem, "PicFile"), "images/PhotoAlbum.gif", "~/Files/UsersPhotos/")%>'
                                            runat="server" />
                                    </td>
                                    <td>
                                        <%#DataBinder.Eval(Container.DataItem, "Title")%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </asp:Panel>
            <div class="Clear"></div>
            <asp:Panel ID="pnlLinks" CssClass="UserBarLinks" runat="server">
                <div class="InnerHeader1">
                    <asp:Label ID="Label8" runat="server" Text="لینکهای"></asp:Label>
                </div>
                <div class="Marginer1">
                    <div>
                        <table style="width: 100%">
                            <tr>
                                <td class="Farsi">
                                    <asp:Label ID="lblLinkCount" runat="server"></asp:Label>
                                </td>
                                <td style="text-align: right">
                                    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Users/Albums.aspx" runat="server">مشاهده همه موارد</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="Line2">
                        <hr />
                    </div>
                    <div>
                        <asp:Repeater ID="rptUserLinks" EnableViewState="false" runat="server">
                            <ItemTemplate>
                                <div>
                                    <asp:HyperLink ID="HyperLink4" NavigateUrl='<%#"http://www.parset.com/Users/Links.aspx?Code=" + DataBinder.Eval(Container.DataItem, "Code") %>'
                                        runat="server">
                                            <%#DataBinder.Eval(Container.DataItem, "Title")%>
                                    </asp:HyperLink>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
</div>
<asp:HiddenField ID="hfUserCode" runat="server" />
