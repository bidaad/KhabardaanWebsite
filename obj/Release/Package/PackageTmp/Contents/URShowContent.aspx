<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="URShowContent.aspx.cs" Inherits="Parset.Contents.URShowContent" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandomProduct.ascx" TagName="RandomProduct" TagPrefix="RandPro" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<%@ Register Src="~/UserControls/UCRelatedContents.ascx" TagName="UCRelatedContents"
    TagPrefix="UCRelCon" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/ShareTools.ascx" TagName="ShareTools" TagPrefix="UCST" %>
<%@ Register Src="~/UserControls/RandNews.ascx" TagName="RandNews" TagPrefix="UCRN" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCContentCurCat" runat="server" />
    </div>
    <div class="WinRadiusGray">
        <ucrn:randnews runat="server" id="RandNews1" />
    </div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner2" runat="server" PositionCode="31" />
    </div>
    <div class="WinRadiusGray">
        <div class="Marginer1">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="CatHeaderCont">
                <h3 class="CatHeader">
                    <asp:Label ID="lblTitle" runat="server"></asp:Label>
                </h3>
            </div>
            <div class="clear">
            </div>
            <div class="Farsi">
                <asp:Literal ID="ltrContent" EnableViewState="false" runat="server"></asp:Literal>
            </div>
            <div class="Box3Toolbar">
                <Tlb:Toolbar ID="tlb1" runat="server" />
            </div>
        </div>
    </div>
    <div class="WinRadiusGray">
        <UCST:ShareTools ID="ShareTools1" runat="server"></UCST:ShareTools>
    </div>

    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="مطالب مرتبط" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="Clear">
        </div>
        <UCRelCon:UCRelatedContents runat="server" HCEntityTypeCode="4" ID="RelatedContents" />
    </div>

    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner1" runat="server" PositionCode="12" />
    </div>
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCRandContent1" runat="server" CatCode="2" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
