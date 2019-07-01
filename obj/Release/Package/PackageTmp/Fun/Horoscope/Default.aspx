<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Fun_Horoscope_Default"
    Title="طالع بینی" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="طالع بینی"
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
                        <UCBanner:Banner ID="Banner1" positioncode="11" runat="server" />
                    </div>
                    <div class="Box3">
                        <div class="MainHeader">
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست ماه ها"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: right">
                            <asp:DataList ID="dlMonths" EnableViewState="false" RepeatColumns="3" RepeatDirection="Horizontal"
                                CssClass="tblHoroscope" runat="server">
                                <ItemTemplate>
                                    <a href="ShowContent/?Month=<%#DataBinder.Eval(Container.DataItem, "ID")%>">
                                        <%#DataBinder.Eval(Container.DataItem, "Month")%></a></ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner3" positioncode="11" runat="server" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
