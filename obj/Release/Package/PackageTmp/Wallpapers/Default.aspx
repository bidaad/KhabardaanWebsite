<%@ Page Language="C#" MasterPageFile="~/WallpaperMP.master" AutoEventWireup="true" Inherits="Wallpapers_Default" Title="" Codebehind="Default.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" Runat="Server">
    <asp:DataList ID="dtlCats" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div><a href="ShowList.aspx?CatCode=<%#DataBinder.Eval(Container.DataItem, "Code") %>">
            <img style="border-style:none" src="../CustomWall/150/<%#DataBinder.Eval(Container.DataItem, "CatPath") %>/<%#DataBinder.Eval(Container.DataItem, "Filename").ToString().ToLower().Replace(".jpg",".png") %>" />
            </a>
            </div>
            <div>
            <%#DataBinder.Eval(Container.DataItem, "Title") %>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

