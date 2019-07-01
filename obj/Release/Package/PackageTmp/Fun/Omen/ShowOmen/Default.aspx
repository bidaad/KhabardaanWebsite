<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Fun_Omen_ShowOmen_Default"
    Title="فال حافظ" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="ContentCatMore">
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Culture/Poems/ShowPoet/?Poet=1&Book=1"
                runat="server">فهرست تمام غزلهای حافظ</asp:HyperLink>
        </div>
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="فال حافظ"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>


        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">
                        <div class="Clear">
                        </div>
                        <div style="text-align: center">
                            <asp:Image ID="imgOmenResult" runat="server" />
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: center">
                            <asp:LinkButton CssClass="button" ID="btnOmen" runat="server" Text="دوباره نیت کنید"
                                OnClick="btnOmen_Click"></asp:LinkButton>
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
