<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_GWords_Default"
    Title="کلمات قصار" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>
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
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">
                        <div class="MainHeader">
                            کلام بزرگان علمی ، ادبی ، فرهنگی و ...در این قسمت به نمایش در می آدید.
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست گویندگان"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: right">
                            <asp:DataList ID="dtAutors" EnableViewState="false" RepeatColumns="4" RepeatDirection="Horizontal"
                                CssClass="tblListItems" runat="server">
                                <ItemTemplate>
                                    <a href="ShowWords/?Authors=<%#DataBinder.Eval(Container.DataItem, "Author")%>">
                                        <%#DataBinder.Eval(Container.DataItem, "Author")%></a>
                                </ItemTemplate>
                            </asp:DataList>
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
