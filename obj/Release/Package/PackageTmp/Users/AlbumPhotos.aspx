<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_AlbumPhotos" Title="Album Photos" CodeBehind="AlbumPhotos.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
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
        <div class="UserHead1">
            <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
        </div>
        <div class="Box1">
            <div class="Box1Header">
                <asp:Label ID="Label12" runat="server" Text=" آلبومها "></asp:Label></div>
            <div>
                <table>
                    <tr>
                        <td>
                            <div>
                                <asp:Label ID="Label2" runat="server" Text="ایجاد آلبوم جدید"></asp:Label></div>
                            <div>
                                <asp:TextBox ID="txtAlbumTitle" Width="360" runat="server"></asp:TextBox>
                            </div>
                            <div class="RightButtons">
                                <table style="float: right">
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="btnBackToAlbums" Text=" بازگشت " CssClass="button1" runat="server"
                                                OnClick="btnBackToAlbums_Click"></asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="btnCreateAlbum" Text=" ایجاد " CssClass="button1" runat="server"
                                                OnClick="btnCreateAlbum_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="Clear">
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="btnUpload">
                <asp:ImageButton OnClick="btnShowUploader_Click" ToolTip="ارسال عکسهای جدید برای این آلبوم"
                    ID="btnShowUploader" ImageUrl="~/images/UploadPhotos.gif" runat="server"></asp:ImageButton>
            </div>
        </div>
        <div class="BlueHeader">
            <asp:Label ID="lblAlbumMessageCaption" runat="server"></asp:Label>
        </div>
        <div class="lblHeaderContainer">
            <asp:Label ID="lblAlbumTitle" runat="server"></asp:Label>
        </div>
        <asp:Panel ID="pnlUploadPhoto" CssClass="cWin1" Visible="false" runat="server">
            <div class="Win1Container" style="padding: 15px;">
                <div class="Win1Header">
                    <asp:Label ID="lblUploadHeader" runat="server"></asp:Label>
                </div>
                <div class="Win1Header">
                    <asp:Label ID="lblTitle" runat="server"></asp:Label>
                </div>
                <div class1="Win1Cont">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
                <div class="Win1Buttons">
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="btnCancel" OnClick="btnCancelUploadPhoto_Click" runat="server" Text="انصراف" />
                            </td>
                            <td>
                                <asp:Button ID="btnUploadPhoto" OnClick="btnUploadPhoto_Click" runat="server" Text=" ارسال عکس " />
                            </td>
                        </tr>
                    </table>
                </div>
                <div>
                    <asp:Label ID="lblUploadMessage" runat="server"></asp:Label>
                </div>
            </div>
        </asp:Panel>
        <div>
            <asp:Label ID="lblNoPhoto" runat="server"></asp:Label>
            <fieldset>
                <legend>&nbsp;عکسهای آلبوم&nbsp;</legend>
                <asp:Repeater runat="server" ID="rptPhotos" OnItemCommand="HandleRepeaterCommand">
                    <ItemTemplate>
                        <div class="Col2D">
                            <div class="Col2DLeft">
                                <div id="mygallery" class1="stepcarousel">
                                    <div class1="belt">
                                        <div class1="panel">
                                            <asp:HyperLink ID="hplPhoto" BorderWidth="1" BorderColor="Black" PhotoCode='<%#DataBinder.Eval(Container.DataItem, "Code") %>'
                                                CssClass="cUserImage" rel="lightbox" NavigateUrl='<%#"http://www.parset.com/Files/UsersPhotos/" +DataBinder.Eval(Container.DataItem, "PicFile")%>'
                                                ImageUrl='<%#Tools.ShowPic(DataBinder.Eval(Container.DataItem, "PicFile"), "images/PhotoAlbum.gif", "~/Files/UsersPhotos/")%>'
                                                runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="Col2DRight">
                                <div>
                                    <table cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="2">
                                                <asp:Label ID="Label1" runat="server" Text="عنوان:"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtTitle" Text='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                                    runat="server"></asp:TextBox>&nbsp;
                                            </td>
                                            <td>
                                                <asp:ImageButton CommandName="DeletePhoto" OnClientClick="return confirm('آیا از حذف این عکس مطمئن هسنید?');"
                                                    ToolTip="Delete This Photo" ID="LinkButton1" ImageUrl="~/images/btnDelete1.gif"
                                                    runat="server" Text="حذف این عکس"></asp:ImageButton>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="Line3">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="ButtonsCont1">
                    <div style="float: right">
                        <asp:LinkButton ID="btnSaveChanges" Text=" ذخیره " CssClass="button2" runat="server"
                            OnClick="btnSaveChanges_Click"></asp:LinkButton>
                    </div>
                </div>
            </fieldset>
        </div>
        <div>
            <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
        </div>
    </div>
</asp:Content>
