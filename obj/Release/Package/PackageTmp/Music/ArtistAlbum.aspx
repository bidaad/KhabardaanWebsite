<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true"
    Inherits="Music_ArtistAlbum" Title="Untitled Page" Codebehind="ArtistAlbum.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
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
                    <asp:Label ID="Label1" runat="server" Text="جستجو در آلبومها: "></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <div class="LeftCol">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    <div>
                        <div class="TopNav">
                            <asp:HyperLink ID="hplNav" NavigateUrl="~/Music" runat="server">بازگشت به فهرست هنرمندان</asp:HyperLink>
                        </div>
                    </div>
                    <div class="MainHeader">
                        هنرمندان موسیقی سنتی ایران
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست آلبومها"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: right">
                        <asp:DataList ID="dtAlbums" EnableViewState="false" RepeatColumns="5" RepeatDirection="Horizontal"
                            CssClass="tbl5Cols" runat="server">
                            <ItemTemplate>
                                <div class="AlbumItem" onclick="OpenAlbum('<%#DataBinder.Eval(Container.DataItem, "Code")%>')">
                                    <asp:Label ID="HyperLink1" runat="server" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title")%>'>
                                        <asp:Image ID="Image1" BorderColor="Black" BorderWidth="1" ImageUrl='<%#GetPic(DataBinder.Eval(Container.DataItem, "PicFile"))%>'
                                            CssClass="ArtistThumb" runat="server" />
                                    </asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="HyperLink2" runat="server">
                                    <%#DataBinder.Eval(Container.DataItem, "Title")%></asp:Label>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <div class="Marginer1">
                            <asp:Label ID="lblNoAlbum" Visible="false" runat="server" Text="هنوز هیج آلبومی اضافه نشده است"></asp:Label>
                        </div>
                    </div>
                    <div class="Clear">
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
        <Mnu:Menu ID="Menu1" runat="server" />
        <div>
            <SRP:SmallRandPro ID="SmallRandPro1" runat="server" />
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
