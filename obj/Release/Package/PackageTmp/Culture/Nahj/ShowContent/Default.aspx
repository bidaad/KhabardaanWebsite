<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_Nahj_ShowContent_Default"
    Title="خطبه نهج البلاغه" CodeBehind="Default.aspx.cs" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
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
                        <div class="Box3">
                            <div>
                                <div class="TopNav">
                                    <asp:HyperLink ID="hplNav" NavigateUrl="~/Culture/Nahj/" runat="server">بازگشت به فهرست خطبه ها</asp:HyperLink>
                                </div>
                                <asp:Label ID="lblHeader" CssClass="Header1" runat="server"></asp:Label>
                            </div>
                            <div class="Clear">
                            </div>
                            <div id="NahjObj" style="text-align: right">
                                <div class="Marginer2 text-justify">
                                    <asp:Label ID="lblMatn" CssClass="RTL" EnableViewState="false" runat="server"></asp:Label>
                                </div>
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
    </div>

</asp:Content>
