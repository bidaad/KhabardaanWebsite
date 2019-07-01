<%@ Page Language="C#" AutoEventWireup="true" Inherits="NewsSiteMap" Codebehind="NewsSiteMap.aspx.cs" %><?xml version="1.0" encoding="utf-8"?>
<urlset xmlns="http://www.google.com/schemas/sitemap/0.84">
<asp:Repeater runat="server" ID="rptNews" EnableViewState="False">
<ItemTemplate>
    <url>
        <loc>https://www.khabardaan.ir/News/<%#Eval("Code")%>.html</loc>
    </url>
</ItemTemplate>
</asp:Repeater>
</urlset>