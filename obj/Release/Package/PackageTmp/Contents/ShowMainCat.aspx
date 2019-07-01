<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="ShowMainCat.aspx.cs"
    Inherits="Parset.Contents.ShowMainCat" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandomProduct.ascx" TagName="RandomProduct" TagPrefix="RandPro" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
        <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner2" runat="server" PositionCode="11" />
    </div>

    <asp:Repeater ID="rptCats" EnableViewState="false" runat="server">
        <ItemTemplate>
            <div class="WinRadiusGray">
                <UCRC:UCRandContent ID="UCContentCurCat" runat="server" CatCode='<%#Eval("Code") %>' />
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="WinRadiusGray">
                <UCBanner:Banner ID="Banner1" runat="server" PositionCode="12" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
