<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCMostVisitedNews.ascx.cs" Inherits="Parset.UserControls.UCMostVisitedNews" %>

<script>
    $(function () {
        $("#NewsAccordion").accordion({
            heightStyle: "content"
        });
        
    });
</script>
<div id="NewsAccordion" class="accordion">
        <h3 class="title">
            <span>پربیننده‌ترین خبرهای ٤ ساعت گذشته</span>
        </h3>
        <div class="MVCCont">
            <asp:Repeater ID="rptMVNews4h" EnableViewState="false" runat="server">
                <ItemTemplate><div ><asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"http://www.parset.com/FaNews/" + Eval("Code") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title")) + ".html" %>'>» <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 35)%></asp:HyperLink>&nbsp;</div></ItemTemplate>
            </asp:Repeater>
        </div>
        <h3 class="title">
            <span>پربیننده‌ترین خبرهای ١٢ ساعت گذشته</span>
        </h3>
        <div class="MVCCont">
            <asp:Repeater ID="rptMVNews12h" EnableViewState="false" runat="server">
                <ItemTemplate><div ><asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"http://www.parset.com/FaNews/" + Eval("Code") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title")) + ".html" %>'>» <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 35)%></asp:HyperLink>&nbsp;</div></ItemTemplate>
            </asp:Repeater>
        </div>
        <h3 class="title">
            <span>پربیننده‌ترین خبرهای ٢٤ ساعت گذشته</span>
        </h3>
        <div class="MVCCont">
            <asp:Repeater ID="rptMVNews24h" EnableViewState="false" runat="server">
                <ItemTemplate><div ><asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"http://www.parset.com/FaNews/" + Eval("Code") + "_" + Tools.ConvertFarsiToPingilish(Eval("Title")) + ".html" %>'>» <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 35)%></asp:HyperLink>&nbsp;</div></ItemTemplate>
            </asp:Repeater>
        </div>
</div>

