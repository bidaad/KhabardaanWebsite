<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCMostVisitedContents.ascx.cs" Inherits="Parset.UserControls.UCMostVisitedContents" %>
<%@ OutputCache Duration="3600" VaryByParam="None" %> 

<script>
     $(function () {
         $("#ContentAccordion").accordion({
             heightStyle: "content"
         });
         
     });
</script>
<div id="ContentAccordion" class="accordion">
        <h3 class="title">
            <span>پربیننده‌های روز گذشته</span>
        </h3>
        <div class="MVCCont">
            <asp:Repeater ID="rptMVContents1d" EnableViewState="false" runat="server">
                <ItemTemplate>
                    <div>
                        <asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"http://www.parset.com/C" +Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title"))  + ".html"%>'>» <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 35)%></asp:HyperLink>&nbsp;</div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <h3 class="title">
            <span>پربیننده‌های هفته گذشته</span>
        </h3>
        <div class="MVCCont">
            <asp:Repeater ID="rptMVContents7d" EnableViewState="false" runat="server">
                <ItemTemplate>
                    <div>
                        <asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"http://www.parset.com/C" +Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title"))  + ".html"%>'>» <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 35)%></asp:HyperLink>&nbsp;</div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <h3 class="title">
            <span>پربیننده‌های ماه گذشته</span>
        </h3>
        <div class="MVCCont">
            <asp:Repeater ID="rptMVContents30d" EnableViewState="false" runat="server">
                <ItemTemplate>
                    <div>
                        <asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"http://www.parset.com/C" +Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title"))  + ".html"%>'>» <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 35)%></asp:HyperLink>&nbsp;</div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
</div>

