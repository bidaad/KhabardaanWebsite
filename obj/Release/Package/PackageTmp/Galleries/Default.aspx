<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="Default.aspx.cs"
    Inherits="WebApp.Galleries.Default" %>

<%@ Register Src="~/UserControls/GalleryCat.ascx" TagName="GalleryCat" TagPrefix="GAL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
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
        <UCBanner:Banner ID="Banner3" PositionCode="27" runat="server" />
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
                    <div class="Box3">
                        <div class="MainHeader">
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="عکسهای دیدنی"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: right">
                            <asp:Repeater ID="rptGalleries" EnableViewState="false" runat="server">
                                <ItemTemplate>
                                    <div class="GalleryItem">
                                        <GAL:GalleryCat runat="server" EnableViewState="false" GalleryCode='<%#Eval("Code") %>'></GAL:GalleryCat>
                                        <div class="BlueColorBox">
                                            <div class="GalCatTitle">
                                                <asp:HyperLink NavigateUrl='<%#"http://www.parset.com/Galleries/ShowGallery.aspx?GalleryCode=" +Eval("Code") %>' runat="server">
                                                <%#Eval("Title") %>
                                                </asp:HyperLink>

                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                        <div class="Clear">
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="Clear">
    </div>
</asp:Content>
