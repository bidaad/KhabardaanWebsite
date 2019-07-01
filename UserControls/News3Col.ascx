<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="News3Col.ascx.cs" Inherits="Khabardaan.UserControls.News3Col" %>
<ul class="news-3-col">
    <asp:Repeater ID="rptNews61" runat="server">
        <ItemTemplate>
            <li>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                        <asp:Image runat="server" ID="imgNews" CssClass="imgNews3Col" AlternateText='<%#Eval("Title") %>' ToolTip='<%#Eval("Title") %>' ImageUrl='<%# Eval("ImgUrl") %>' />
                    </asp:HyperLink>
                </div>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                    <%#Eval("Title") %>&nbsp;.&nbsp;<span class="resource"><%#Eval("ResourceSite") %></span>
                    </asp:HyperLink>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>

</ul>
<div class="clearfix"></div>
<ul class="news-2-col">
    <asp:Repeater ID="rptNews41" runat="server">
        <ItemTemplate>
            <li>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                        <asp:Image runat="server" ID="imgNews" CssClass="imgNews3Col" AlternateText='<%#Eval("Title") %>' ToolTip='<%#Eval("Title") %>' ImageUrl='<%# Eval("ImgUrl") %>' />
                    </asp:HyperLink>
                </div>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                    <%#Eval("Title") %>&nbsp;.&nbsp;<span class="resource"><%#Eval("ResourceSite") %></span>
                    </asp:HyperLink>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>

</ul>
<ul class="news-3-col">
    <asp:Repeater ID="rptNews62" runat="server">
        <ItemTemplate>
            <li>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                        <asp:Image runat="server" ID="imgNews" CssClass="imgNews3Col" AlternateText='<%#Eval("Title") %>' ToolTip='<%#Eval("Title") %>' ImageUrl='<%# Eval("ImgUrl") %>' />
                    </asp:HyperLink>
                </div>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                    <%#Eval("Title") %>&nbsp;.&nbsp;<span class="resource"><%#Eval("ResourceSite") %></span>
                    </asp:HyperLink>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>

</ul>
<div class="clearfix"></div>
<ul class="news-2-col">
    <asp:Repeater ID="rptNews42" runat="server">
        <ItemTemplate>
            <li>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                        <asp:Image runat="server" ID="imgNews" CssClass="imgNews3Col" AlternateText='<%#Eval("Title") %>' ToolTip='<%#Eval("Title") %>' ImageUrl='<%# Eval("ImgUrl") %>' />
                    </asp:HyperLink>
                </div>
                <div>
                    <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server">
                    <%#Eval("Title") %>&nbsp;.&nbsp;<span class="resource"><%#Eval("ResourceSite") %></span>
                    </asp:HyperLink>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>

</ul>