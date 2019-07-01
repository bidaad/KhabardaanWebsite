<%@ Control Language="C#" AutoEventWireup="True" Inherits="Khabardaan.Web.UI.UserControls.NewsList"
    CodeBehind="NewsList.ascx.cs" %>
<%@ Register Src="~/UserControls/KeywordList.ascx" TagName="KeywordList" TagPrefix="KL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RelatedNews.ascx" TagName="RelatedNews" TagPrefix="RNews" %>
<div class="cSpacer"></div>
<div class="Padder20">
    <h2 class="BoxHeader">
        <asp:Literal ID="lblMessage" runat="server" Text=""></asp:Literal>
    </h2>
    <div class="clear"></div>
    <div class="RoundBorder1 NewsList">
        <asp:Repeater ID="rptNewsList" runat="server" OnItemDataBound="rptNewsList_ItemDataBound">
            <ItemTemplate>
                <article>
                    <div class="row">
                        <div class="col-lg-9 col-md-9 col-sm-9 ">
                            <asp:HyperLink ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%# "~/News/" + Eval("Code") +  ".html" %>' runat="server"><%#Eval("Title") %></asp:HyperLink>
                            <div class="clearfix"></div>
                            <div class="ResourceName"><span><%#Eval("ResourceName") %></span></div>
                            <div class="DotSeperator">.</div>
                            <time datetime="<%#Eval("NewsDate") %>"><%# Tools.GetPrettyDate(Convert.ToDateTime( Eval("NewsDate"))) %></time>
                            <div class="DotSeperator">.</div>
                            <div class="RelatedNews">
                                <asp:HyperLink ID="hplRelatedNews" Target="_blank" Code='<%#Eval("Code") %>' runat="server"></asp:HyperLink>
                            </div>
                            <div class="clearfix"></div>
                            <div class="text-justify">
                                <%#ShowText( Eval("Contents")) %>
                            </div>
                            
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 d-none d-sm-block ">
                            <figure class="Newsfig d-none d-sm-block">
                                <asp:Image runat="server" ID="imgNews" ToolTip='<%#Eval("Title") %>' PicName='<%# Eval("PicName") %>' ImageUrl='<%# "//static.parset.com/Files/News/" + Eval("PicName") %>' />
                            </figure>
                        </div>
                    </div>


                </article>
                <div class="clearfix"></div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<p>
    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
    <div class="clear"></div>
