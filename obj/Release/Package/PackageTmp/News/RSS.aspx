﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="News_RSS" Codebehind="RSS.aspx.cs" %>
<rss version="2.0">
<channel>
<title>سیستم خودکار اخبار</title>
<link>http://www.parset.com/news</link>
<description>آخرين اخبار</description>
<language>fa</language>
<generator>www.parset.com</generator>
<asp:Repeater runat="server" ID="rptNews" EnableViewState="False">
<ItemTemplate><item><title><%#DataBinder.Eval(Container.DataItem, "Title")%></title><link>http://www.parset.com/News/<%#DataBinder.Eval(Container.DataItem, "Code") + ".htm"%></link><pubDate><%#DataBinder.Eval(Container.DataItem, "NewsDate")%></pubDate></item></ItemTemplate>
</asp:Repeater>
</channel></rss>

