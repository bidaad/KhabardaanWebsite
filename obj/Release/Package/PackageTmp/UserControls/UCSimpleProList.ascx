<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="UserControls_UCSimpleProList" Codebehind="UCSimpleProList.ascx.cs" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<div class="cSpacer">
</div>
<div class="Padder1">
    <div class="OrgaeWin">
        <div class="Marginer1">
            <div style="text-align: right; font-weight: bold; direction: rtl;">
                <asp:Label ID="lblBasketHeader" runat="server"></asp:Label></div>
        </div>
    </div>
    <div class="sfHeader">
        <div style="direction: rtl">
            <asp:Label ID="lblListHeader" runat="server" Text="کل محصولات"></asp:Label></div>
    </div>
    <asp:Repeater ID="rptProducts" runat="server">
        <HeaderTemplate>
            <div class="tblProducts">
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <div class="ProDesc">
                    <div>
                        <h2>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="cTitle" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                            NavigateUrl='<%#"http://www.parset.com/Shop/ShowProduct.aspx?Code=" +DataBinder.Eval(Container.DataItem, "Code") %>'><%#DataBinder.Eval(Container.DataItem, "Title")%></asp:HyperLink>
                            </h2>
                    </div>
                    <div>
                        <%#DataBinder.Eval(Container.DataItem, "Description")%>
                    </div>
                </div>
                <div class="HorDot">
                </div>
        </ItemTemplate>
        <FooterTemplate>
            </div></FooterTemplate>
    </asp:Repeater>
</div>
<p>
    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
</p>
