<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_ShowPhoto" Title="نمایش عکس" CodeBehind="ShowPhoto.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/CommentLikes.ascx" TagName="CommentLike" TagPrefix="CL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <!-- Load the Cloud Zoom JavaScript file -->
    <script type="text/javascript" src="../Scripts/cloud-zoom.1.0.2.min.js"></script>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="WinRadiusGray">
                        <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
                    </div>
            <div class="WinRadiusGray">
                    
                    <div class="Box1">
                        <div class="Box1Header">
                            <asp:Label ID="lblAlbumTitle" runat="server"></asp:Label>
                            <div class="RightAlign">
                                <asp:HyperLink ID="hplBackToPhotos" runat="server"></asp:HyperLink>
                            </div>
                        </div>
                        <div>
                            <asp:Label ID="lblAlbumMessageCaption" runat="server"></asp:Label>
                        </div>
                        <div>
                            <asp:HyperLink runat="server" ID="hplPhoto" rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4"
                                CssClass="cloud-zoom" Style="position: relative; display: block;">
                                <asp:Image ID="imgPhoto" BorderWidth="1" CssClass="AlbumPhoto" BorderColor="Black"
                                    OnClick="imgPhoto_Click" runat="server" />
                            </asp:HyperLink>
                        </div>
                        <div class="Clear">
                        </div>
                        <div>
                            <CL:CommentLike runat="server" HCItemTypeCode="3" ID="CommentLike1">
                            </CL:CommentLike>
                        </div>
                        <div>
                            <table>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="btnNext" ToolTip="عکس بعدی" OnClick="btnNext_Click" ImageUrl="~/images/btnNext.gif"
                                            runat="server" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblPhotoIndex" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="btnPrevious" ToolTip="عکس قبلی" OnClick="btnPrevious_Click"
                                            ImageUrl="~/images/btnPrevious.gif" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="lblHeaderContainer">
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
