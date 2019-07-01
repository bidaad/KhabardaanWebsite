<%@ Page Language="C#" AutoEventWireup="true" Inherits="SiteMapProfiles" Codebehind="SiteMapProfiles.aspx.cs" %>

<?xml version="1.0" encoding="utf-8"?>
<urlset xmlns="http://www.google.com/schemas/sitemap/0.84">
<asp:Repeater runat="server" ID="rptUsers" EnableViewState="False">
<ItemTemplate>
    <url>
        <loc>http://www.parset.com/Users/Profile.aspx?ID=<%#Eval("ID") %></loc>
        <lastmod>2011-01-01</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.8</priority>
    </url>
</ItemTemplate>
</asp:Repeater>
</urlset>