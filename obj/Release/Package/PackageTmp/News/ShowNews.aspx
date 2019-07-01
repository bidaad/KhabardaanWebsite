<%@ Page Title="" Language="C#" MasterPageFile="~/RootCol1.Master" AutoEventWireup="true"
    Inherits="News_ShowNews" CodeBehind="ShowNews.aspx.cs" %>

<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/PageTools.ascx" TagName="PageTools" TagPrefix="UCPageTools" %>
<%@ Register Src="~/UserControls/RelatedNews.ascx" TagName="RelatedNews" TagPrefix="RNews" %>
<%@ Register Src="~/UserControls/KeywordList.ascx" TagName="KeywordList" TagPrefix="KL" %>
<%@ Register Src="~/UserControls/Weather.ascx" TagName="Weather" TagPrefix="Wth" %>
<%@ Register Src="~/UserControls/UCNewsFeedTool.ascx" TagName="UCNewsFeedTool" TagPrefix="UCNewsFeed" %>
<%@ Register Src="~/UserControls/UCMostVisitedContents.ascx" TagName="UCMostVisitedContents" TagPrefix="UCMVC" %>
<%@ Register Src="~/UserControls/UCMostVisitedNews.ascx" TagName="UCMostVisitedNews" TagPrefix="UCMVN" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div>
        <div class="WinRadiusGray">
            <UCBanner:Banner ID="Banner1" runat="server" PositionCode="30" />
        </div>

        <div class="WinRadiusGray">
            <AKP:MsgBox ID="msgText" runat="server" />
            <asp:Panel runat="server" ID="pnlShowNews" CssClass="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">

                        <div class="Clear">
                        </div>
                        <div>
                            <div class="Toolbar">
                                <div>
                                    <UCPageTools:PageTools runat="server" ID="PageTools1"></UCPageTools:PageTools>
                                </div>
                                <div>
                                    <div style="float: left">
                                        <div>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/News" runat="server">   همه خبرها »</asp:HyperLink>
                                            <asp:HyperLink runat="server" Target="_blank" ID="ShareFaceBook" title="ارسال به facebook"
                                                CssClass="Parset_Share_Facebook">
                                            </asp:HyperLink>
                                            <asp:HyperLink runat="server" Target="_blank" ID="ShareTwitter" title="ارسال به twitter"
                                                CssClass="Parset_Share_Twitter">
                                            </asp:HyperLink>
                                            <asp:HyperLink runat="server" Target="_blank" ID="ShareDigg" title="ارسال به digg"
                                                CssClass="Parset_Share_Digg">
                                            </asp:HyperLink>

                                        </div>
                                    </div>
                                    <div style="padding-top: 5px; padding-right: 5px;">
                                        <span id="Span1">تعداد بازدید:</span>
                                        <asp:Label ID="lblViewCount" CssClass="Viewlabel" runat="server">1</asp:Label><span
                                            class="sep">&nbsp;|&nbsp;</span> <span id="Span2">تاريخ انتشار:</span>
                                        <asp:Label ID="lblViewNewsDate" CssClass="Viewlabel" runat="server" />

                                        <span class="sep">&nbsp;|&nbsp;</span>
                                        <span id="lblNewsTime">ساعت انتشار:</span>
                                        <asp:Label runat="server" ID="lblViewNewsTime" CssClass="Viewlabel"></asp:Label>

                                    </div>
                                </div>
                            </div>
                            <div class="ShowItem">
                                <asp:Panel runat="server" EnableViewState="false" ID="pnlPic">

                                    <asp:Image class="thickbox" EnableViewState="false" runat="server" ID="imgPicName" />
                                </asp:Panel>
                                <div class="Title">
                                    <asp:Label ID="lblViewTitle" MaxLength="500" runat="server" />
                                </div>
                                <div class="Content">
                                    <asp:Label ID="lblViewContents" EnableViewState="false" ShowAllText="1" runat="server" />
                                </div>
                                <br />
                                <div>
                                    <KL:KeywordList runat="server" ID="KeywordList1"></KL:KeywordList>
                                </div>
                                <div class="Farsi" style="margin-top: 5px;">

                                    <span>کد خبر:</span>
                                    <asp:Label runat="server" ID="lblViewCode" CssClass="Viewlabel"></asp:Label>
                                    <span class="sep">&nbsp;|&nbsp;</span> <span id="Label2">مشاهده خبر در منبع اصلی:</span>
                                    <asp:HyperLink runat="server" ID="hplViewResourceName" Target="_blank" CssClass="Viewlabel"></asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <div class="ByKhabardaan">
                گردآوری اخبار بوسیله ربات جستجوگر پارست<br />
                <a href="http://www.parset.com/Crawler">راجع به ربات پارست بیشتر بدانید</a>
            </div>
            <div class="Clear">
            </div>
        </div>
        <div class="WinRadiusGray">
            <RNews:RelatedNews ID="RelatedNews1" runat="server">
            </RNews:RelatedNews>
        </div>

        <div class="Box3Toolbar">
            <Tlb:Toolbar ID="tlb1" runat="server" />
        </div>
        
            <div class="row">
                <div>
                    <div class="col-md-6">
                        <UCMVC:UCMostVisitedContents runat="server" />
                    </div>

                </div>
                <div>
                    <div class="col-md-6">
                        <UCMVN:UCMostVisitedNews runat="server" />
                    </div>

                </div>


            </div>
        

    </div>

</asp:Content>
