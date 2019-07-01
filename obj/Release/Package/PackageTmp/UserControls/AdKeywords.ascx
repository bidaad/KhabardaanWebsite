<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_AdKeywords" CodeBehind="AdKeywords.ascx.cs" %>
<asp:Panel ID="pnlKeywords" CssClass="panel success" runat="server">

    <div class="heading">
        کلمات کلیدی آگهی
    </div>
    <div class="Clear">
    </div>
    <div class="content">
        <asp:Repeater EnableViewState="false" ID="rptKeywordList" runat="server">
            <HeaderTemplate>
                <div class="KeywordList">
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%#Eval("Keyword") %>' NavigateUrl='<%#"http://www.parset.com/Ads/ShowAdsByKeyword.aspx?Code=" + Eval("KeywordCode") %>'>
                                        <%#Eval("Keyword") %>
                    </asp:HyperLink>
                </div>

            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>
    </div>

</asp:Panel>
