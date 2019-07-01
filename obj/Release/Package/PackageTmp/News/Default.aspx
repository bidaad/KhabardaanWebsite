<%@ Page Language="C#" MasterPageFile="~/RootNoCol.master" Title="جستجوگر هوشمند خبری پارست"
    AutoEventWireup="true" Inherits="News_Default" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/TextNewsList.ascx" TagName="TextNewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/Resources.ascx" TagName="Resources" TagPrefix="UCResources" %>
<%@ Register Src="~/UserControls/UCNewsCats.ascx" TagName="UCNewsCats" TagPrefix="UCNCats" %>
<%@ Register Src="~/UserControls/UCNewsFeedTool.ascx" TagName="UCNewsFeedTool" TagPrefix="UCNewsFeed" %>
<%@ Register Src="~/UserControls/UCNewsTicker.ascx" TagName="UCNewsTicker" TagPrefix="UCNT" %>
<%@ Register Src="~/UserControls/UCRandSmallContent.ascx" TagName="UCRandSmallContent"
    TagPrefix="UCRSC" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<%@ Register Src="~/UserControls/UCMostVisitedNews.ascx" TagName="UCMostVisitedNews" TagPrefix="UCMVN" %>


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
                        <UCNewsFeed:UCNewsFeedTool runat="server" />
                    </div>
                    
                        <UCResources:Resources runat="server" ID="Resources"></UCResources:Resources>
                    
                </div>
                <div class="col-md-8">
                    <div class="WinRadiusGray Padder5">
                        <div class="row">

                            <div class="col-md-5">
                                <div class="ContentHeadImg">
                                    <asp:HyperLink ID="hplTopNews" runat="server">
                                        <asp:Image BorderWidth="1" ID="ImgTopNews" CssClass="TopPic" runat="server" />
                                    </asp:HyperLink>
                                </div>
                                <div class="Farsi Padder5">
                                    <asp:HyperLink ID="hplTopNewsTitle" Target="_blank" CssClass="ACont" runat="server"></asp:HyperLink>
                                    &nbsp;<span
                                        class="cResource"><asp:HyperLink ID="hplResource" runat="server"></asp:HyperLink></span>
                                </div>
                                <div class="ContText">
                                    <asp:Label ID="lblTopNewsStory" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="NewsMainPageSmallList">
                                    <asp:Repeater ID="rptNews" runat="server" EnableViewState="false">
                                        <ItemTemplate>

                                            <div class="row">
                                                <div class="col-md-3 ">
                                                    <asp:HyperLink ID="HyperLink6" NavigateUrl='<%#"http://www.parset.com/FaNews/" + Eval("Code") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title")) + ".html" %>'
                                                        Target="_blank" ImageUrl='<%#"~/Files/News/" +Eval("PicName") %>' runat="server"></asp:HyperLink>
                                                </div>
                                                <div class="col-md-9">
                                                    <asp:HyperLink ID="HyperLink1" CssClass="ACont" Target="_blank" NavigateUrl='<%#"http://www.parset.com/FaNews/" + Eval("Code") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title")) + ".html" %>'
                                                        runat="server">
                                                        <%#Eval("Title") %>&nbsp;<span class="cResource"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"http://www.parset.com/NR" + Eval("ResouseSiteCode") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("ResourceName")) + ".html"%>'><%#DataBinder.Eval(Container.DataItem, "ResourceName")%></asp:HyperLink></span>
                                                    </asp:HyperLink>
                                                </div>
                                            </div>


                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>

                            </div>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="panel">
                        <div class="heading">
                            تصاویر خبری
                        </div>
                        <div class="PicNewsFirst" id="PicNews">
                            
                                    <asp:Repeater ID="rptParsetPicNews" Visible="false" EnableViewState="false" runat="server">
                                        <HeaderTemplate><div class="PicNews"></HeaderTemplate>
                                        <ItemTemplate>
                                            
                                                <div class="PicItem">
                                                    <asp:HyperLink ID="HyperLink5" Target="_blank" runat="server" CssClass="cEngTitle"
                                                        NavigateUrl='<%#"http://www.parset.com/News/" +DataBinder.Eval(Container.DataItem, "Code")  + ".htm"%>'>
                                                        <asp:Image ID="Image1" ImageUrl='<%#"~/Files/News/" + Eval("PicName") %>' ToolTip='<%#Eval("Title") %>'
                                                            runat="server" />
                                                    </asp:HyperLink>
                                                </div>
                                            
                                        </ItemTemplate>
                                        <FooterTemplate></div></FooterTemplate>
                                    </asp:Repeater>
                                
                            <div class="MoreLeft">
                                <asp:HyperLink ID="HyperLink3" NavigateUrl="~/News/PicNews.aspx" Target="_blank"
                                    runat="server">بیشتر »</asp:HyperLink>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
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
