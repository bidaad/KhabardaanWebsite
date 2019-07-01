<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="GWords_ShowWords_Default"
    Title="کلمات قصار" CodeBehind="Default.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
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
                <div class="Box2">
                    <div>
                        <div class="TopNav">
                            <asp:HyperLink ID="hplNav" NavigateUrl="~/GWords/" runat="server">بازگشت به فهرست سخنوران</asp:HyperLink>
                        </div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="ListHeader">
                        <div id="divHeader">
                            <table>
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="lblItemCount" Font-Bold="true" runat="server"></asp:HyperLink>
                                    </td>
                                    <td class="lbl">
                                        <asp:Label ID="Label2" runat="server" Text="تعداد:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblAuthor" Font-Bold="true" runat="server"></asp:Label>
                                    </td>
                                    <td class="lbl">
                                        <asp:Label ID="Label3" runat="server" Text="گوینده:"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <%=HeaderText %>
                        </div>
                    </div>
                    <div id="WordObj">
                    <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="<%= GetClass()%>">
                                <div>
                                    <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Words"),Keyword)%>.
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>    
    <div class="Clear">
    </div>
    <script type="text/javascript">
        objOnSelect = document.getElementById("WordObj");
        objOnSelect.onmouseup = doSomethingWithSelectedText;
        objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>
</asp:Content>
