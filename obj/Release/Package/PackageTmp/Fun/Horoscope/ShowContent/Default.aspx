<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Fun_Horoscope_ShowContent_Default"
    Title="طالع بینی" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="طالع بینی"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
       
            <AKP:MsgBox ID="msgText" runat="server" />
       <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3" id="HorosList">
                        <div>
                            <asp:Label ID="Label1" CssClass="Header1" runat="server"></asp:Label>
                            <div class="TopNav">
                                <asp:HyperLink ID="hplNav" NavigateUrl="~/Fun/Horoscope/" runat="server">بازگشت به فهرست ماه ها</asp:HyperLink>
                            </div>
                        </div>
                        <div class="Clear">
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="طالع بینی"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div style="text-align: right">
                                    <asp:DataList ID="dlMonths" EnableViewState="false" OnItemCommand="HandleDataList"
                                        RepeatColumns="1" RepeatDirection="Horizontal" CssClass="tblListItems" runat="server">
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="btnSelectType" CommandName="SelectType" SelectedType='<%#DataBinder.Eval(Container.DataItem, "ID")%>'>
                                    <%#DataBinder.Eval(Container.DataItem, "Title")%></asp:LinkButton></ItemTemplate>
                                    </asp:DataList>
                                </div>
                                <div class="Clear">
                                </div>
                                <div class="HorzDot">
                                </div>
                                <div class="Marginer1">
                                    <div class="Farsi">
                                        <asp:Label ID="lblDesc" EnableViewState="false" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
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
    <script type="text/javascript">
        objOnSelect = document.getElementById("HorosList");
        objOnSelect.onmouseup = doSomethingWithSelectedText;
        objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>
</asp:Content>
