<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Inter_ShowInter_Default"
    Title="مصاحبه" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
                <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="مصاحبه"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

    <div class="InnerBarWrap">
    </div>

    <AKP:MsgBox ID="msgText" runat="server" />
    <div class="ParsetList">
        <div class="Marginer1">
            <div class="Box3">
                <div class="TopNav">
                    <asp:HyperLink ID="hplNav" NavigateUrl="~/Inter" runat="server">بازگشت به مصاحبه ها</asp:HyperLink>
                </div>
                <div>
                    <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="مصاحبه"></asp:Label>
                </div>
                <div class="ViewNum">
                    <asp:Label ID="lblViewNum" runat="server"></asp:Label>
                </div>
                <div class="Clear">
                </div>
                <div style="text-align: right">
                    <div class="Marginer2">
                        <div>
                            <asp:Label ID="lblTitle" CssClass="InterTitle" runat="server"></asp:Label>
                        </div>
                        <div>
                            <div style="float: right; padding: 7px;">
                                <asp:Image ID="imgInter" runat="server" />
                            </div>
                            <div class="Farsi">
                                <asp:Label ID="lblContent" EnableViewState="false" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div style="float: left; color: Maroon; font-weight: bold;">
                            <asp:Label ID="lblSource" runat="server"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                    </div>
                </div>
                <div class="Box3Toolbar">
                    <Tlb:Toolbar ID="tlb1" runat="server" />
                </div>
            </div>
        </div>
    </div>
</div>
    <div class="Clear">
    </div>
</asp:Content>
