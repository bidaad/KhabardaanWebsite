<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootNoCol.master"
    CodeBehind="AllNews.aspx.cs" Inherits="Parset.News.AllNews" %>

<%@ Register Src="~/UserControls/TextNewsList.ascx" TagName="TextNewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/Resources.ascx" TagName="Resources" TagPrefix="UCResources" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/UCNewsCats.ascx" TagName="UCNewsCats" TagPrefix="UCNCats" %>
<%@ Register Src="~/UserControls/UCNewsFeedTool.ascx" TagName="UCNewsFeedTool" TagPrefix="UCNewsFeed" %>
<%@ Register Src="~/UserControls/UCNewsTicker.ascx" TagName="UCNewsTicker" TagPrefix="UCNT" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<%@ Register Src="~/UserControls/UCRandSmallContent.ascx" TagName="UCRandSmallContent"
    TagPrefix="UCRSC" %>
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
                    <UCNewsFeed:UCNewsFeedTool ID="UCNewsFeedTool1" runat="server" />
                </div>
                <div class="WinRadiusGray">
                    <UCResources:Resources runat="server" ID="Resources1"></UCResources:Resources>
                </div>
            </div>
            <div class="col-md-8">
                <div class="panel ">
                    <div class="heading">
                                    آخرین اخبار
                                </div>
                    <div class="Padder10">
                    <asp:Repeater ID="rptNewsList" EnableViewState="false" runat="server">
                        <HeaderTemplate>
                            <div class="TextNewsCont">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div>
                                <asp:HyperLink ID="HyperLink1" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                    NavigateUrl='<%#"http://www.parset.com/FaNews/" + Eval("Code") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title")) + ".html" %>'
                                    Text='<%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"),60)%>'
                                    runat="server"></asp:HyperLink>-&nbsp;<span class="cResource"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"http://www.parset.com/NR" + Eval("ResourceSiteCode") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".html"%>' target="_blank"><%#DataBinder.Eval(Container.DataItem, "ResourceName")%></asp:HyperLink></span>&nbsp;<span
                                            class="cDate"><%#Tools.GetPrettyPersianDate2(DataBinder.Eval( Container.DataItem, "NewsDate"))%></span>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate>
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                        </div>
                    <p>
                        <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                    </p>
                    <div class="clear">
                </div>
                </div>
                
            </div>
            
                </div>
        </div>
        <div class="col-md-2">
            <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner2" runat="server" PositionCode="7" />
            </div>
            <div class="WinRadiusGray">
                <UCRSC:UCRandSmallContent ID="UCRandSmallContent1" runat="server" />
            </div>
        </div>
        
    </div>
</asp:Content>
