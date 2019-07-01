<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCRandHorGal.ascx.cs" Inherits="Parset.UserControls.UCRandHorGal" %>

<div class="WinRadiusGray">
    <div class="RandHorGalCont">
    <asp:Repeater ID="dtlOtherGals" runat="server">
        <HeaderTemplate>
            <table class="tblOtherGals" ><tr></HeaderTemplate>
                <ItemTemplate><td>
                    <asp:hyperlink Target="_blank" runat="server" NavigateUrl='<%#"http://www.pixtools.net/Galleries/EngShowGallery.aspx?GalleryCode=" + Eval("GalleryCode") %>' >
                        <asp:Image  runat="server" Style="border: solid 1px #000000" 
                            ImageUrl='<%#"http://static.parset.com/Files/Galleries/" + Eval("SmallPicFile") %>' /></asp:hyperlink>

                              </td></ItemTemplate>
        <FooterTemplate></tr></table></FooterTemplate>
    </asp:Repeater>
        </div>
</div>
