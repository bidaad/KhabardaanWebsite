<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Inter_Default"
    Title="مصاحبه" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
                <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="مصاحبه"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div class="InnerBarWrap">
        </div>
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    <div class="MainHeader">
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="مصاحبه"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: right">
                        <asp:Repeater ID="rptItems" runat="server">
                            <ItemTemplate>
                                <div class="<%= GetClass()%>">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:HyperLink ID="HyperLink1" CssClass="InterTitle" runat="server" NavigateUrl='<%#"http://www.parset.com/Inter/ShowInter/?ID=" + DataBinder.Eval(Container.DataItem, "ID")%>'>
                                                    <%#DataBinder.Eval(Container.DataItem, "Title")%>
                                                </asp:HyperLink><br />
                                                <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Content"), 300)%>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="Image1" Width="70" NavigateUrl='<%#"http://www.parset.com/Inter/ShowInter/?ID=" + DataBinder.Eval(Container.DataItem, "ID")%>'
                                                    ImageUrl='<%#"~/Pics/Interviews/" + DataBinder.Eval(Container.DataItem, "Pic")%>'
                                                    runat="server" />
                                            </td>
                                        </tr>
                                    </table>
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
    <div class="Clear">
    </div>
</asp:Content>
