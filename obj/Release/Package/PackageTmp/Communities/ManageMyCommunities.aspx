<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true"
    Inherits="Users_ManageMyCommunities" Title="مدیریت گروه های من" Codebehind="ManageMyCommunities.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/MessageBox.ascx" TagName="MessageBox" TagPrefix="Msg" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>

<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Col2">
        <div class="Col2Left">
            <div class="UserHead1">
                <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
            </div>
            <div class="Box1">
                <div class="Box1Header">
                    <asp:Label ID="Label12" runat="server" Text="گروه ها"></asp:Label></div>
                <div>
                    <table>
                        <tr>
                            <td>
                                <div>
                                    <asp:Label ID="Label2" runat="server" Text="ایجاد گروه جدید"></asp:Label></div>
                                <div>
                                    <asp:TextBox ID="txtCommunityTitle" Width="360" runat="server"></asp:TextBox>
                                </div>
                                <div class="RightButtons">
                                    <table style="float: right">
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="btnBackToCommunities" Text="بازگشت" CssClass="button1" runat="server"
                                                    OnClick="btnBackToCommunities_Click"></asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="btnCreateCommunity" Text="ایجاد" CssClass="button1" runat="server"
                                                    OnClick="btnCreateCommunity_Click"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="Clear">
                                </div>
                            </td>
                            <td style="vertical-align: top; text-align: center">
                                <div>
                                    <asp:Label ID="lblCommunityMessageCaption" runat="server"></asp:Label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <AKP:MsgBox runat="server" ID="msg" />
            </div>
            <div class="lblHeaderContainer">
                <asp:Label ID="lblNewFreindship" runat="server" Text="گروه های من"></asp:Label>
            </div>
            <asp:Panel ID="pnlUploadPhoto" CssClass="cWin1" Visible="false" runat="server">
                <div class="Win1Container" style="padding:15px;">
                    <div class="Win1Header">
                        <asp:Label ID="lblUploadHeader" runat="server"></asp:Label>
                    </div>
                    <div class="Win1Header">
                        <asp:Label ID="lblTitle" runat="server"></asp:Label>
                    </div>
                    <div class="Win1Cont">
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
            <div >
                <fieldset>
                    <legend>مدیریت گروه ها</legend>
                    <div class="Padder1">
                        <asp:Repeater runat="server" ID="rptCommunities" OnItemCommand="HandleRepeaterCommand">
                            <ItemTemplate>
                                <div class="Col2D">
                                    <div class="Col2DLeft">
                                        &nbsp;
                                        <asp:HyperLink ID="hplPhotoCover" CommunityCode='<%#DataBinder.Eval(Container.DataItem, "CommunityCode") %>'
                                            CssClass="cUserImage" NavigateUrl='<%#"http://www.parset.com/Communities/CommunityPosts.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                            ImageUrl='<%#Tools.ShowPic(DataBinder.Eval(Container.DataItem, "PicFile"), "images/SampleCommunity.jpg", "~/Files/CommunityPhotos/")%>'
                                            runat="server" />&nbsp;
                                    </div>
                                    <div class="Col2DRight">
                                        <div>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtTitle" Text='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                                            runat="server"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:HyperLink NavigateUrl='<%#"http://www.parset.com/Communities/CommunityPosts.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                                            ToolTip="ویرایش این گروه" ID="ImageButton1" ImageUrl="~/images/btnEdit.gif"
                                                            runat="server"></asp:HyperLink>
                                                    </td>
                                                    <td>
                                                        <asp:ImageButton CommandName="UploadPhoto" ToolTip="ارسال عکسهای جدید برای این گروه"
                                                            ID="btnShowUploader" ImageUrl="~/images/UploadPhotos.gif" runat="server"></asp:ImageButton>
                                                    </td>
                                                    <td>
                                                        <asp:ImageButton CommandName="DeleteCommunity" OnClientClick="return confirm('آیا از حذف این گروه و تمام عکسهای آن اطمینان دارید؟');"
                                                            ToolTip="Delete This Community" ID="LinkButton1" ImageUrl="~/images/btnDelete1.gif"
                                                            runat="server" Text="Delete This Community"></asp:ImageButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">
                                                        <asp:TextBox ID="txtDescription" CssClass="CommunityDesc" TextMode="MultiLine" Rows="3"
                                                            Text='<%#DataBinder.Eval(Container.DataItem, "Description") %>' runat="server"></asp:TextBox>
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
                    <div class="ButtonsCont1">
                <div style="float: right">
                    <asp:LinkButton ID="btnSaveChanges" Text="ذخیره" CssClass="button1" runat="server"
                        OnClick="btnSaveChanges_Click"></asp:LinkButton>
                </div>
            </div>
                </fieldset>
            </div>
            
        </div>
        <div class="Col2Right">
            <div class="Padder2">
                <div style="direction: rtl; text-align: right;">
                    <SRP:SmallRandPro ID="SmallRandPro1" runat="server" />
                </div>
                <div>
                    <RND:RandUsers runat="server" ID="RandUsers1" PositionCode="1" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
