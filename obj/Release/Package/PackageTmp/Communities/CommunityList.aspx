<%@ Page Title="" Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Communities_CommunityList" Codebehind="CommunityList.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/MessageBox.ascx" TagName="MessageBox" TagPrefix="Msg" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Col2">
        <div class="Col2Left">
            <div class="UserHead1">
                <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
            </div>
            <div class="Box1">
                <div class="Box1Header">
                    <asp:Label ID="Label12" runat="server" Text="گروه ها"></asp:Label></div>
                <div class="RegMessage">
                    <AKP:MsgBox runat="server" ID="msg" />
                </div>
                <div>
                    <table>
                        <tr>
                            <td>
                                 <div style="direction: rtl; height: 25px; width: 100%;padding-right:5px;">
                                    <asp:Label ID="Label2" runat="server" Text="جستجوی گروه ها"></asp:Label></div>
                                <div>
                                    <asp:TextBox ID="txtGroupKeyword" Width="360" runat="server"></asp:TextBox>
                                </div>
                                <div class="RightButtons">
                                    <asp:LinkButton ID="btnSearchGroups" Text="Search" CssClass="button1" runat="server"
                                        OnClick="btnSearchGroups_Click"></asp:LinkButton>
                                </div>
                                <div class="Clear">
                                </div>
                            </td>
                            <td style="vertical-align: top; text-align: center">
                                <div>
                                    <asp:Label ID="lblAlbumMessageCaption" runat="server"></asp:Label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="Clear">
                </div>
                <div class="RightAlign2">
                    <asp:HyperLink ID="hplManageCommunities" NavigateUrl="~/Communities/ManageMyCommunities.aspx"
                        runat="server"></asp:HyperLink>
                </div>
                <div class="Clear">
                </div>
                <div>
                    <fieldset>
                       <legend>&nbsp;گروه دلخواه خود را با استفاده از اولین حرف الفبا پیدا کنید&nbsp;</legend>
                        <div class="AlphabetPagerContainer">
                            <div class="Alphabetpager">
                                <ul>
                                    <asp:Repeater ID="rptAlphabet" EnableViewState="false" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"http://www.parset.com/Communities/CommunityList.aspx?FirstChar=" + DataBinder.Eval(Container.DataItem, "Char")  %>'
                                                    runat="server"><%#DataBinder.Eval(Container.DataItem, "Char") %></asp:HyperLink></li></ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="Clear">
                </div>
            </div>
            <div class="BlueHeader">
                <asp:Label ID="lblCaption" Text="شما عضو این گروه ها هستید" runat="server"></asp:Label>
            </div>
            <div>
                <asp:Repeater runat="server" EnableViewState="false" ID="rptCommunities">
                    <ItemTemplate>
                        <div class="Col2D">
                            <div class="Col2DLeft">
                                <asp:HyperLink ID="hplPhotoCover" CommunityCode='<%#DataBinder.Eval(Container.DataItem, "Code") %>'
                                    CssClass="cUserImage" NavigateUrl='<%#"http://www.parset.com/Communities/CommunityDetail.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                    ImageUrl='<%#Tools.ShowPic(DataBinder.Eval(Container.DataItem, "PicFile"), "images/SampleCommunity.jpg", "~/Files/CommunityPhotos/")%>'
                                    runat="server" />
                            </div>
                            <div class="Col2DRight">
                                <div style="padding: 5px;">
                                    <asp:HyperLink ID="hplTitle" Font-Bold="true" NavigateUrl='<%#"http://www.parset.com/Communities/CommunityDetail.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                        Text='<%#DataBinder.Eval(Container.DataItem, "Title") %>' runat="server"></asp:HyperLink>&nbsp;
                                    <%#DataBinder.Eval(Container.DataItem, "Description") %>
                                </div>
                            </div>
                        </div>
                        <div class="Line3">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div>
                <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
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
