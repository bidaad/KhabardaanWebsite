<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_ProductList" Codebehind="ProductList.ascx.cs" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<div class="cSpacer">
</div>
<div class="Padder1">
    <div class="ProductListHeader">
        <asp:Label ID="lblListHeader" runat="server"></asp:Label>
    </div>
    
    <div style="margin-bottom:8px;">
        <AKP:MsgBox runat="server" ID="msgBox">
        </AKP:MsgBox>
    </div>
    <asp:DataList ID="rptProducts"  RepeatDirection="Horizontal"
        RepeatColumns="4" CssClass="tblProducts" runat="server">
        <ItemTemplate><div class="ProCont"><asp:HyperLink  runat="server" target="_blank" CssClass="cTitle" ToolTip='<%#FormatText(DataBinder.Eval(Container.DataItem, "Title")) %>'
                    NavigateUrl='<%#"http://www.parset.com/Shop/" + Eval("ProductCode") + "/" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".htm"%>'>
                                <%#ShowPic(DataBinder.Eval(Container.DataItem, "Title"),DataBinder.Eval(Container.DataItem, "SmallPicFile"))%>
                </asp:HyperLink></div><div class="ProName"><asp:HyperLink ID="HyperLink2" runat="server" CssClass="cTitle" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' NavigateUrl='<%#"http://www.parset.com/Shop/" + Eval("ProductCode") + "/" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".htm"%>'><%#FormatText(DataBinder.Eval(Container.DataItem, "Title"))%></asp:HyperLink></div><div class="Rial"><span>&nbsp;ریال&nbsp;<%#Tools.FormatCurrency2(DataBinder.Eval(Container.DataItem, "Price"))%></span></div><div>
                <asp:HyperLink NavigateUrl='<%#"http://www.parset.com/Shop/" + Eval("ProductCode") + "/" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".htm"%>' ImageUrl="~/images/buy.gif" ToolTip="خرید پستی" runat="server"></asp:HyperLink></div></ItemTemplate>
    </asp:DataList>
</div>
<p>
    &nbsp;<Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
