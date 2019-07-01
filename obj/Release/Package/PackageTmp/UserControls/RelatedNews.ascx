<%@ Control Language="C#" AutoEventWireup="True" Inherits="Khabardaan.Web.UI.UserControls.RelatedNews"
    CodeBehind="RelatedNews.ascx.cs" %>
<div class="Marginer1">
<div class="lblRelatedNews">
    <div class="cKeywordLable">
        <asp:Label runat="server" Text="اخبار مرتبط:"></asp:Label>
    </div>
</div>
<asp:Panel ID="pnlBriefNews" CssClass="cVisible" runat="server">
    <div class="BriefNews">
        <asp:Repeater ID="rptNews" EnableViewState="false" runat="server">
            <ItemTemplate>
                <div>
                    <asp:HyperLink runat="server" NavigateUrl='<%#"http://www.parset.com/FaNews/" + Eval("RelatedCode") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title"))  + ".html"%>'>▫&nbsp;<%#Tools.ShowBriefText( DataBinder.Eval(Container.DataItem, "Title"), 80)%></asp:HyperLink>&nbsp;
                    <span class="Res">
                        <%#DataBinder.Eval(Container.DataItem, "ResourceName")%></span>&nbsp;-&nbsp;<span
                            class="Cat"><%#DataBinder.Eval(Container.DataItem, "CatName")%></span>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="MoreLeft">
            <asp:HyperLink runat="server" ID="MoreLink" CssClass="cMore2">
        همه خبرهای مرتبط »</asp:HyperLink></div>
        <div class="clear"></div>
    </div>
</asp:Panel>
</div>