<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="Khabardaan.Web.UI.UserControls.KeywordList" Codebehind="KeywordList.ascx.cs" %>
<div class="PlusButton" onclick="ShowKeywords(this, '<%=pnlAllKeywords.ClientID %>','<%=pnlBriefKeywords.ClientID%>')">
    <div class="cKeywordLable">
        <asp:Label runat="server" Text="کلمات کلیدی:"></asp:Label></div>
</div>    
<asp:Panel ID="pnlBriefKeywords" CssClass="cVisible" runat="server">
    <asp:Repeater ID="rptKeywords" EnableViewState="false" runat="server">
        <ItemTemplate><asp:HyperLink runat="server" NavigateUrl='<%#"~/NK" + Eval("KeywordCode") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Name")) + ".html"%>'>▫&nbsp;<%#DataBinder.Eval(Container.DataItem, "Name")%></asp:HyperLink>&nbsp;</ItemTemplate></asp:Repeater><a href="#" class="cMore2" onclick="ShowKeywords(this, '<%=pnlAllKeywords.ClientID %>','<%=pnlBriefKeywords.ClientID%>');return false;"> بیشتر ...</a></asp:Panel><asp:Panel ID="pnlAllKeywords" CssClass="cHidden" runat="server">
    <asp:Repeater ID="rptAllKeywords" EnableViewState="false" runat="server">
        <ItemTemplate>▫&nbsp;<asp:HyperLink runat="server" NavigateUrl='<%#"~/NK" + Eval("KeywordCode") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Name")) + ".html"%>'><%#DataBinder.Eval(Container.DataItem, "Name")%></asp:HyperLink>&nbsp;</ItemTemplate></asp:Repeater>
</asp:Panel>
