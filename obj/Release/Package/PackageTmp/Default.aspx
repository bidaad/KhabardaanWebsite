<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="_Default"
    Title="پارست :: پورتال فرهنگی خبری" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandomProduct.ascx" TagName="RandomProduct" TagPrefix="RandPro" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<%@ Register Src="~/UserControls/RandNews.ascx" TagName="RandNews" TagPrefix="UCRN" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="LeftCol">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="WinRadiusGray">
            <UCRN:RandNews runat="server" ID="RandNews1" />
        </div>
        <div class="WinRadiusGray">
            <div class="ContentCatMore">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Greetings" runat="server">بیشتر  »</asp:HyperLink>
            </div>
            <div class="CatHeaderCont">
                <h3 class="CatHeader">
                    <asp:Label ID="lblCatTitle" Text="کارتهای تبریک"
                        runat="server"></asp:Label>
                </h3>
            </div>
            <div class="clear">
            </div>
            <div class="Marginer2">
                <asp:DataList ID="dtGreetings" EnableViewState="false" CssClass="tblGreetingCats"
                    RepeatColumns="4" runat="server">
                    <ItemTemplate>
                        <div>
                            <div>
                                <asp:HyperLink ID="HyperLink34" runat="server" NavigateUrl='<%# "~/Greetings/GreetingCat/?CatID=" + DataBinder.Eval(Container.DataItem, "HCCatCode")%>'>
                                    <asp:Image ID="Image1" runat="server" GenerateEmptyAlternateText="true" BorderStyle="Solid" BorderWidth="1" ImageUrl='<%# "http://static.parset.com/Pics/Greetings/" + DataBinder.Eval(Container.DataItem, "SmallPic")%>' /></asp:HyperLink></div>
                            <div>
                                <%#Tools.ConvertToUnicode(DataBinder.Eval(Container.DataItem, "CatName"))%></div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <div class="WinRadiusGray">
            <div class="ContentCatMore">
                <asp:HyperLink ID="hplMore" NavigateUrl="~/GWords" runat="server">بیشتر  »</asp:HyperLink>
            </div>
            <div class="CatHeaderCont">
                <h3 class="CatHeader">
                    <asp:Label ID="Label1" Text="کلام بزرگان"
                        runat="server"></asp:Label>
                </h3>
            </div>
            <div class="clear">
            </div>
            <div class="Marginer1">
                <div class="Farsi" style="text-align: justify;">
                    <asp:Label ID="lblGreatWords" runat="server"></asp:Label>
                </div>
                <div style="text-align: left;">
                    <asp:Label ID="lblAuthor" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <div class="WinRadiusGray">
            <div class="ContentCatMore">
                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Culture/History/Default.aspx" runat="server">بیشتر  »</asp:HyperLink>
            </div>
            <div class="CatHeaderCont">
                <h3 class="CatHeader">
                    <asp:Label ID="Label2" Text="تقویم تاریخ"
                        runat="server"></asp:Label>
                </h3>
            </div>
            <div class="clear">
            </div>
            <div class="Marginer1">
                <div style="padding-top: 10px; text-align: right; direction: rtl;">
                    <asp:Repeater ID="rptHistory" runat="server" EnableViewState="false">
                        <ItemTemplate>
                            <div class="Farsi">
                                <span class="EYear">سال&nbsp;<%#Tools.ConvertToUnicode( DataBinder.Eval(Container.DataItem, "EYear")) %>:
                                </span><span style="direction: rtl; text-align: justify">
                                    <%#FormatEvent(Tools.FormatText(DataBinder.Eval(Container.DataItem, "Event1")))%></span>
                            </div>
                            <div class="clear">
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="MoreLeft">
                    <asp:HyperLink ID="hplHistory" NavigateUrl="~/Culture/History/Default.aspx" runat="server">بقیه رویدادهای امروز »</asp:HyperLink>
                </div>
                <div class="Clear">
                </div>
            </div>
        </div>
        <div>
            <UCRC:UCRandContent runat="server" MainCatCode="1" />
        </div>
        <div>
            <UCRC:UCRandContent ID="UCRandContent1" runat="server" MainCatCode="89" />
        </div>
        <div>
            <UCRC:UCRandContent ID="UCRandContent2" runat="server" MainCatCode="39" />
        </div>
        <div>
            <UCRC:UCRandContent ID="UCRandContent3" runat="server" MainCatCode="53" />
        </div>
        <div>
            <UCRC:UCRandContent ID="UCRandContent4" runat="server" MainCatCode="114" />
        </div>
        
    </div>
    <div class="Clear">
    </div>
</asp:Content>
