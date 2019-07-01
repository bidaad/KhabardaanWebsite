<%@ Page Title="" Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true"
    Inherits="News_RelatedNews" CodeBehind="RelatedNews.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>
<%@ Register Src="~/UserControls/UCVisaCard.ascx" TagName="VisaCard" TagPrefix="UCV" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/PageTools.ascx" TagName="PageTools" TagPrefix="UCPageTools" %>
<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/UCNewsFeedTool.ascx" TagName="UCNewsFeedTool" TagPrefix="UCNewsFeed" %>
<%@ Register Src="~/UserControls/UCNewsCats.ascx" TagName="UCNewsCats" TagPrefix="UCNCats" %>
<%@ Register Src="~/UserControls/Resources.ascx" TagName="Resources" TagPrefix="UCResources" %>
<%@ Register Src="~/UserControls/UCRandSmallContent.ascx" TagName="UCRandSmallContent"
    TagPrefix="UCRSC" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <UCNCats:UCNewsCats ID="UCNewsCats1" runat="server"></UCNCats:UCNewsCats>
    <div class="NewsCols">
        <div class="NewsColsLeft">
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner2" runat="server" PositionCode="7" />
            </div>
            <div class="WinRadiusGray">
                <UCRSC:UCRandSmallContent ID="UCRandSmallContent1" runat="server" />
            </div>
        </div>
        <div class="NewsColsRight">
            <div class="ActualMidCol">
                <div class="WinRadiusGray">
                    <AKP:MsgBox ID="msgText" runat="server" />
                    <div>
                        <h3>
                        <asp:literal ID="lblHeader"  runat="server" Text="اخبار مرتبط"></asp:literal>
                            </h3>
                    </div>
                    <div class="Clear"></div>
                    <div class="Padder1">
                        <div class="Pan1">
                            <div class="ct">
                                <p>
                                </p>
                            </div>
                            <p>
                            </p>
                            <div class="head">
                                <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink></div>
                            <div class="cn">
                                <div class="cMainNews">
                                    <div>
                                        <asp:Image ID="imgPic" runat="server" />
                                    </div>
                                    <div class="cBullet">
                                    </div>
                                    <asp:HyperLink ID="hplTitle" runat="server" Target="_blank" CssClass="cTitle"></asp:HyperLink>&nbsp;
                                    <asp:Label ID="lblContents" runat="server"></asp:Label>
                                    <span class="cResource">
                                        <asp:HyperLink ID="hplResource" runat="server"></asp:HyperLink></span> <span class="cDate">
                                            <asp:Label ID="lblDate" runat="server"></asp:Label></span><br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <NL:NewsList runat="server" PageSize="30" ID="NewsList1">
                        </NL:NewsList>
                    </div>
                    <div class="ByKhabardaan">
                        گردآوری اخبار بوسیله ربات جستجوگر <a href="http://www.khabardaan.com" target="_blank">
                            پارست</a>
                    </div>
                    <div class="Box3Toolbar">
                        <Tlb:Toolbar ID="tlb1" runat="server" />
                    </div>
                </div>
            </div>
            <div class="ActualRightCol">
                <div class="WinRadiusGray">
                    <UCNewsFeed:UCNewsFeedTool ID="UCNewsFeedTool1" runat="server" />
                </div>
                <div class="WinRadiusGray">
                    <UCResources:Resources runat="server" ID="Resources"></UCResources:Resources>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
