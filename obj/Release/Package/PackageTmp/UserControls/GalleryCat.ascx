<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GalleryCat.ascx.cs"
    Inherits="WebApp.UserControls.GalleryCat" %>
    <div>
<ul class="GalCats">
    <asp:Repeater ID="rptRandGalleryPics"  runat="server">
        <ItemTemplate>
            <li>
                <div class="GalleryTitle">
                    <div>
                        <asp:HyperLink ID="HyperLink2" ImageUrl='<%#"http://static.parset.com/Files/Galleries/" + DataBinder.Eval(Container.DataItem, "SmallPicFile") %>'
                            NavigateUrl='<%#"http://www.parset.com/Galleries/ShowGallery.aspx?GalleryCode=" + DataBinder.Eval(Container.DataItem, "GalleryCode") + "#Pic" + DataBinder.Eval(Container.DataItem, "Code")%>'
                            runat="server"></asp:HyperLink>
                    </div>
                </div>
            </li>
        </ItemTemplate>
    </asp:Repeater>
</ul>
</div>
<div class="Clear"></div>