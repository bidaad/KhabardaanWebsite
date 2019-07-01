<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Fun_Names_Default"
    Title="نامهای ایرانی" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/UCRandWallpaper.ascx" TagName="UCRandWallpaper" TagPrefix="UCRW" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">
        <div class="form-inline">
            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در نامها: " runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
            </div>
        </div>
    </div>
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="نامها"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>


        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">
                        <div class="MainHeader">
                            در اين بخش بيش از 3600 نام از ريشه های فارسی ، عربی ، ترکی و عبری وجود دارد که میتوانيد
                        با جستحو بر روی آنها يا انتخاب حرف اول به آنها دسترسی پيدا کنيد
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="نامهای ایرانی"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: right">
                            <div class="Alphabet">
                                <asp:Repeater EnableViewState="false" runat="server" ID="rptAlaphabet">
                                    <HeaderTemplate>
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <asp:HyperLink ID="hplNum" NavigateUrl='<%# "~/Fun/Names/ShowNames/?FirstChar=" + Server.UrlEncode(Container.DataItem.ToString()) %>'
                                                runat="server"><%#Container.DataItem %>
                                            </asp:HyperLink>
                                        </li>
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
                </div>
            </div>

        </div>
    </div>
    <div class="WinRadiusGray">
        <UCRW:UCRandWallpaper ID="UCRandWallpaper1" runat="server" />
    </div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner1" PositionCode="11" runat="server" />
    </div>

    <div class="Clear">
    </div>
</asp:Content>
