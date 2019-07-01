<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Know_Cities_Default"
    Title="استانهای ایران" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
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
                    <td class="lbl">
                        <asp:Label ID="Label1" runat="server" Text="جستجو در شهرها: "></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">
                        <div class="MainHeader">
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست استانها"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: right">
                            <asp:DataList ID="dlStates" EnableViewState="false" RepeatColumns="8" RepeatDirection="Horizontal"
                                CssClass="tblListItems" runat="server">
                                <ItemTemplate>
                                    <a href="ShowCities/?StateCode=<%#DataBinder.Eval(Container.DataItem, "Code")%>">
                                        <%#DataBinder.Eval(Container.DataItem, "State")%></a></ItemTemplate>
                            </asp:DataList>
                        </div>
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
