<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="AboutUs"
    Title="درباره پارست" CodeBehind="AboutUs.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle"  Text="درباره ما"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="KhabardaanList">
            <div class="Marginer1">
                <div class="Box3">
                    <div class="Clear">
                    </div>
                    <div class="Marginer2">
                        <div class="Farsi">
                            معرفی سایت خبردان
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
