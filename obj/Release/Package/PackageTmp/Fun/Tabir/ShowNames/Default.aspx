<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Fun_Tabir_ShowNames_Default"
    Title="تعبیر خواب" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/UCRandWallpaper.ascx" TagName="UCRandWallpaper" TagPrefix="UCRW" %>

<asp:content id="Content1" contentplaceholderid="CP1" runat="Server">
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
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="تعبیر خواب"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
        
        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">

                    <div class="Box2">
                        <div class="Clear">
                            <div class="ListHeader">
                                <div id="divHeader">
                                    <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                                </div>
                            </div>
                        </div>
                        <div class="Marginer1">
                            <div class="Farsi">
                                با کلیک بر روی هر حرف الفبا به تعابیری که با آن حرف شروع میشوند دسترسی پیدا کنید.
                            </div>
                        </div>
                        <div style="text-align: right">
                            <div class="AlphabetBig">
                                <asp:Repeater EnableViewState="false" runat="server" ID="rptAlaphabet" OnItemDataBound="AlpahbetDataBound">
                                    <HeaderTemplate>
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <asp:HyperLink ID="hplNum" NavigateUrl='<%# "~/Fun/Tabir/ShowNames/?FirstChar=" + Server.UrlEncode(Container.DataItem.ToString()) %>'
                                                runat="server">تعبیر خواب <%#Container.DataItem %></asp:HyperLink></li></ItemTemplate>
                                    <FooterTemplate>
                                        </ul></FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="Clear">
                        </div>
                        <asp:DataList ID="dtlItems" CssClass="tblTabirs" repeatColumns="3" runat="server" EnableViewState="false">
                            <ItemTemplate>
                                        <div >
                                            <asp:HyperLink ToolTip='<%#SelectText( DataBinder.Eval(Container.DataItem, "Meaning"))%>' runat="server" NavigateUrl='<%#"~/FTD" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("WordName")) + ".html" %>'>تعبیر خواب 
                                            <%#Tools.ShowBriefText(Eval("WordName"), 10)%>
                                            </asp:HyperLink>
                                        </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <div class="Clear">
                        </div>
                        <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                        <div class="Clear">
                        </div>
                        <div class="Box2Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="WinRadiusGray">
        <div class="button">
        <asp:HyperLink navigateUrl="~/Codes/TabirKhaab.aspx" runat="server">کدهای تعبیر خواب برای سایت یا وبلاگ شما</asp:HyperLink>
         </div>
    </div>
    <UCRW:UCRandWallpaper id="UCRandWallpaper1" runat="server" />
    <div class="WinRadiusGray">
        <div style="direction: ltr; text-align: left;">
            <UCBanner:Banner ID="Banner1" PositionCode="16" runat="server" />
        </div>
    </div>
    
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner3" positioncode="11" runat="server" />
    </div>
    <div class="Clear">
    </div>
</asp:content>
