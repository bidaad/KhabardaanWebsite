<%@ Control Language="C#" AutoEventWireup="True" Inherits="Khabardaan.Web.UI.UserControls.RelatedNews"
    CodeBehind="RelatedNews.ascx.cs" %>
<div class="Marginer1">
    <div class="lblRelatedNews">
        <h2>اخبار مرتبط
        </h2>
    </div>
    <asp:Panel ID="pnlBriefNews" CssClass="RoundBorder1" runat="server">
        <div class="BriefNews">
            <asp:Repeater ID="rptNews" EnableViewState="false" runat="server">
                <ItemTemplate>
                    <div class="RelNews">
                        <article>
                            <asp:HyperLink NavigateUrl='<%# "~/News/" +  Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline( Eval("Title")) + ".html" %>' Target="_blank" runat="server"><%#Eval("Title") %></asp:HyperLink>
                                        <div class="clearfix"></div>
                        </article>

                        <div class="clearfix"></div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="MoreLeft">
                <asp:HyperLink runat="server" ID="MoreLink" CssClass="cMore2">
        همه خبرهای مرتبط »</asp:HyperLink>
            </div>
            <div class="clear"></div>
        </div>
    </asp:Panel>
</div>
