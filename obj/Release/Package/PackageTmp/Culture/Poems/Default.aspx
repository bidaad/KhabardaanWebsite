<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_Poems_Default"
    Title="بزرگترین مجموعه شعر پارسی" CodeBehind="Default.aspx.cs" %>


<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>

<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<asp:Content ID="Content2" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">
        <div class="form-inline">
            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در اشعار" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:DropDownList ID="ddlPoets" DataTextField="Name" CssClass="form-control" DataValueField="ID" runat="server">
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
                <asp:Label ID="lblCatTitle" Text="اشعار"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
        <AKP:MsgBox ID="msgText" runat="server" />

        <div class="Box3">
            <div class="MainHeader">
                در این بخش بیش از 340000 بیت شعر از 35 شاعر نامی ايران برای استفاده همه دوستان فرهنگ
                ایران موجود است. با کلیک بر روی نام شاعر و انتخاب اثر شاعر، به شعرهای وی دسترسی
                پیدا کنید. همچنین میتوانید بر روی اشعار یک شاعر خاص یا همه شعرا جستجو کنید.
            </div>
            <div>
                <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست شعرا"></asp:Label>
            </div>
            <div class="Clear">
            </div>
            <div style="text-align: right">
                <asp:DataList ID="dtPoets" EnableViewState="false" Style="float: right; display: block;"
                    RepeatColumns="4" RepeatDirection="Horizontal" CssClass="tblListItems" runat="server">
                    <ItemTemplate>
                        <a href="PoetBooks/?Poet=<%#DataBinder.Eval(Container.DataItem, "ID")%>">
                            <%#DataBinder.Eval(Container.DataItem, "Name")%></a>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="Clear">
            </div>
            <div class="Box3Toolbar">
                <Tlb:Toolbar ID="tlb1" runat="server" />
            </div>
        </div>
    </div>
    <div>
        <UCRC:UCRandContent ID="UCRandContent4" runat="server" CatCode="115" />
    </div>

</asp:Content>
