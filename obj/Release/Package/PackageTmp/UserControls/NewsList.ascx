<%@ Control Language="C#" AutoEventWireup="True" Inherits="Khabardaan.Web.UI.UserControls.NewsList"
    CodeBehind="NewsList.ascx.cs" %>
<%@ Register Src="~/UserControls/KeywordList.ascx" TagName="KeywordList" TagPrefix="KL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RelatedNews.ascx" TagName="RelatedNews" TagPrefix="RNews" %>
<div class="cSpacer">
</div>
<div class="Padder20">
    <div class="BoxHeader">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
    <div class="clear"></div>
    <div class="NewsList">
        <asp:Repeater ID="rptNewsList" EnableViewState="false" runat="server">
            <ItemTemplate><div class="cMainNews"><div class="cBullet"></div><asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"~/FaNews/" + Eval("Code") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title")) + ".html" %>'><%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 90)%></asp:HyperLink>&nbsp;<span class="cResource"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"http://www.parset.com/NR" + Eval("ResourceSiteCode") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("ResourceName")) + ".html"%>'><%#DataBinder.Eval(Container.DataItem, "ResourceName")%></asp:HyperLink></span>&nbsp;<span class="cDate"><%#Tools.GetPrettyPersianDate2(DataBinder.Eval( Container.DataItem, "NewsDate"))%></span><br /><p><%#ShowPic(DataBinder.Eval(Container.DataItem, "Title"),DataBinder.Eval(Container.DataItem, "PicName"))%><%#NewsShowBriefText(Eval("Contents"))%><br /></p><div class="Clear"></div></div><div class="Clear"></div></ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<p>
    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
</p>
<div class="clear"></div>
