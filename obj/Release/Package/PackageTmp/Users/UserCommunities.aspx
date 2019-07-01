<%@ Page Title="" Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Users_UserCommunities" Codebehind="UserCommunities.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/UserBar.ascx" TagName="UserBar" TagPrefix="UB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Col2G">
        <div class="Col2GLeft">
            <div style="width: 690px;">
                <div class="BlueHeader">
                    <asp:Label ID="Label14" runat="server" Text="گروه های که این کاربر در آنها عضو است"></asp:Label>
                </div>
                <asp:Repeater runat="server" EnableViewState="false" ID="rptCommunities">
                    <ItemTemplate>
                        <div class="Col2I">
                            <div class="Col2ILeft">
                                <asp:HyperLink ID="HyperLink1" BorderColor="Black" BorderWidth="1" CssClass="cUserImageSmall"
                                    NavigateUrl='<%#"http://www.parset.com/Communities/CommunityDetail.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                    ImageUrl='<%#ShowPic("CommunityPhotos",DataBinder.Eval(Container.DataItem, "PicFile"))%>'
                                    runat="server" />
                            </div>
                            <div class="Col2IRight">
                                <span class="Commenter">&nbsp;
                                    <asp:HyperLink ID="HyperLink5" CssClass="Commenter" NavigateUrl='<%#"http://www.parset.com/Communities/CommunityDetail.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                        runat="server"><%#DataBinder.Eval(Container.DataItem, "Title")%>&nbsp;</asp:HyperLink>
                                </span>
                            </div>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="Line3">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="Col2GRight">
            <UB:UserBar runat="server" ID="UserBar1"></UB:UserBar>
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
