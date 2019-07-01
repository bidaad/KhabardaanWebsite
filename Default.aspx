<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="True" Inherits="_Default"
    Title="خبردان | جستجوگر هوشمند خبری" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/NewsList.ascx" TagName="List" TagPrefix="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <%--<div>
        <h2>سرخط خبرها
        </h2>
        <div class="RoundBorder1">
            <asp:Repeater ID="rptHeadlines" runat="server" OnItemDataBound="rptHeadlines_ItemDataBound">
                <ItemTemplate>
                    <article>
                        <asp:HyperLink NavigateUrl='<%# "~/News/" + Eval("Code") + ".html" %>' Target="_blank" runat="server"><%#Eval("Title") %></asp:HyperLink>
                        <div class="clearfix"></div>
                        <div class="ResourceName"><span><%#Eval("ResourceSite") %></span></div>
                        <div class="DotSeperator">.</div>
                        <time datetime="<%#Eval("NewsDate") %>"><%# Tools.GetPrettyDate(Convert.ToDateTime( Eval("NewsDate"))) %></time>
                        <div class="DotSeperator">.</div>
                        <div class="RelatedNews">
                            <asp:HyperLink ID="hplRelatedNews" Code='<%#Eval("Code") %>' Target="_blank" runat="server"></asp:HyperLink></div>
                        <figure class="Newsfig d-none d-sm-block">
                            <asp:Image runat="server" ID="imgNews" CssClass="" ImageUrl='<%# "//static.Khabardaan.ir/Files/News/" + Eval("PicName") %>' />
                        </figure>
                    </article>
                    <div class="clearfix"></div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>--%>
    <div class="Clear">
    </div>
    <div>
        <h2>بین الملل
        </h2>
        <div class="">
            <News:List id="WorldNews" ShowPager="false" runat="server" />

        </div>
    </div>
    <div class="Clear">
    </div>
    <div>
        <h2>اقتصادی
        </h2>
        <div class="">
            <News:List id="BusinessNews" ShowPager="false" runat="server" />

        </div>
    </div>
    <div class="Clear">
    </div>
    <div>
        <h2>تکنولوژی
        </h2>
        <div class="">
            <News:List id="TechnologyNews" ShowPager="false" runat="server" />

        </div>
    </div>
    <div class="Clear">
    </div>

    <div>
        <h2>ورزشی
        </h2>
        <div class="">
            <News:List id="SportsNews" ShowPager="false" runat="server" />

        </div>
    </div>
    <div class="Clear">
    </div>
    <div>
        <h2>علمی
        </h2>
        <div class="">
            <News:List id="ScienceNews" ShowPager="false" runat="server" />

        </div>
    </div>
    <div class="Clear">
    </div>
    <div>
        <h2>حوادث
        </h2>
        <div class="">
            <News:List id="HealthNews" ShowPager="false" runat="server" />

        </div>
    </div>
    <div class="Clear">
    </div>

</asp:Content>
