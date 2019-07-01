<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="UserControls_RandomProduct" Codebehind="RandomProduct.ascx.cs" %>
<div class="Box11">
    <div class="sfHeader">
        <asp:Label ID="Label1" runat="server" Text="محصولات"></asp:Label>
    </div>
    <div class="ProDesc">
        <div>
            <asp:HyperLink ID="hplTitle" runat="server" Target="_blank" CssClass="cTitle"></asp:HyperLink>
        </div>
        <div>
            &nbsp;
            <asp:Label ID="lblPrice" runat="server" Target="_blank" CssClass="Price"></asp:Label>
            &nbsp;ریال</div>
        <div>
            <asp:Label ID="lblDescription" runat="server" Target="_blank"></asp:Label>
        </div>
        <div>
            <asp:HyperLink runat="server" ID="hplPicFile" /></div>
    </div>
    <div style="text-align:left;direction:rtl;">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Shop/ProductList.aspx" runat="server">بیشتر »</asp:HyperLink>
    </div>
</div>
