<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Fun_Names_SearchNames_Default"
    Title="نامها" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/UCRandWallpaper.ascx" TagName="UCRandWallpaper" TagPrefix="UCRW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">
        <div class="form-inline">
            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در نامها: " runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
            </div>
        </div>
    </div>
    <AKP:MsgBox ID="msgText" runat="server" />
    <div class="WinRadiusGray">
            <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="نامها"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        
        <div class="LeftCol">
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="MidPageBanner">
                    </div>
                    <div class="Box2">
                        
                        <div class="Marginer1">
                            <div class="Farsi">
                                با کلیک بر روی هر حرف الفبا به نامهایی که با آن حرف شروع میشوند دسترسی پیدا کنید.
                            </div>
                        </div>
                        <div style="text-align: right">
                            <div class="Alphabet">
                                <asp:Repeater EnableViewState="false" runat="server" ID="rptAlaphabet">
                                    <HeaderTemplate>
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <asp:HyperLink ID="hplNum" NavigateUrl='<%# "~/Fun/Names/ShowNames/?FirstChar=" + Server.UrlEncode(Container.DataItem.ToString()) %>'
                                                runat="server"><%#Container.DataItem %>
                                            </asp:HyperLink>
                                        </li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul></FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="Clear">
                        </div>
                        <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                            <ItemTemplate>
                                <div class="<%#GetClass() %>">
                                    <div class="Col3">
                                        <div class="c1">
                                            <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Name"), Keyword)%>
                                        </div>
                                        <div class="c2">
                                            <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Meaning"), Keyword)%>
                                        </div>
                                        <div class="c3">
                                            <%#DataBinder.Eval(Container.DataItem, "Spell")%>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="Clear">
                        </div>
                        <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                        <div class="Box2Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
            <UCRW:UCRandWallpaper id="UCRandWallpaper1" runat="server" />
        </div>
        
    </div>
    <div class="Clear">
    </div>
</asp:Content>
