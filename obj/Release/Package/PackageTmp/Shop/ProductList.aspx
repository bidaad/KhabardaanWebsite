<%@ Page Title="" Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true"
    Inherits="ProductList" CodeBehind="ProductList.aspx.cs" %>

<%@ Register Src="~/UserControls/ProductList.ascx" TagName="ProductList" TagPrefix="Pro" %>
<%@ Register Src="~/UserControls/SuggestToFriend.ascx" TagName="SuggestToFriend"
    TagPrefix="STF" %>
<%@ Register Src="~/UserControls/Basket.ascx" TagName="Basket" TagPrefix="BSK" %>
<%@ Register Src="~/UserControls/CardFeatures.ascx" TagName="CardFeatures" TagPrefix="UCCardFeatures" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdateProgress ID="UpdateProgress" runat="server">
        <ProgressTemplate>
            <div class="cAjaxLoading">
                بارگذاری...<br />
                <br />
                <asp:Image ID="imgLoading" ImageUrl="~/images/loading.gif" runat="server" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <div class="Col2A">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="Col2ALeft">
                    <div class="WinRadiusGray">
                    <div style="text-align: right;">
                        <asp:HyperLink ID="hplCheckout" NavigateUrl="~/Shop/Order.aspx" ImageUrl="~/images/btnCheckout.gif"
                            CssClass="btnCheckout" runat="server" ToolTip="اتمام خرید" />
                    </div>
                    <div class="Marginer1">
                        <Pro:ProductList ID="ProductList1" runat="server" />
                    </div>
                    </div>
                </div>
                <div class="Col2ARight">
                    <div class="WinRadiusGray">
                        <MNU:Menu runat="server" />
                    </div>
                    <div class="Marginer1">
                        <div class="WinRadiusGray">
                            <div class="WinBlue1">
                                <div class="WinBlue1Header">
                                    <div style="padding-right: 10px; padding-top: 3px;">
                                        <asp:Label ID="Label1" runat="server" Text="گروه ها"></asp:Label></div>
                                </div>
                                <div>
                                    <div style="text-align: right;">
                                        <telerik:RadTreeView AutoPostBack="true" Font-Names="Tahoma" ID="TreeProductCats"
                                            DataSourceID="null" runat="server" Skin="WebBlue" ShowLineImages="true" ExpandDelay="3"
                                            dir="rtl">
                                            <NodeTemplate>
                                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"http://www.parset.com/Shop/ProductList.aspx?CatCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                                                    runat="server"><%#DataBinder.Eval(Container.DataItem, "Name")%>&nbsp;<%#ShowNum( DataBinder.Eval(Container.DataItem, "ProductCount"))%></asp:HyperLink></NodeTemplate>
                                        </telerik:RadTreeView>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                        <div class="WinRadiusGray">
                        <BSK:Basket runat="server" id="Basket1">
                        </BSK:Basket>
                        </div>
                        <div class="WinRadiusGray">
                        <div>
                            <table class="tblTemplate1">
                                <tr>
                                    <th>
                                        <asp:Label ID="Label2" runat="server" Text="محصول اورجینال"></asp:Label>
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="NormalText">
                                        یک محصول اورجینال تنها به محصولی اتلاق می شود که توسط کارخانه یا شرکت تولید کننده
                                        آن عرضه می شود و هیچ شرکت سازنده فیلم محصولات خود را به صورت پکیج ( مجموعه زیاد
                                        فیلم و کارتون در تعداد کم دی وی دی) به دلیل عدم صرفه اقتصادی به بازار عرضه نمی کند
                                        . بدیهی است که صرفا داشتن برچسب (label) اعم از نقره ای یا ... روی یک دی وی دی یا
                                        سی دی نشان دهنده اورجینال بودن آن نمی باشد .
                                    </td>
                                </tr>
                            </table>
                        </div>
                        </div>
                        <div class="WinRadiusGray">
                        <asp:Panel runat="server" ID="pnlArticles">
                            <table class="tblTemplate1">
                                <tr>
                                    <th>
                                        <asp:Label ID="Label4" runat="server" Text="مقالات"></asp:Label>
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <asp:Repeater ID="rptArticles" runat="server">
                                                <ItemTemplate>
                                                    <div>
                                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%#"http://www.parset.com/Articles/ShowArticle.aspx?Code=" + DataBinder.Eval(Container.DataItem, "Code") %>'><%#DataBinder.Eval(Container.DataItem, "Title") %></asp:HyperLink>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        </div>
                    </div>
                    <div class="WinRadiusGray">
                        <STF:SuggestToFriend ID="SuggestToFriend1" runat="server"></STF:SuggestToFriend>
                    </div>
                    <div class="WinRadiusGray">
                    <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" ImageUrl="~/images/SepcialProducts.gif"
                        NavigateUrl="~/Shop/SpecialProducts.aspx"></asp:HyperLink>
                        </div>
                    
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
