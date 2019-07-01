<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" CodeBehind="URShowTabir.aspx.cs" Inherits="Fun_Tabir_ShowDetail_URShowTabir" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/UCRelatedContents.ascx" TagName="UCRelatedContents"
    TagPrefix="UCRelCon" %>
<%@ Register Src="~/UserControls/ShareTools.ascx" TagName="ShareTools" TagPrefix="UCST" %>
<%@ Register Src="~/UserControls/UCRandWallpaper.ascx" TagName="UCRandWallpaper" TagPrefix="UCRW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">

        <div class="form-inline">

            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در تعابیر " runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
            </div>

        </div>

    </div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner1" runat="server" PositionCode="31" />
    </div>
    <div class="WinRadiusGray">
        <div class="ContentCatMore">
            <asp:HyperLink ID="hplNav" NavigateUrl="~/Fun/Tabir" runat="server">بازگشت به تعابیر</asp:HyperLink>
        </div>
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="تعبیر خواب"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div>
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">

                    <div class="Box3">
                        <div style="text-align: right">
                            <div class="AlphabetBig">
                                <asp:Repeater EnableViewState="false" runat="server" ID="rptAlaphabet">
                                    <HeaderTemplate>
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <asp:HyperLink ID="hplNum" NavigateUrl='<%# "~/Fun/Tabir/ShowNames/?FirstChar=" + Server.UrlEncode(Container.DataItem.ToString()) %>'
                                                runat="server">تعبیر خواب <%#Container.DataItem %></asp:HyperLink></li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="ListHeader">
                            <div id="divHeader">
                                <h3>
                                    <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                                </h3>
                            </div>
                        </div>
                        <div style="text-align: right">
                            <div class="Marginer2">
                                <div id="TabirList" class="Farsi">
                                    <asp:Label ID="lblMeaning" CssClass="RTL" EnableViewState="false" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                        <div class="Tags">
                            <%=strTags %>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Clear">
                    </div>
                </div>
                <div class="Clear">
                </div>
            </div>
        </div>
    </div>
    <div class="WinRadiusGray">
        <div class="button">
            <asp:HyperLink NavigateUrl="~/Codes/TabirKhaab.aspx" runat="server">کدهای تعبیر خواب برای سایت یا وبلاگ شما</asp:HyperLink>
        </div>
    </div>
    <div class="WinRadiusGray">
        <UCST:ShareTools ID="ShareTools1" runat="server"></UCST:ShareTools>
    </div>
    <asp:Panel runat="server" ID="pnlRelatedTabirs" class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="Label3" Text="تعابیر مرتبط" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="Clear">
        </div>
        <asp:Repeater ID="rptRelatedTabirs" runat="server" EnableViewState="false">
            <ItemTemplate>
                <div class="<%#GetClass() %>">
                    <div class="tabirRow">
                        <div class="tabc1">
                            <asp:HyperLink ToolTip='<%#Eval("WordName") %>' runat="server" NavigateUrl='<%#"http://www.parset.com/Fun/Tabir/ShowDetail/?ID=" + Eval("ID") %>'>تعبیر خواب
                                            <%#Tools.ShowBriefText(Eval("WordName"), 10)%>
                            </asp:HyperLink>
                        </div>
                        <div class="tabc2">
                            <asp:HyperLink runat="server" NavigateUrl='<%#"http://www.parset.com/Fun/Tabir/ShowDetail/?ID=" + Eval("ID") %>'>
                                                <%#SelectText( DataBinder.Eval(Container.DataItem, "Meaning"))%></asp:HyperLink>
                        </div>
                    </div>
                </div>
                <div class="clear">
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>


    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="Label2" Text="مطالب مرتبط" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="Clear">
        </div>
        <UCRelCon:UCRelatedContents runat="server" HCEntityTypeCode="5" ID="RelatedContents" />
    </div>

    <UCBanner:Banner ID="Banner2" PositionCode="11" runat="server" />

    <div class="Clear">
    </div>
</asp:Content>

