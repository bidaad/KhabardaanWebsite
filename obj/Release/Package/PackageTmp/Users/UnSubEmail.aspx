<%@ Page Title="Remove Email Address" Language="C#" MasterPageFile="~/Root1.master"
    AutoEventWireup="true" Inherits="Users_UnSubEmail" Codebehind="UnSubEmail.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/AddFreind.ascx" TagName="AddFriend" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Col2">
        <div class="Col2Left">
            <div class="Box1">
                <div class="Box1Header">
                    <asp:Label ID="Label12" runat="server" Text="حذف آدرس ایمیل"></asp:Label></div>
                <div class="Clear">
                </div>
                <div>
                    <div>
                        <AKP:MsgBox runat="server" ID="msg" />
                    </div>
                </div>
            </div>
        </div>
        <div class="Col2Right">
            <div class="Padder2">
                <div style="direction: rtl; text-align: right;">
                    <SRP:SmallRandPro ID="SmallRandPro1" runat="server" />
                </div>
                <div>
                    <rnd:randusers runat="server" id="RandUsers1" positioncode="1" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
