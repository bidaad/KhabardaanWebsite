<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_UserPhotos" Title="عکسهای کاربر" CodeBehind="UserPhotos.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <script type="text/javascript" src="../Scripts/jquery-1.2.2.pack.js">
    </script>
    <script type="text/javascript" src="../Scripts/stepcarousel.js">

        /***********************************************
        * Step Carousel Viewer script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
        * Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
        * This notice must stay intact for legal use
        ***********************************************/

    </script>
    <script type="text/javascript">

        stepcarousel.setup({
            galleryid: 'mygallery', //id of carousel DIV
            beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
            panelclass: 'panel', //class of panel DIVs each holding content
            statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
            contenttype: ['inline'] //content setting ['inline'] or ['external', 'path_to_external_file']
        })

    </script>
    <div class="WinRadiusGray">
                <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
            </div>
    <div class="WinRadiusGray">
                            <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="آلبوم "
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

            <div class="Box1">
                
                <div class="Box1Header">
                    
                    <div class="RightAlign">
                        <asp:HyperLink ID="hplBackToPhotos" runat="server"></asp:HyperLink>
                    </div>
                </div>
                <div>
                    <asp:Label ID="lblAlbumMessageCaption" runat="server"></asp:Label>
                </div>
            </div>
            <div class="lblHeaderContainer">
                <asp:Label ID="lblAlbumTitle" runat="server"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblNoPhoto" runat="server"></asp:Label>
                <asp:DataList runat="server" RepeatDirection="Horizontal" CellSpacing="5" RepeatColumns="3"
                    ID="rptPhotos">
                    <ItemTemplate>
                        <fieldset>
                            <div class="Padder2">
                                <asp:HyperLink ID="hplPhoto" PhotoCode='<%#DataBinder.Eval(Container.DataItem, "Code") %>'
                                    CssClass="cUserPhoto1" rel="lightbox" NavigateUrl='<%#"http://www.parset.com/Users/ShowPhoto.aspx?ID=" +DataBinder.Eval(Container.DataItem, "PhotoID")%>'
                                    ImageUrl='<%#Tools.ShowPic(DataBinder.Eval(Container.DataItem, "PicFile"), "images/PhotoAlbum.gif", "~/Files/UsersPhotos/")%>'
                                    runat="server" />
                            </div>
                        </fieldset>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
</asp:Content>
