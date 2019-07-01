<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Know_Cities_SearchCities_Default"
    Title="شهرهای ایران" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
    <div class="InnerBarWrap">
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnSearch" Text="جستجو" CssClass="btnSearch" runat="server" OnClick="btnSearch_Click" />
                </td>
                <td>
                    <asp:DropDownList ID="ddlStates" DataTextField="State" DataValueField="Code" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="txtKeyword" CssClass="txtKeyword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="جستجو در شهرها: "></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div class="LeftCol">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box2">
                    <div class="TopNav">
                        <asp:HyperLink ID="hplNav" NavigateUrl="~/Know/Cities" runat="server">بازگشت به فهرست استانها</asp:HyperLink>
                    </div>
                    <div class="ListHeader">
                        <div id="divHeader">
                            <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                        <HeaderTemplate>
                            <div class="Col3">
                                <div class="c1" style="font-weight: bold">
                                    استان
                                </div>
                                <div class="c2" style="font-weight: bold">
                                    شهر
                                </div>
                                <div class="c3" style="font-weight: bold">
                                    پیش شماره
                                </div>
                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="<%#GetClass() %>">
                                <div class="Col3">
                                    <div class="c1" style="font-weight: normal;">
                                        <%#DataBinder.Eval(Container.DataItem, "StateName")%>
                                    </div>
                                    <div class="c2">
                                        <%#Tools.HLText( DataBinder.Eval(Container.DataItem, "Name"), Keyword)%>
                                    </div>
                                    <div class="c3">
                                        <%#DataBinder.Eval(Container.DataItem, "Tel")%>
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
    </div>
</div>

    <div class="Clear">
    </div>
</asp:Content>
