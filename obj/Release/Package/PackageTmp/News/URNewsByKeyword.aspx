<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootNoCol.master" CodeBehind="URNewsByKeyword.aspx.cs" Inherits="Parset.News.URNewsByKeyword" %>

<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/Resources.ascx" TagName="Resources" TagPrefix="UCResources" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/UCTextADS.ascx" TagName="UCTextADS" TagPrefix="TADS" %>
<%@ Register Src="~/UserControls/SmallAdsList.ascx" TagName="SmallAdsList" TagPrefix="UCSmallAdsList" %>
<%@ Register Src="~/UserControls/RelatedNews.ascx" TagName="RelatedNews" TagPrefix="RNews" %>
<%@ Register Src="~/UserControls/RandPicGallery.ascx" TagName="UCRandGalPic" TagPrefix="GAL" %>
<%@ Register Src="~/UserControls/UCNewsFeedTool.ascx" TagName="UCNewsFeedTool" TagPrefix="UCNewsFeed" %>
<%@ Register Src="~/UserControls/UCNewsCats.ascx" TagName="UCNewsCats" TagPrefix="UCNCats" %>
<%@ Register Src="~/UserControls/UCNewsTicker.ascx" TagName="UCNewsTicker" TagPrefix="UCNT" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<%@ Register Src="~/UserControls/UCRandSmallContent.ascx" TagName="UCRandSmallContent"
    TagPrefix="UCRSC" %>
<%@ Register Src="~/UserControls/UCMostVisitedNews.ascx" TagName="UCMostVisitedNews" TagPrefix="UCMVN" %>
<%@ Register Src="~/UserControls/UCRandWallpaper.ascx" TagName="UCRandWallpaper" TagPrefix="UCRW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <UCNCats:UCNewsCats ID="UCNewsCats1" runat="server"></UCNCats:UCNewsCats>
    <div class="WinRadiusGray">
        <div class="InnerBarWrap">
            <UCNT:UCNewsTicker runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-4">
                    <div class="WinRadiusGray">
                        <MNU:Menu runat="server" />
                    </div>
                    <div class="WinRadiusGray">
                        <UCMVN:UCMostVisitedNews runat="server" />
                    </div>
                    <div class="WinRadiusGray">
                        <UCResources:Resources runat="server" ID="Resources"></UCResources:Resources>
                    </div>
                    <div class="WinRadiusGray">
                        <UCNewsFeed:UCNewsFeedTool ID="UCNewsFeedTool1" runat="server" />
                    </div>

                </div>
                <div class="col-md-8">



                    <div class="panel">

                        <div class="heading">

                            <asp:Literal ID="lblTitle" runat="server"></asp:Literal>
                        </div>
                        <div class="Clear">
                        </div>
                        <div>
                            <NL:NewsList runat="server" PageSize="30" ID="NewsList1">
                            </NL:NewsList>
                        </div>
                        <div class="Tags">
                            <asp:DataList ID="dtlOtherKeywords" CssClass="tblTags" RepeatColumns="4" runat="server">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/NK" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Name")) + ".html"%>' runat="server"><%#Eval("Name") %></asp:HyperLink>
                                </ItemTemplate>

                            </asp:DataList>

                        </div>
                        <div class="ByKhabardaan">
                            گردآوری اخبار بوسیله ربات جستجوگر <a href="http://www.parset.com" target="_blank">پارست</a>
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>

                    </div>

                    <div class="WinRadiusGray">
                        <RNews:RelatedNews ID="RelatedNews1" runat="server">
                        </RNews:RelatedNews>
                    </div>

                    
                    
                        <UCSmallAdsList:SmallAdsList runat="server" ID="SmallAdsList1" />
                    
                </div>

            </div>
        </div>
        <div class="col-md-2">
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner1" runat="server" PositionCode="7" />
            </div>
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner2" runat="server" PositionCode="8" />
            </div>
            <div class="WinRadiusGray">
                <UCRSC:UCRandSmallContent runat="server" />
            </div>
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner3" runat="server" PositionCode="9" />
            </div>
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner4" runat="server" PositionCode="10" />
            </div>
        </div>

    </div>
</asp:Content>
