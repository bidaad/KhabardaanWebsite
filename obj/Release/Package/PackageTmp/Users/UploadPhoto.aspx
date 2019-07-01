<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true" Inherits="Users_UploadPhoto"
    Title="ارسال عکس" CodeBehind="UploadPhoto.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
    <asp:Panel ID="pnlUploader" runat="server">
        <div class="UserHead1">
            <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
        </div>
        <div class="Box1">
            <div class="Box1Header">
                <asp:Label ID="Label12" runat="server" Text="ارسال عکس"></asp:Label></div>
            <div class="Clear">
            </div>
            <div class="TextBold">
                <asp:Label ID="Label14" runat="server" Text="عکس خود را آپلود کنید تا همه بتوانند شما را ببینند."></asp:Label>
            </div>
            <div>
                <AKP:MsgBox runat="server" ID="msgBox">
                </AKP:MsgBox>
            </div>
            <div>
                <asp:Image ID="imgSamplePic" CssClass1="cUserImageMed" BorderWidth="1" ImageUrl="~/Files/Users/man_icon.gif"
                    runat="server" />
                <cs:CropImage ID="wci1" runat="server" Image="imgSamplePic" Ratio="1/1" X="80" Y="80"
                    MinSize="150" />
            </div>
            <div class="Clear">
            </div>
            <div>
                <div class="Farsi">
                    <div>
                        <asp:Label ID="Label13" runat="server" Text="شما میتوانید عکس خود را با فرمتهای JPG ، GIF  تا حجم 2MB آپلود کنید."></asp:Label>
                    </div>
                    <div>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button Text="ارسال عکس" ID="btnUpload" runat="server" OnClick="btnUpload_Click" />
                        <asp:Label ID="lblOr" runat="server" Text=" یا "></asp:Label>
                        <span style="position: relative; top: 0px;">
                            <asp:Button Text="حذف عکس جاری" ID="btnDelPhoto" runat="server" OnClick="btnDelPhoto_Click" /></span>
                    </div>
                    <div>
                    </div>
                    <div class="Clear">
                    </div>
                    <asp:Panel runat="server" Visible="false" ID="pnlSaveCropPhoto">
                        <asp:Label ID="Label1" runat="server" Text="لطفا محدوده عکس خود را انتخاب کنید و سپس"></asp:Label>
                        <asp:Button Text="عکس جدید را ثبت کنید" ID="btnSavePhoto" runat="server" OnClick="btnSavePhoto_Click" />
                    </asp:Panel>
                    <div class="Clear">
                    </div>
                    <div>
                        <asp:Label ID="Label15" runat="server" Text="با فشردن دکمه آپلود تایید میکنم که این عکس قوانین سایت را نقض نمیکند."></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div>
                        <asp:Label ID="lblUploadMessage" Visible="false" CssClass="cRFV" runat="server" Text="فرمت فایل قابل قبول نیست"></asp:Label>
                    </div>
                </div>
                <div class="Clear">
                </div>
                <div class="Col2ERight">
                    <div class="cDontRemind">
                        <asp:CheckBox ID="chkDontRemid" AutoPostBack="true" OnCheckedChanged="chkDontRemid_OnCheckedChanged"
                            Text="دوباره به من یادآوری نکن" runat="server" /></div>
                    <div class="NoThanks">
                        <asp:LinkButton ID="btnUploadNext" runat="server" OnClick="btnUploadNext_Click">مایل به آپلود عکس نیستم</asp:LinkButton>
                    </div>
                </div>
                <div class="Clear">
                </div>
            </div>
        </div>
    </asp:Panel>
    <div class="Clear">
    </div>
    <div class="lblHeaderContainer">
        <asp:Label ID="Label11" runat="server" Text="با پارست به دنیا متصل شوید"></asp:Label>
    </div>
    <div class="Features">
        <div>
            <asp:Label ID="Label8" runat="server" Text="دوستان خود را در هر کجای دنیا پیدا کنید"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label9" runat="server" Text="عکسهای خود را با بقیه به اشتراک بگذارید."></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label10" runat="server" Text="لینکهای مورد علاقه خود را به دوستانتان بفرستید."></asp:Label>
        </div>
    </div>
    <div class="Clear">
    </div>
</div>
</asp:Content>
