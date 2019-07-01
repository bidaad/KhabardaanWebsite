<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCRandWallpaper.ascx.cs" Inherits="Parset.UserControls.UCRandWallpaper" %>
<%@ OutputCache Duration="180" VaryByParam="None" %> 

<div class="WinRadiusGray">
<h1>والپیپرهای دیدنی</h1>
    <asp:Repeater ID="rptWallpapers" runat="server">
        <ItemTemplate>
            <div class="WallItem">
                <div>
                <asp:HyperLink Target="_blank" NavigateUrl='<%#"http://www.wallpaper57.com/wallpaper/" + Eval("Code") + ".htm" %>'  ToolTip='<%#Eval("Title") %>' runat="server">
                <asp:Image AlternateText='<%#Eval("Title") %>' ImageUrl='<%#"http://static.parset.com/Files/wallpapers/" + Eval("MidFileName") %>'  runat="server" />
                    </asp:HyperLink>
                    </div>
                <div>
                    <%#Eval("Title") %>&nbsp;<%#Eval("WidthHeight") %>
                </div>
            </div>

        </ItemTemplate>

    </asp:Repeater>
</div>