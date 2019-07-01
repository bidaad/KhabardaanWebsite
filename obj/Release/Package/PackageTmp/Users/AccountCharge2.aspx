<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootCol1.master" CodeBehind="AccountCharge2.aspx.cs"
    Inherits="Parset.UsersFolder.AccountCharge2" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CP1">
    <div class="WinRadiusGray">
        <ucusermenu:usermenu id="UserMenu1" runat="server" />
    </div>
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="شارژ حساب - مرحله دوم"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
        <div>
            <div class="Box1" style="margin-top: 10px;">
                <div class="PayPanel">
                    <div>
                        <AKP:MsgBox runat="server" ID="msg">
                        </AKP:MsgBox>
                    </div>
                    <div>
                        موجودي:
                        <asp:Label ID="lblAccountBalance" runat="server"></asp:Label>
                    </div>
                </div>
                <div>
                    <asp:Literal runat="server" ID="ltrInfo"></asp:Literal>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
