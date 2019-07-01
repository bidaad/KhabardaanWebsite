<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_Nahj_Default"
    Title="نهج البلاغه" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>

<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">
        <div class="form-inline ">
            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در نهج البلاغه" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
            </div>
        </div>
    </div>


    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="نهج البلاغه" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear"></div>

        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="MidPageBanner">
                        <UCBanner:Banner ID="Banner3" PositionCode="11" runat="server" />
                    </div>
                    <div class="Box3">
                        <div class="MainHeader">
                            در اين بخش متن کامل فارسی و عربی نهج البلاغه وجود دارد که از طريق انتخاب شماره خطبه
                        يا جستجو بر روی خطبه ها قابل دسترسی مي باشند.
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست خطبه ها"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: right">
                            <asp:DataList ID="dtSores" EnableViewState="false" RepeatColumns="7" RepeatDirection="Horizontal"
                                CssClass="tblListItems" runat="server">
                                <ItemTemplate>
                                    <a href="ShowContent/?ID=<%#DataBinder.Eval(Container.DataItem, "Num")%>">خطبه&nbsp;<%#Tools.ConvertToUnicode( DataBinder.Eval(Container.DataItem, "Num"))%></a>
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

</asp:Content>
