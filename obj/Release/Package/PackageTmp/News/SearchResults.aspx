<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootNoCol.master"
    CodeBehind="SearchResults.aspx.cs" Inherits="Parset.News.SearchResults" %>

<%@ Register Src="~/UserControls/TextNewsList.ascx" TagName="TextNewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/Resources.ascx" TagName="Resources" TagPrefix="UCResources" %>
<%@ Register Src="~/UserControls/UCNewsCats.ascx" TagName="UCNewsCats" TagPrefix="UCNCats" %>
<%@ Register Src="~/UserControls/UCNewsFeedTool.ascx" TagName="UCNewsFeedTool" TagPrefix="UCNewsFeed" %>
<%@ Register Src="~/UserControls/UCNewsTicker.ascx" TagName="UCNewsTicker" TagPrefix="UCNT" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<%@ Register Src="~/UserControls/UCRandSmallContent.ascx" TagName="UCRandSmallContent"
    TagPrefix="UCRSC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <UCNCats:UCNewsCats ID="UCNewsCats1" runat="server"></UCNCats:UCNewsCats>
    <div class="WinRadiusGray">
        <UCNT:UCNewsTicker ID="UCNewsTicker1" runat="server" />
    </div>
    <div class="row">
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-4">
                <div class="WinRadiusGray">
                        <MNU:Menu runat="server" />
                    </div>
                <div class="WinRadiusGray">
                    <NL:TextNewsList runat="server" PageSize="50" NewsType="MostVisited" ID="tnMostVisited">
                    </NL:TextNewsList>
                </div>
                <div class="WinRadiusGray">
                    <UCNewsFeed:UCNewsFeedTool ID="UCNewsFeedTool1" runat="server" />
                </div>
                <div class="WinRadiusGray">
                    <UCResources:Resources runat="server" ID="Resources"></UCResources:Resources>
                </div>
            </div>
            <div class="col-md-8">
                <div class="WinRadiusGray">
                    <NL:NewsList runat="server" PageSize="10" ID="NewsList1">
                    </NL:NewsList>
                    <div class="MoreLeft">
                        <asp:HyperLink ID="HyperLink4" NavigateUrl="~/News/AllNews.aspx" Target="_blank"
                            runat="server">آرشیو »</asp:HyperLink>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
            
                </div>
        </div>
        <div class="col-md-2">
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner1" runat="server" PositionCode="7" />
            </div>
            <div class="WinRadiusGray">
                <UCRSC:UCRandSmallContent runat="server" />
            </div>
        </div>
        
    </div>
</asp:Content>
