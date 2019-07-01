<%@ Page Title="" Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Users_UserBuys" Codebehind="UserBuys.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UserTools.ascx" TagName="UserTools" TagPrefix="UTL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:UpdateProgress ID="UpdateProgress" runat="server">
        <ProgressTemplate>
            <div class="cAjaxLoading">
                Loading...<br />
                <br />
                <asp:Image ID="imgLoading" ImageUrl="~/images/loading.gif" runat="server" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="Marginer1">
                <div class="Col2">
                    <div class="Col2Left">
                        <div class="BlueHeader">
                    <asp:Label ID="Label5" runat="server" Text="خریدهای من"></asp:Label>
                </div>
                <div>
                    <div class="Marginer1">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <div style="border: solid 1px #111111;">
                                <div class="Marginer1">
                                    <asp:Repeater ID="rptUserBuys" OnItemCommand="HandleRepeaterCommand" runat="server">
                                        <HeaderTemplate>
                                            <table class="tblUserBuys" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <th>
                                                        <asp:Label ID="Label6" runat="server" Text="جزئیات"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="Label1" runat="server" Text="نوع پرداخت"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="Label2" runat="server" Text="وضعیت"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="Label4" runat="server" Text="مبلغ"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="Label3" runat="server" Text="تاریخ"></asp:Label>
                                                    </th>
                                                </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr class="<%#GetBGClass(DataBinder.Eval(Container.DataItem, "HCTransStatusCode"))%>">
                                                <td>
                                                    <asp:ImageButton CommandName="ToggleBuyProInfo" BuyCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>'
                                                        ImageUrl="~/images/folder.gif" ID="btnBuyInfo" runat="server" />
                                                </td>
                                                <td>
                                                    <%#DataBinder.Eval(Container.DataItem, "ChargeType")%>
                                                </td>
                                                <td>
                                                    <%#DataBinder.Eval(Container.DataItem, "TransStatuse")%>
                                                </td>
                                                <td>
                                                    <div class="Currency">
                                                        <%#Tools.FormatCurrency(Tools.ChangeEnc( DataBinder.Eval(Container.DataItem, "Amount").ToString())) %>&nbsp;ریال&nbsp;</div>
                                                </td>
                                                <td>
                                                    <%#Tools.ChangeEnc( DataBinder.Eval(Container.DataItem, "ChrgDate").ToString())%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5">
                                                    <asp:Panel ID="pnlBuyInfo" Visible="false" runat="server">
                                                        <div class="BoxProducts">
                                                            <asp:Repeater ID="rptUserBuyProducts" runat="server">
                                                                <HeaderTemplate>
                                                                    <table class="tblUserBuyProducts">
                                                                        <tr>
                                                                            <th>
                                                                                <asp:Label ID="Label3" runat="server" Text="تعداد"></asp:Label>
                                                                            </th>
                                                                            <th>
                                                                                <asp:Label ID="Label4" runat="server" Text="مبلغ"></asp:Label>
                                                                            </th>
                                                                            <th>
                                                                                <asp:Label ID="Label2" runat="server" Text="عنوان"></asp:Label>
                                                                            </th>
                                                                        </tr>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td>
                                                                            <%#Tools.ChangeEnc(DataBinder.Eval(Container.DataItem, "Quantity").ToString())%>
                                                                        </td>
                                                                        <td>
                                                                            <div class="Currency">
                                                                                <%#Tools.FormatCurrency(Tools.ChangeEnc( DataBinder.Eval(Container.DataItem, "Amount").ToString())) %>&nbsp;ریال&nbsp;</div>
                                                                        </td>
                                                                        <td>
                                                                            <%#DataBinder.Eval(Container.DataItem, "Title")%>
                                                                        </td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                                <FooterTemplate>
                                                                    </table></FooterTemplate>
                                                            </asp:Repeater>
                                                        </div>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table></FooterTemplate>
                                    </asp:Repeater>
                                    <asp:Label ID="lblNoBuy" Visible="false" runat="server" Text="شما تا کنون هیچ خریدی انجام نداده اید"></asp:Label>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    </div>
                </div>
                <div>
                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                </div>
                    </div>
                    <div class="Col2Right">
                        <div class1="Marginer1">
                            
                            <div>
                                <UTL:UserTools runat="server" ID="UserTools1"></UTL:UserTools>
                            </div>
                            <div>
                                <asp:Label ID="Label9" runat="server" Text="تبلیغات"></asp:Label></div>
                            <div class="Line2">
                                <hr />
                            </div>
                            <div>
                                <ADS:Banner runat="server" ID="Banner2" PositionCode="1" />
                            </div>
                            <div>
                                <RND:RandUsers runat="server" ID="RandUsers1" PositionCode="1" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script type="text/javascript" language="JavaScript">
        function adjustDivs() {
            var df = document.getElementById('<%=UpdateProgress.ClientID %>');
            df.style.position = 'absolute';
            df.style.left = (document.documentElement.scrollLeft + 45) + '%';
            df.style.top = (document.documentElement.scrollTop + 300) + 'px';
        }

        window.onload = adjustDivs;
        window.onresize = adjustDivs;
        window.onscroll = adjustDivs;
    </script>

</asp:Content>
