<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="GalleryList.aspx.cs" Inherits="Parset.Admin.Galleries.GalleryList" %>


<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/GalleryCat.ascx" TagName="GalleryCat" TagPrefix="GAL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="InnerBarWrap">
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnSearch" Text="جستجو" CssClass="btnSearch" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtKeyword" CssClass="txtKeyword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="جستجو در عکسها: "></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div class="LeftCol">
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    <div class="MainHeader">
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="عکسهای دیدنی"></asp:Label>
                    </div>
                    <div class="Clear">
                        <asp:Label runat="server" id="lblMessage" Text=""></asp:Label>
                    </div>
                    <div style="text-align: right">
                        <asp:Repeater ID="rptGalleries"  OnItemCommand="HandleRepeaterCommand" EnableViewState="true" runat="server">
                            <ItemTemplate>
                                <GAL:GalleryCat runat="server" GalleryCode='<%#Eval("Code") %>'></GAL:GalleryCat>
                                <div class="GalCatTitle">
                                    <%#Eval("Title") %>
                                    <asp:Button runat="server" id="btnDelete" Code=<%#DataBinder.Eval(Container.DataItem, "Code") %> CommandName="DeleteGallery" Text="Delete"></asp:Button>
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
    <div class="RightCol">
        <div>
            <RND:RandUsers runat="server" ID="RandUsers1" PositionCode="1" />
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
