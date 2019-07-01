<%@ Page Language="C#" MasterPageFile="~/WallpaperMP.master" AutoEventWireup="true" Inherits="WallpaperCats" Title="Wallpaper Categories" Codebehind="WallpaperCats.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" Runat="Server">
    <asp:DataList ID="dtlCats" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div><a href="ShowList.aspx?CatCode=<%#DataBinder.Eval(Container.DataItem, "Code") %>">
            <img style="border-style:none" src="CatImage.aspx?CatCode=<%#DataBinder.Eval(Container.DataItem, "Code") %>" />
            </a>
            </div>
            <div>
            <%#DataBinder.Eval(Container.DataItem, "Title") %>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

