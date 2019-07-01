<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true"
    Inherits="GWords_SearchWords_Default" Title="جستجوی کلام بزرگان" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">
        <div class="form-inline">
            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در کلمات قصار" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:DropDownList ID="ddlAuthors" CssClass="form-control" DataTextField="Author" DataValueField="Author"
                    runat="server">
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
            </div>
        </div>

    </div>
    <AKP:MsgBox ID="msgText" runat="server" />
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="سخن بزرگان"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>


        <div class="LeftCol">
            <div class="ParsetList">
                <div class="Marginer1">
                    <div>
                        <div class="TopNav">
                            <asp:HyperLink ID="hplNav" NavigateUrl="~/GWords/" runat="server">بازگشت به فهرست سخنوران</asp:HyperLink>
                        </div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server"></asp:Label>
                    </div>

                    <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                        <ItemTemplate>
                            <div class="<%#GetClass()%>">
                                <div>
                                    <a title="<%#DataBinder.Eval(Container.DataItem, "Author") %>" href="javascript:none">
                                        <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Words"), Keyword)%>. </a>
                                </div>
                                <div class="Author">
                                    <%#DataBinder.Eval(Container.DataItem, "Author") %>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
