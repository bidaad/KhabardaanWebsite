<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Music_Default"
    Title="هنرمندان ایرانی" CodeBehind="Default.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>

<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
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
                    <div class="MainHeader">
                        هنرمندان موسیقی سنتی ایران
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست هنرمندان"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: right">
                        <asp:DataList ID="dtArtists" EnableViewState="false" RepeatColumns="5" RepeatDirection="Horizontal"
                            CssClass="tbl5Cols" runat="server">
                            <ItemTemplate>
                                <div>
                                    <asp:HyperLink runat="server" ToolTip='<%#DataBinder.Eval(Container.DataItem, "FullName")%>'
                                        NavigateUrl='<%#"http://www.parset.com/Music/ArtistAlbum.aspx?ArtistCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'>
                                        <asp:Image ID="Image1" BorderColor="Black" BorderWidth="1" ImageUrl='<%#"~/Files/Artists/" + DataBinder.Eval(Container.DataItem, "PicFile")%>'
                                            CssClass="ArtistThumb" runat="server" />
                                    </asp:HyperLink>
                                </div>
                                <div>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"http://www.parset.com/Music/ArtistAlbum.aspx?ArtistCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'>
                                    <%#DataBinder.Eval(Container.DataItem, "FullName")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
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
            <RND:RandUsers runat="server" ID="RandUsers1" PositionCode="1" />
        </div>
        <div>
            <SRP:SmallRandPro ID="SmallRandPro1" runat="server" />
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
