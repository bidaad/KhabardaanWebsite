<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true"
    Inherits="Culture_Quran_SearchQuran_Default" Title="جستجوی قرآن" CodeBehind="Default.aspx.cs" %>



<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>

<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">
        <div class="form-inline">
            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در قرآن: " runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:DropDownList ID="ddlSores" DataTextField="Name" CssClass="form-control" DataValueField="ID" runat="server">
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
                <asp:Label ID="lblCatTitle" Text="قرآن" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear"></div>

        <div class="ParsetList">
            <div class="Marginer1">
                <div>
                    <div class="TopNav">
                        <asp:HyperLink ID="hplNav" NavigateUrl="~/Culture/Quran/" runat="server">بازگشت به فهرست سوره ها</asp:HyperLink>
                    </div>
                    <asp:Label ID="lblHeader" CssClass="Header1" runat="server"></asp:Label>
                </div>

                <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                    <ItemTemplate>
                        <div class="<%= GetClass()%>">
                            <div class="Aye">
                                (<%#DataBinder.Eval(Container.DataItem, "SoreName")%>&nbsp;<%#Tools.ConvertToUnicode(DataBinder.Eval(Container.DataItem, "Aye"))%>
                                )
                            </div>
                            <div>
                                <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Matn"), Keyword)%>
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
</asp:Content>
