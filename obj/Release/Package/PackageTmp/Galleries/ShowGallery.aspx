<%@ Page Language="C#" AutoEventWireup="True" MasterPageFile="~/Root1.master" CodeBehind="ShowGallery.aspx.cs"
    Inherits="WebApp.Galleries.ShowGallery" %>

<%@ Register Src="~/UserControls/GalleryCat.ascx" TagName="GalleryCat" TagPrefix="GAL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/EngParsetPicNews.ascx" TagName="EngParsetPicNews"
    TagPrefix="UCEngParsetPicNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<style>

		
		/* optional icon style */
		.zoomIcon { 
			width:33px; 
			height:33px; 
			position:absolute; 
			top:0;
			right:0;
			background:url(icon.png);
		}

		/* these styles are for the demo, and are not required for the plugin */
		.zoom {
			display:inline-block;
			position:relative;
		}

		.zoom img {
			display: block;
		}

		.zoom img::selection { background-color: transparent; }

	</style>

<script type="text/javascript" src="http://static.parset.com/Scripts/jquery.zoom-min.js">
</script>

<script type="text/javascript">

    jQuery(document).ready(function ($) { //fire on DOM ready

        /*
        EXAMPLE 1:
        $('#myimage').addpowerzoom()

        EXAMPLE 2:
        $('img.vacation').addpowerzoom({
        defaultpower: 2,
        powerrange: [2,5],
        largeimage: null,
        magnifiersize: [100,100] //<--no comma following last option!
        })
        */
        //$('.GalPics img').addpowerzoom() //add zoom effect to all images inside DIV with ID "gallerydiv"
        <asp:Repeater ID="rptCode" EnableViewState="false" runat="server">
            <ItemTemplate>
            $('#ex<%#Eval("Code") %>').zoom();
        </ItemTemplate>
    </asp:Repeater>
        
    })

</script>
    <div class="WinRadiusGray Padder5">
        <div class="form-inline">
            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در عکسها" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" OnClick="btnSearch_Click" runat="server" />
            </div>
        </div>
    </div>
    
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="گالری عکس"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
        
        <div class="LeftCol">
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="MainHeader">
                    </div>
                    <div>
                        <h3><asp:literal ID="lblHeader" runat="server" Text="عکسهای دیدنی"></asp:literal></h3>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="GalPics">
                        <asp:Repeater ID="rptGalleryPics" EnableViewState="false" runat="server">
                            <ItemTemplate>
                                <div>
                                    <span class='zoom' id='ex<%#DataBinder.Eval(Container.DataItem, "Code") %>'>
                                    <a name="Pic<%#DataBinder.Eval(Container.DataItem, "Code") %>"></a>
                                    <asp:Image ImageUrl='<%#"http://static.parset.com/Files/Galleries/" + DataBinder.Eval(Container.DataItem, "ModPicFile") %>'
                                        runat="server"></asp:Image>
                                        </span>
                                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                    <div class="Clear">
                    </div>
                    <div>
                        <asp:Literal ID="ltrDesc" runat="server"></asp:Literal>

                    </div>

                    <div class="Box3Toolbar">
                        <Tlb:Toolbar ID="tlb1" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="Clear">
    </div>
</asp:Content>
