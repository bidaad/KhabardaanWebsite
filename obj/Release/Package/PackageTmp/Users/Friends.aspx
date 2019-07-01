<%@ Page Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true"
    Inherits="Users_Friends" Title="User Friends" CodeBehind="Friends.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/AddFreind.ascx" TagName="AddFriend" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/UserList.ascx" TagName="UserList" TagPrefix="ULST" %>
<%@ Register Src="~/UserControls/InviteByEmail.ascx" TagName="InviteByEmail" TagPrefix="INV" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="WinRadiusGray">
        <div class="UserHead1">
            <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
        </div>
    </div>
    <div class="Col2A">
        <div class="Col2ALeft">
            <div class="WinRadiusGray">

                <asp:Panel runat="server" ID="pnlFriendTools" class="panel">
                    <div class="heading">
                        <AKP:MsgBox runat="server" ID="msg" />
                    </div>
                    <div>
                        <INV:InviteByEmail runat="server" ID="InviteByEmail1"></INV:InviteByEmail>
                        <br />
                        <fieldset style="direction: rtl;">
                            <legend>&nbsp;یافتن دوست</legend>
                            <div class="cFriendSuggest1">
                                <table>
                                    <tr>
                                        <td style="width: 50px;">
                                            <asp:Label ID="Label2" runat="server" Text="نام:"></asp:Label>
                                        </td>
                                        <td>
                                            <telerik:RadComboBox ID="cboUserList" runat="server" Font-Names="Tahoma" AllowCustomText="False"
                                                ShowToggleImage="True" CssClass="cFriendSuggest" ShowMoreResultsBox="true" EnableLoadOnDemand="True"
                                                MarkFirstMatch="True" OnItemsRequested="cboFriendList_ItemsRequested" EnableVirtualScrolling="true">
                                            </telerik:RadComboBox>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="btnAddAsFriend" OnClick="btnAddAsFriend_Click" CssClass="button3"
                                                runat="server">اضافه به دوستان</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </fieldset>
                        <div class="Clear">
                        </div>
                        <br />
                    </div>
                </asp:Panel>
            </div>
            <div class="WinRadiusGray">
                <div class="Box5Inside">
                    <ULST:UserList runat="server" ID="UserList1" />
                </div>
            </div>
        </div>
        <div class="Col2ARight">
            <div class="WinRadiusGray">
                <div class="panel">
                    <div class="heading success">
                        <asp:Label ID="lblUserFullName" runat="server"></asp:Label>
                    </div>
                    <div class="UserProfileCol">
                        <div class="Marginer1">
                            <div class="cUserImageMedCont">
                                <asp:Image ID="imgUserPhoto" BorderWidth="1" ImageUrl="~/Files/Users/man_icon.gif"
                                    CssClass="cUserImageMed" runat="server" />
                            </div>
                        </div>
                        <div class="Clear">
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <FTL:AddFriend runat="server" Visible="false" ID="AddFriend"></FTL:AddFriend>
                                <FTL:SendMessage runat="server" Visible="false" ID="SendMessage"></FTL:SendMessage>
                                <asp:Panel runat="server" ID="pnlUserAddTools" class="AddToolsProfile">
                                    <div>
                                        <asp:LinkButton ID="btnAddFriend" OnClick="btnAddFriend_Click" runat="server">اضافه کردن به دوستان</asp:LinkButton>
                                    </div>
                                    <div>
                                        <asp:LinkButton ID="btnSendMessage" OnClick="btnSendMessage_Click" runat="server">ارسال پیام</asp:LinkButton>
                                    </div>
                                    <div>
                                        <asp:LinkButton ID="btnViewFriends" OnClick="btnViewFriends_Click" runat="server">مشاهده دوستان</asp:LinkButton>
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="InnerHeader1">
                        <asp:Label ID="Label3" runat="server" Text="اطلاعات"></asp:Label>
                    </div>
                    <div class="UserInfo">
                        <div><asp:Label ID="lblLocationLabel" Font-Bold="true" runat="server" Text="Location:"></asp:Label></div>
                        <div><asp:Label ID="lblUserLocation" CssClass="NormalText" runat="server"></asp:Label></div>
                        <div><asp:Label ID="lblBirthdateLabel" Font-Bold="true" runat="server" Text="تاریخ تولد:"></asp:Label></div>
                        <div><asp:Label ID="lblBirthdate" CssClass="NormalText" runat="server"></asp:Label></div>
                    </div>
                    <asp:Panel ID="pnlMutualFriends" runat="server">
                        <div class="InnerHeader1">
                            <asp:Label ID="Label5" runat="server" Text="دوستان مشترک"></asp:Label>
                        </div>
                        <div class="Marginer1">
                            <div>
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCommonFriends" runat="server"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:HyperLink ID="hplAllMutual" runat="server">مشاهده همه</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
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
                                                <asp:HyperLink ID="hplUserImage" BorderWidth="1" BorderColor="Black" CssClass="cUserImageSmall"
                                                    NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                                    ImageUrl='<%#ShowPic(DataBinder.Eval(Container.DataItem, "SmallPicFile"))%>'
                                                    runat="server" />
                                            </div>
                                            <div class="UserDataRight">
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'>
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
                    <asp:Panel ID="pnlPhotos" runat="server">
                        <div class="InnerHeader1">
                            <asp:Label ID="Label7" runat="server" Text="عکسها"></asp:Label>
                        </div>
                        <div class="Marginer1">
                            <div>
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAlbumCount" runat="server"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Users/Albums.aspx" runat="server">مشاهده همه</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
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
                    <asp:Panel ID="pnlLinks" runat="server">
                        <div class="InnerHeader1">
                            <asp:Label ID="Label8" runat="server" Text="Links"></asp:Label>
                        </div>
                        <div class="Marginer1">
                            <div>
                                <table style="width: 100%">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblLinkCount" runat="server"></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Users/Albums.aspx" runat="server">مشاهده همه</asp:HyperLink>
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
    </div>
    <div class="Clear">
    </div>
    <asp:HiddenField ID="hfUserCode" runat="server" />
</asp:Content>
