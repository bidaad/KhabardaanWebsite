<%@ Page Title="" Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true"
    Inherits="ShowProduct" CodeBehind="ShowProduct.aspx.cs" %>

<%@ Register Src="~/UserControls/ProductList.ascx" TagName="ProductList" TagPrefix="Pro" %>
<%@ Register Src="~/UserControls/MostSoldPros.ascx" TagName="MostSoldPros" TagPrefix="UCMostSoldPros" %>
<%@ Register Src="~/UserControls/CardFeatures.ascx" TagName="CardFeatures" TagPrefix="UCCardFeatures" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="Col2A">
        <div class="Col2ALeft">
            <div class="Marginer1">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="WinRadiusGray">
                            <div class="OrgaeWin">
                                <div class="Marginer1">
                                    <div style="text-align: right; font-weight: bold; direction: rtl;">
                                        <asp:Label ID="lblBasketHeader" runat="server" Text="سبد خرید خالی است"></asp:Label></div>
                                    <asp:Repeater ID="rptBasket" runat="server">
                                        <HeaderTemplate>
                                            <table class="tblBasket" cellspacing="0">
                                                <tr>
                                                    <th>
                                                        <asp:Label ID="Label3" runat="server" Text="قیمت کل"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="Label4" runat="server" Text="قیمت پایه"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="Label5" runat="server" Text="تعداد"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="Label6" runat="server" Text="نام محصول"></asp:Label>
                                                    </th>
                                                </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <%#Tools.ChangeEnc(Tools.FormatCurrency(DataBinder.Eval(Container.DataItem, "ProductTotalPrice").ToString()))%>
                                                </td>
                                                <td>
                                                    <%#Tools.ChangeEnc(Tools.FormatCurrency(DataBinder.Eval(Container.DataItem, "ProductPrice").ToString()))%>
                                                </td>
                                                <td>
                                                    <%#Tools.ChangeEnc( DataBinder.Eval(Container.DataItem, "ItemCount").ToString())%>
                                                </td>
                                                <td>
                                                    <%#DataBinder.Eval(Container.DataItem, "ProductName")%>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table></FooterTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <div>
                                <div class="ProDesc">
                                    <asp:Panel runat="server" Visible="false" CssClass="RemoveItem" ID="pnlRemove">
                                        <asp:ImageButton runat="server" ID="btnRemove" OnClick="btnRemove_Click" CommandName="RemoveFromBasket"
                                            ToolTip="حذف از سبد خرید" ImageUrl="~/images/Remove-icon.png" />
                                    </asp:Panel>
                                    <div class="cProTitle">
                                        <h1>
                                            <asp:Literal ID="lblTitle" EnableViewState="false" runat="server"></asp:Literal></h1>
                                    </div>
                                    <div class="PriceCont">
                                        <table>
                                            <tr>
                                                <td>ریال</td>
                                                <td><asp:Label ID="lblPrice" runat="server" Target="_blank" CssClass="Price"></asp:Label></td>
                                                <td class="lbl">قیمت:</td>
                                            </tr>
                                        </table>
                                        </div>
                                        <div class="clear"></div>
                                    <div class="cNormText">
                                        <div class="ProFullPic">
                                            <asp:Image runat="server" BorderWidth="1" ID="imgPicFile" /></div>
                                        <asp:literal ID="lblDescription" runat="server" EnableViewState="false"></asp:literal>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                    <div>
                                        <div style="text-align: left; float: left;">
                                            <table class="tblBasketCount">
                                                <tr>
                                                    <td>
                                                        <%-- <asp:ImageButton ID="btnAddToBasket" OnClick="btnAddToBasket_Click" ImageUrl="~/images/basket_add.gif"
                                                        ToolTip="اضافه کردن به سبد خرید" runat="server"></asp:ImageButton>--%>
                                                    </td>
                                                    <td>
                                                        <%--<div>
                                                        <asp:Label ID="Label2" runat="server" Text="تعداد"></asp:Label></div>
                                                    <div>
                                                        <asp:DropDownList ID="ddlItemCount" runat="server">
                                                            <asp:ListItem Value="1" Text="۱"></asp:ListItem>
                                                            <asp:ListItem Value="2" Text="۲"></asp:ListItem>
                                                            <asp:ListItem Value="3" Text="۳"></asp:ListItem>
                                                            <asp:ListItem Value="4" Text="۴"></asp:ListItem>
                                                            <asp:ListItem Value="5" Text="۵"></asp:ListItem>
                                                            <asp:ListItem Value="6" Text="۶"></asp:ListItem>
                                                            <asp:ListItem Value="7" Text="۷"></asp:ListItem>
                                                            <asp:ListItem Value="8" Text="۸"></asp:ListItem>
                                                            <asp:ListItem Value="9" Text="۹"></asp:ListItem>
                                                            <asp:ListItem Value="10" Text="۱۰"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>--%>
                                                    </td>
                                                    <td>
                                                        <asp:HyperLink ID="hplBuy" ImageUrl="~/images/buy.gif" ToolTip="اضافه کردن محصول به سبد خرید"
                                                            runat="server"></asp:HyperLink>
                                                        <%--<asp:ImageButton ID="btnCheckout" ImageUrl="~/images/btnCheckout.gif" CssClass="btnCheckout"
                                                        runat="server" ToolTip="اتمام خرید" OnClick="btnCheckout_Click" />--%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <AKP:MsgBox runat="server" ID="msgMessage">
                                                        </AKP:MsgBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                        <div class="WinRadiusGray">
                            <div class="Keywords">
                                <asp:Repeater ID="rptKeywords" EnableViewState="false" runat="server">
                                    <ItemTemplate>
                                        <span>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Shop/ShowProduct.aspx?Code=" + strCode %>'><%#Eval("Name") %>&nbsp;<%#ProTitle%></asp:HyperLink></span>&nbsp;&nbsp;
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="WinRadiusGray">
                            <div class="CommentList">
                                <asp:Repeater ID="rptComments" EnableViewState="false" runat="server">
                                    <ItemTemplate>
                                        <div>
                                            نام: &nbsp;<%#ShowItem(Eval("Name"))%></div>
                                        <div>
                                            ایمیل: &nbsp;<%#ShowItem(Eval("Email"))%></div>
                                        <div>
                                            &nbsp;<%#Eval("Comment")%></div>
                                        <div>
                                            &nbsp;<%#ShowDate(Eval("CommentDate"))%></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="WinRadiusGray">
                            <table class="tblProductTools">
                                <tr>
                                    <td>
                                        <div class="WinBlue1">
                                            <div class="WinBlue1Header">
                                                <div style="padding-right: 10px; padding-top: 3px;">
                                                    <asp:Label ID="Label5" runat="server" Text="معرفی محصول به دوستان"></asp:Label></div>
                                            </div>
                                            <div style="padding: 7px; direction: rtl;">
                                                <table style="direction: ltr;">
                                                    <tr>
                                                        <td style="text-align: right;">
                                                            <asp:TextBox ID="txtMyName" Width="100" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td style="direction: rtl; text-align: left;">
                                                            <asp:Label ID="Label233" runat="server" Text="نام شما:"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: right;">
                                                            <asp:TextBox ID="txtFriendName" Width="100" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td style="direction: rtl; text-align: left;">
                                                            <asp:Label ID="Label7" runat="server" Text="نام دوست شما:"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: right;">
                                                            <asp:TextBox ID="txtFromEmail" SkinID="English" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td style="direction: rtl; text-align: left;">
                                                            <asp:Label ID="Label2" runat="server" Text="ایمیل شما:"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtFriendEmail" SkinID="English" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td style="direction: rtl;">
                                                            <asp:Label ID="Label6" runat="server" Text="ایمیل دوست شما:"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Button ID="btnSend" CssClass="input-button" runat="server" OnClientClick="Hide(this)"
                                                                Text="ارسال" OnClick="btnSend_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div>
                                                <AKP:MsgBox runat="server" ID="msgBox1">
                                                </AKP:MsgBox>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="CommentForm">
                                            <div class="CommentFormHeader">
                                                نظر خود را در مورد این محصول با دیگران به اشتراک بگذارید
                                            </div>
                                            <div class="Lable">
                                                نام
                                            </div>
                                            <div>
                                                <AKP:ExTextBox ID="txtName" CssClass="input-text" runat="server"></AKP:ExTextBox>
                                            </div>
                                            <div class="Lable">
                                                ایمیل
                                            </div>
                                            <div>
                                                <AKP:ExTextBox ID="txtEmail" SkinID="English" CssClass="Eninput-text" runat="server"></AKP:ExTextBox>
                                            </div>
                                            <div class="Lable">
                                                متن
                                            </div>
                                            <div>
                                                <AKP:ExTextBox ID="txtComment" CssClass="input-text" TextMode="MultiLine" Width="200"
                                                    Height="100" runat="server"></AKP:ExTextBox>
                                            </div>
                                            <div style="margin-top: 10px;">
                                                <asp:Button ID="btnSendComment" CssClass="input-button" Text="ارسال نظر" Width="100"
                                                    runat="server" OnClick="btnSendComment_Click"></asp:Button>
                                            </div>
                                            <div style="margin-top: 5px;">
                                                <AKP:MsgBox runat="server" ID="msgBox">
                                                </AKP:MsgBox>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="WinRadiusGray">
                            <div class="BlueHeader2">
                                <div>
                                    برخی محصولات دیگر گروه
                                </div>
                            </div>
                            <div>
                                <asp:DataList ID="dtlRelatedProducts" RepeatColumns="4" CssClass="tblRelatedProducts"
                                    RepeatDirection="Horizontal" runat="server">
                                    <ItemTemplate>
                                        <div>
                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="cTitle" ToolTip='<%#FormatText(DataBinder.Eval(Container.DataItem, "Title")) %>'
                                                NavigateUrl='<%#"http://www.parset.com/Shop/ShowProduct.aspx?Code=" +DataBinder.Eval(Container.DataItem, "Code")%>'>
                                <%#ShowPic(DataBinder.Eval(Container.DataItem, "Title"),DataBinder.Eval(Container.DataItem, "SmallPicFile"))%>
                                            </asp:HyperLink></div>
                                        <div class="ProName">
                                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cTitle" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                                NavigateUrl='<%#"http://www.parset.com/Shop/ShowProduct.aspx?Code=" +DataBinder.Eval(Container.DataItem, "Code") %>'><%#FormatText(DataBinder.Eval(Container.DataItem, "Title"))%></asp:HyperLink></div>
                                        <div class="Rial">
                                            <span>&nbsp;ریال&nbsp;<%#Tools.FormatCurrency2(DataBinder.Eval(Container.DataItem, "Price"))%></span></div>
                                        <div>
                                            <AKP:MsgBox runat="server" ID="msgMessage">
                                            </AKP:MsgBox>
                                            <asp:HyperLink ID="btnAddToBasket" NavigateUrl='<%#"http://www.parset.com/Shop/Order.aspx?ProductCode=" + DataBinder.Eval(Container.DataItem, "Code") %>'
                                                ImageUrl="~/images/buy.gif" ToolTip="خرید پستی" runat="server"></asp:HyperLink></div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
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
                                        <asp:HyperLink ID="HyperLink4" NavigateUrl='<%#"http://www.parset.com/Shop/ProductList.aspx?CatCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                                            runat="server"><%#DataBinder.Eval(Container.DataItem, "Name")%>&nbsp;<%#ShowNum( DataBinder.Eval(Container.DataItem, "ProductCount"))%></asp:HyperLink></NodeTemplate>
                                </telerik:RadTreeView>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="WinRadiusGray">
                    <div>
                        <UCMostSoldPros:MostSoldPros runat="server">
                        </UCMostSoldPros:MostSoldPros>
                    </div>
                </div>
                <div class="WinRadiusGray">
                    <div class="Center">
                        <div>
                            <asp:HyperLink ID="HyperLink3" runat="server" Target="_blank" ImageUrl="~/images/bannerMahak.jpg"
                                NavigateUrl="http://www.mahak-charity.org/main/iwanttohelpmahakrightnow"></asp:HyperLink>
                        </div>
                        <div class="Farsi">
                            درصدی از سود حاصل از فروش این سایت به حساب موسسه محک واریز میگردد . <font color="red">
                                (با خرید از ما ،شما هم در این امر خیر سهیم باشید )</font>
                        </div>
                    </div>
                </div>
                <div class="WinRadiusGray">
                    <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" ImageUrl="~/images/SepcialProducts.gif"
                        NavigateUrl="~/SpecialProducts.aspx"></asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
