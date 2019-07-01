<%@ Page Title="" Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true" Inherits="Ads_AdsByCatCode" Codebehind="AdsByCatCode.aspx.cs" %>


<%@ Register Src="~/UserControls/AdsList.ascx" TagName="AdsList" TagPrefix="UCAdsList" %>
<%@ Register Src="~/UserControls/ColAds.ascx" TagName="ColAds" TagPrefix="UCColAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="row">
        <div class="col-md-3">
            <div class="WinRadiusGray">
                <UCColAds:ColAds runat="server" ID="LatestAds" />
            </div>
        </div>
        <div class="col-md-9">
            <div class="WinRadiusGray Orange">
                <ul class="AdsCats">
                    <li>
                        <asp:HyperLink ID="HyperLink14" NavigateUrl="~/Ads" runat="server">آگهی ها</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink15" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=1" runat="server">کامپیوتر</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink16" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=2" runat="server">آموزش</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink17" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=3" runat="server"> املاک</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink18" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=4" runat="server">اتوموبیل </asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink19" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=5" runat="server">لوازم</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink20" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=6" runat="server">خدمات</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink21" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=7" runat="server">بازار کار</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink26" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=11" runat="server">صنعت‌</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink24" NavigateUrl="~/Ads/AdsByCatCode.aspx?Code=9" runat="server">ارتباط‌</asp:HyperLink></li>
                </ul>
                <div class="Clear">
                </div>
            </div>
            <div class="GreenHeader">
                        <h3>
                            <asp:Label ID="lblHeader" Text="آگهی های گروهی " runat="server"></asp:Label>
                        </h3>
                    </div>
            <div class="WinRadiusGray">
                <UCAdsList:AdsList runat="server" ID="AdsList1" />
            </div>
        </div>
        
    </div>

</asp:Content>
