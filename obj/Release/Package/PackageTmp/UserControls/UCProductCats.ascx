<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_UCProductCats" Codebehind="UCProductCats.ascx.cs" %>
<asp:Repeater ID="rptProductCats" runat="server">
    <HeaderTemplate>
        <div>
    </HeaderTemplate>
    <ItemTemplate>
        <div>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cTitle" Text=<%#DataBinder.Eval(Container.DataItem, "Name") %> ToolTip='<%#DataBinder.Eval(Container.DataItem, "Name") %>'>
            </asp:HyperLink>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </div></FooterTemplate>
</asp:Repeater>