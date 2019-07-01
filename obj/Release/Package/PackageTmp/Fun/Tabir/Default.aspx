<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="True" Inherits="Fun_Tabir_Default"
    Title="تعبیر خواب" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/TextLinks.ascx" TagName="TextLinks" TagPrefix="UCTextLinks" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/UCRandWallpaper.ascx" TagName="UCRandWallpaper" TagPrefix="UCRW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">

        <div class="form-inline">

            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در تعابیر " runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
            </div>

        </div>

    </div>

    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="تعبیر خواب"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div>
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">

                    <div class="Box3">
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="تعبیر خواب"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="MainHeader">
                            با کلیک بر روی حروف الفبا به تعبیر خواب خود دسترسی پیدا کنید.
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: right">
                            <div class="AlphabetBig">
                                <asp:Repeater EnableViewState="false" runat="server" ID="rptAlaphabet">
                                    <HeaderTemplate>
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <asp:HyperLink ID="hplNum" NavigateUrl='<%# "~/Fun/Tabir/ShowNames/?FirstChar=" + Server.UrlEncode(Container.DataItem.ToString()) %>' runat="server">تعبیر خواب <%#Container.DataItem %></asp:HyperLink></li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                        <div class="Clear">
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                </div>
            </div>
            <div class="Clear">
            </div>

            <div class="Clear">
            </div>
        </div>
    </div>
    <div class="WinRadiusGray">
        <div class="button">
            <asp:HyperLink NavigateUrl="~/Codes/TabirKhaab.aspx" runat="server">کدهای تعبیر خواب برای سایت یا وبلاگ شما</asp:HyperLink>
        </div>
    </div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner1" PositionCode="16" runat="server" />
    </div>

    <div class="WinRadiusGray">
        <UCRW:UCRandWallpaper ID="UCRandWallpaper1" runat="server" />
    </div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner2" PositionCode="11" runat="server" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
