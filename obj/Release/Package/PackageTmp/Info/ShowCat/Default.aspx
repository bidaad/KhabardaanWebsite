<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Info_ShowCat_Default"
    Title="مراکز تجاری" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
    <div class="InnerBarWrap">
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnSearch" Text="جستجو" CssClass="btnSearch" runat="server" OnClick="btnSearch_Click" />
                </td>
                <td>
                    <asp:TextBox ID="txtKeyword" CssClass="txtKeyword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="جستجو در مراکز تجاری: "></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div class="LeftCol">
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="MidPageBanner">
                    <UCBanner:Banner ID="Banner1" PositionCode="22" runat="server" />
                </div>
                <div class="Box3">
                    <div class="TopNav">
                        <asp:HyperLink ID="hplNav" NavigateUrl="~/Info" runat="server">بازگشت به گروه های اصلی</asp:HyperLink>
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست مراکز تجاری"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: center">
                        <asp:Panel ID="pnlSubCats" runat="server">
                            <div class="Box4">
                                <div class="Marginer2">
                                    <div class="Header1">
                                        <asp:Label ID="Label1" runat="server" Text="گروه بندی"></asp:Label>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                    <div class="InfoCats">
                                        <asp:DataList ID="dlSites" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="tblSiteCats"
                                            runat="server">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"http://www.parset.com/Info/ShowCat/?ActCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                                                    runat="server"><%#DataBinder.Eval(Container.DataItem, "Title")%></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                </div>
                            </div>
                            <div class="Clear">
                            </div>
                            <div class="ListHeader">
                                <div id="divHeader">
                                    <AKP:MsgBox ID="msgText" runat="server" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                            <ItemTemplate>
                                <div class="<%= GetClass()%>">
                                    <div class="SingleSite">
                                        <div class="CompTelFax">
                                            <asp:Label ID="Label3" runat="server"><%#Tools.ConvertToUnicode( DataBinder.Eval(Container.DataItem, "Tel"))%>
                                            </asp:Label>
                                        </div>
                                        <div class="CompTitle">
                                            <asp:Label ID="HyperLink2" runat="server"><%#DataBinder.Eval(Container.DataItem, "Name")%>
                                            </asp:Label>
                                        </div>
                                        <div class="LinkDesc">
                                            <%#Tools.ConvertToUnicode( DataBinder.Eval(Container.DataItem, "Address"))%></div>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                    <div class="Box3Toolbar">
                        <Tlb:Toolbar ID="tlb1" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
    <div class="Clear">
    </div>
</asp:Content>
