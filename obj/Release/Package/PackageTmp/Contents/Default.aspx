<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="Default.aspx.cs" Inherits="Parset.Contents.Default" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandomProduct.ascx" TagName="RandomProduct" TagPrefix="RandPro" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCContentCurCat" runat="server" MainCatCode="1" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent1" runat="server" MainCatCode="15" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent2" runat="server" MainCatCode="26" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent3" runat="server" MainCatCode="33" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent4" runat="server" MainCatCode="39" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent5" runat="server" MainCatCode="47" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent6" runat="server" MainCatCode="53" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent7" runat="server" MainCatCode="61" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent8" runat="server" MainCatCode="69" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent10" runat="server" MainCatCode="77" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent11" runat="server" MainCatCode="89" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent12" runat="server" MainCatCode="98" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent13" runat="server" MainCatCode="107" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent14" runat="server" MainCatCode="114" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent15" runat="server" MainCatCode="122" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
