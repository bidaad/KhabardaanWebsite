<%@ Page Title="" Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_EditAdvertise" CodeBehind="EditAdvertise.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UserTools.ascx" TagName="UserTools" TagPrefix="UTL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
            <div class="WinRadiusGray">
                <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
            </div>

    <div class="WinRadiusGray">
                        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblHeader" Text="ایجاد آگهی جدید "
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div class="Marginer1">
            <div class="Box1">
                <div class="AdverForm">
                    <div style="margin-bottom: 5px;">
                        <AKP:MsgBox runat="server" ID="msgBox">
                        </AKP:MsgBox>
                    </div>
                    <div>
                        <div class="Ctrl">
                            <AKP:Combo runat="server" ID="cboHCAdvertiseCatCode">
                            </AKP:Combo>
                        </div>
                        <div class="Lbl">
                            <asp:Label ID="Label1" runat="server" Text="گروه:"></asp:Label>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div>
                        <div class="Ctrl">
                            <AKP:ExTextBox ID="txtTitle" CssClass="EditAdTitle" MaxLength="200" runat="server"></AKP:ExTextBox>
                        </div>
                        <div class="Lbl">
                            <asp:Label ID="Label2" runat="server" Text="عنوان:"></asp:Label>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="AdverForm2Col" style="height: 150px;">
                        <div class="Ctrl">
                            <AKP:ExTextBox ID="txtDescription" CssClass="AdText" TextMode="MultiLine" runat="server"></AKP:ExTextBox>
                        </div>
                        <div class="Lbl">
                            <asp:Label ID="Label3" runat="server" Text="شرح آگهی:"></asp:Label>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="AdverForm2Col">
                        <div class="LeftNewAd">
                            <div class="Ctrl">
                                <AKP:ExTextBox ID="txtTel" MaxLength="200" runat="server"></AKP:ExTextBox>
                            </div>
                            <div class="Lbl">
                                <asp:Label ID="Label5" runat="server" Text="تلفن:"></asp:Label>
                            </div>
                        </div>
                        <div class="RightNewAd">
                            <div class="Ctrl">
                                <AKP:ExTextBox ID="txtName" MaxLength="200" runat="server"></AKP:ExTextBox>
                            </div>
                            <div class="Lbl">
                                <asp:Label ID="Label4" runat="server" Text="نام:"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="AdverForm2Col">
                        <div class="LeftNewAd">
                            <div class="Ctrl">
                                <AKP:ExTextBox ID="txtPrice" MaxLength="200" runat="server"></AKP:ExTextBox>
                            </div>
                            <div class="Lbl">
                                <asp:Label ID="Label6" runat="server" Text="قیمت:"></asp:Label>
                            </div>
                        </div>
                        <div class="RightNewAd">
                            <div class="Ctrl">
                                <AKP:Combo ID="cboHCDurationCode" AllowNull="false" runat="server">
                                </AKP:Combo>
                            </div>
                            <div class="Lbl">
                                <asp:Label ID="Label10" runat="server" Text="اعتبار:"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="AdverForm2Col">
                        <div class="LeftNewAd">
                        </div>
                        <div class="RightNewAd">
                            <div class="Ctrl">
                                <AKP:Combo ID="cboHCStateCode" runat="server">
                                </AKP:Combo>
                            </div>
                            <div class="Lbl">
                                <asp:Label ID="Label9" runat="server" Text="موقعیت:"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="AdverForm2Col">
                        <div class="Ctrl">
                            <AKP:ExCheckBox ID="chkShowContactAdvetiserWin" runat="server"></AKP:ExCheckBox>
                        </div>
                        <div class="Lbl">
                            <asp:Label ID="Label14" runat="server" Text="پنجره تماس:"></asp:Label>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div>
                        <div class="Ctrl">
                            <AKP:ExTextBox ID="txtAddress" CssClass="AdAddress" runat="server"></AKP:ExTextBox>
                        </div>
                        <div class="Lbl">
                            <asp:Label ID="Label8" runat="server" Text="آدرس:"></asp:Label>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <asp:Panel runat="server" ID="pnlFileUpload" class="AdverForm2Col">
                        <div class="Ctrl">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                        <div class="Lbl">
                            <asp:Label ID="Label13" runat="server" Text="عکس:"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div>
                    </div>
                </div>
                <div class="Clear">
                </div>
                <asp:Panel runat="server" ID="pnlUploadedImage">
                    <div>
                        <asp:Image ID="imgAdsPic" BorderWidth="1" ImageUrl="~/images/sample-1.jpg" runat="server" />
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="CropCont">
                        <%--<cs:CropImage ID="wci1" Ratio="1/1" X="80" Y="80" MinSize="150" runat="server" Image="imgAdsPic" />--%>
                    </div>
                </asp:Panel>
                <div class="Clear">
                </div>
                <asp:Panel runat="server" ID="pnlKeywords" Visible="false" CssClass="Win2">
                    <div class="cWarning">
                        لطفا کلمات کلیدی پیشنهادی را مشاهده فرمایید و در صورت نیاز تغییر دهید.
                    </div>
                    <div class="Clear" style="height: 30px;">
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="Win2Header">
                                <asp:Label ID="Label7" runat="server" Text="کلمات کلیدی"></asp:Label></div>
                            <div>
                                <asp:Repeater ID="rptKeywords" OnItemCommand="HandleRepeaterCommand" runat="server">
                                    <ItemTemplate>
                                        <div class="SingleKeyword">
                                            <div class="Right">
                                                <asp:ImageButton ID="btnDeleteKeyword" Text="حذف" ImageUrl="~/images/delete-24x24.gif"
                                                    CommandName="RemoveKeyword" runat="server" />
                                            </div>
                                            <div class="Left">
                                                <%#Container.DataItem.ToString()%>
                                            </div>
                                        </div>
                                        <div class="Clear">
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="Clear">
                            </div>
                            <div class="NewKeyword">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnNewKeyword" OnClick="btnNewKeyword_Click" runat="server" Text="اضافه کردن کلمه کلیدی" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtNewKeyword" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="Farsi">
                                            <asp:Label ID="Label11" runat="server" Text="کلمه کلید جدید:"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="Clear">
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
                <div style="text-align: left;">
                    <asp:Button ID="btnEditAdsStep1" Text="اصلاح" CssClass="LargeBtn" Visible="false"
                        runat="server" OnClick="btnEditAdsStep1_Click" />
                    <asp:Button ID="btnEditAds" Visible="false" CssClass="LargeBtn" Text="ثبت تغییرات"
                        runat="server" OnClick="btnEditAds_Click" />
                    <asp:Button ID="btnStep1" Visible="false" CssClass="LargeBtn" Text="شروع ثبت" runat="server"
                        OnClick="btnStep1_Click" />
                    <asp:Button ID="btnNewAds" Visible="false" CssClass="LargeBtn" Text="ذخیره آگهی"
                        runat="server" OnClick="btnNewAds_Click" />
                </div>
                <%--<div>
                        <asp:Button ID="btnPay" runat="server" Text="پرداخت" onclick="btnPay_Click" />
                    </div>--%>
            </div>
            <div class="Clear">
            </div>
        </div>
    </div>
</asp:Content>
