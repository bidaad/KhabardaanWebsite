<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCMostVisitedNews.ascx.cs" Inherits="Khabardaan.UserControls.UCMostVisitedNews" %>
    <div class="CatHeaderCont">
        <h2 class="CatHeader">
            پربیننده ترین خبرها
        </h2>
    </div>
    <div class="clear"></div>

<div class="RoundBorder1 MostVisited">
    <asp:Repeater ID="rptMVNews12h" EnableViewState="false" runat="server">
        <ItemTemplate>
            <div>
                <asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"~/News/" + Eval("Code")  + ".html" %>'>» <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 43)%></asp:HyperLink>&nbsp;</div>
        </ItemTemplate>
    </asp:Repeater>
</div>

