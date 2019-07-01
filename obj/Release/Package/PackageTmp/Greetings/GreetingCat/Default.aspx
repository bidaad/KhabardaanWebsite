<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Greetings_GreetingCat_Default"
    Title="کارت تبریک" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Greeting.ascx" TagName="Greeting" TagPrefix="Grt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="ContentCatMore">
            <asp:HyperLink ID="hplNav" NavigateUrl="~/Greetings" runat="server">بازگشت به کارتهای تبریک </asp:HyperLink>
        </div>
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="کارت تبریک"
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
                       
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="انواع کارت تبریک"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: center">
                            <div class="Marginer2">
                                <Grt:Greeting ID="Greeting1" CardNum="999" runat="server" />
                            </div>
                            <div class="Clear">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
