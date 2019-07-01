<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_Albums" Title="آلبومها" CodeBehind="Albums.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
            <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
        </div>
    <div class="WinRadiusGray">
                        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="آلبومها "
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div>
            <div class="Box1">
                
                    <table>
                        <tr>
                            <td>
                                <div class="Farsi" style="height: 25px;">
                                    <asp:Label ID="Label2" runat="server" Text="ایجاد آلبوم جدید"></asp:Label></div>
                                <div>
                                    <asp:TextBox ID="txtAlbumTitle" Width="360" runat="server"></asp:TextBox>
                                </div>
                                <div class="RightButtons">
                                    <asp:LinkButton ID="btnCreateAlbum" Text=" ایجاد " CssClass="button1" runat="server"
                                        OnClick="btnCreateAlbum_Click"></asp:LinkButton>
                                </div>
                                <div class="Clear">
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="BlueHeader">
                <asp:Label ID="lblAlbumMessageCaption" runat="server"></asp:Label>
            </div>
            <div class="lblHeaderContainer">
                <asp:Label ID="lblNewFreindship" runat="server" Text="آلبومهای من"></asp:Label>
            </div>
            <asp:Panel ID="pnlUploadPhoto" CssClass="cWin1" Visible="false" runat="server">
                <div class="Win1Container" style="padding: 7px;">
                    <div class="Win1Header">
                        <asp:Label ID="lblUploadHeader" runat="server"></asp:Label>
                    </div>
                    <div class="Win1Header">
                        <asp:Label ID="lblTitle" runat="server"></asp:Label>
                    </div>
                    <div class1="Win1Cont" style="height: 40px; padding-top: 10px;">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                    <div class="Win1Buttons">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="btnCancel" OnClick="btnCancelUploadPhoto_Click" runat="server" Text="انصراف" />
                                </td>
                                <td>
                                    <asp:Button ID="btnUploadPhoto" OnClick="btnUploadPhoto_Click" runat="server" Text="ارسال عکس" />
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
                <asp:Repeater runat="server" ID="rptPhotos" OnItemCommand="HandleRepeaterCommand">
                    <ItemTemplate>
                        <div class="Col2D">
                            <div class="Col2DLeft">
                                <asp:HyperLink ID="hplPhotoCover" AlbumID='<%#DataBinder.Eval(Container.DataItem, "ID") %>'
                                    CssClass="cUserImage" NavigateUrl='<%#"http://www.parset.com/Users/AlbumPhotos.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                    ImageUrl='<%#Tools.ShowPic(DataBinder.Eval(Container.DataItem, "PicFile"), "images/PhotoAlbum.gif", "~/Files/UsersPhotos/")%>'
                                    runat="server" />
                            </div>
                            <div class="Col2DRight">
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text="عنوان: "></asp:Label></div>
                                <div>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtTitle" Text='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                                    runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:HyperLink NavigateUrl='<%#"http://www.parset.com/Users/AlbumPhotos.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                                    ToolTip="Edit This Album" ID="ImageButton1" ImageUrl="~/images/btnEdit.gif" runat="server"></asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:ImageButton CommandName="UploadPhoto" ToolTip="ارسال عکسهای جدید برای این آلبوم"
                                                    ID="btnShowUploader" ImageUrl="~/images/UploadPhotos.gif" runat="server"></asp:ImageButton>
                                            </td>
                                            <td>
                                                <asp:ImageButton CommandName="DeleteAlbum" OnClientClick="return confirm('آیا از حذف این آلبوم و تمام عکسهای آن مطمئن هستید?');"
                                                    ToolTip="Delete This Album" ID="LinkButton1" ImageUrl="~/images/btnDelete1.gif"
                                                    runat="server" Text="حذف این آلبوم"></asp:ImageButton>
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
            </div>
            <div>
                <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
            </div>
        </div>
    </div>
</asp:Content>
