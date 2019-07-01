<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Greetings_Default"
    Title="کارت تبریک" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Greeting.ascx" TagName="Greeting" TagPrefix="Grt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
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
                    <div class="MidPageBanner">
                        <UCBanner:Banner ID="Banner1" PositionCode="25" runat="server" />
                    </div>
                    <div class="Box3">
                        <div class="MainHeader">
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="انواع کارت تبریک"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: center">
                            <asp:Repeater ID="rptCats" EnableViewState="false" runat="server">
                                <ItemTemplate>
                                    <div class="GreetingCatItem">
                                        <div class="Marginer2">
                                            <Grt:Greeting ID="Greeting1" CardNum="4" CatCode='<%#DataBinder.Eval(Container.DataItem, "Code")%>'
                                                runat="server" />
                                            <div class="CatMore">
                                                <asp:HyperLink ID="hplMoreCards" NavigateUrl='<%#"http://www.parset.com/Greetings/GreetingCat/?CatID=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                                                    Text="بقیه کارتها..." runat="server"></asp:HyperLink>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
