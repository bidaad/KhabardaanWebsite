<%@ Page Language="C#" MasterPageFile="~/WallpaperMP.master" AutoEventWireup="true" Inherits="Wallpapers_ShowList" Title="" Codebehind="ShowList.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" Runat="Server">
    <asp:DataList ID="dtlWalls" RepeatDirection="Horizontal" CellSpacing="7" CssClass="tblWalls" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div><a href="DownloadWallpaper.aspx?Code=<%#DataBinder.Eval(Container.DataItem, "Code") %>">
            <img width="150" style="border-style:none" src="../CustomWall/150/<%#DataBinder.Eval(Container.DataItem, "CatPath") %>/<%#DataBinder.Eval(Container.DataItem, "FileName").ToString().Replace(".jpg",".png") %>" />
            </a>
            </div>
            <div><a href="DownloadWallpaper.aspx?Code=<%#DataBinder.Eval(Container.DataItem, "Code") %>">
            <%#DataBinder.Eval(Container.DataItem, "Title") %></a>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <div style="text-align:left">
        <div class="pager" >
            <ul>
                <asp:Repeater EnableViewState="false" runat="server" ID="rptPaging" 
                    onitemdatabound="PagingDataBound">
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="hplNum" runat="server"><%#DataBinder.Eval(Container.DataItem, "PageNum") %></asp:HyperLink></li></ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        <br />
    </div>
</asp:Content>

