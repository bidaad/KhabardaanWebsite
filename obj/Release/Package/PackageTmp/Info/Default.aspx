<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Info_Default"
    Title="تجارت" CodeBehind="Default.aspx.cs" %>

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
                    <asp:Label ID="Label2" runat="server" Text="جستجو: "></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div class="LeftCol">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="MidPageBanner">
                    <UCBanner:Banner ID="Banner1" PositionCode="22" runat="server" />
                </div>
                <div class="Box3">
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست مشاغل"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: center">
                        <div class="Header1">
                            <asp:Label ID="Label1" runat="server" Text="گروه بندی"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div>
                            <asp:DataList ID="dlCats" EnableViewState="false" RepeatColumns="2" RepeatDirection="Horizontal"
                                CssClass="tblSiteCats" runat="server">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"http://www.parset.com/Info/ShowCat/?ActCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                                        runat="server"><%#DataBinder.Eval(Container.DataItem, "Title")%></asp:HyperLink>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="Clear">
                        </div>
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
