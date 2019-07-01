<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_Poems_ShoPoem_Default"
    CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="اشعار"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
        <div class="InnerBarWrap">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnSearch" Text="جستجو" CssClass="btnSearch" runat="server" OnClick="btnSearch_Click" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPoets" DataTextField="Name" DataValueField="ID" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtKeyword" CssClass="txtKeyword" runat="server"></asp:TextBox>
                    </td>
                    <td class="lbl">
                        <asp:Label ID="Label1" runat="server" Text="جستجو در اشعار: "></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <div class="TopNav">
                <asp:HyperLink ID="hplNav" NavigateUrl="../" runat="server">بازگشت به فهرست شعرا</asp:HyperLink>
            </div>
            <div class="Clear">
            </div>
        </div>
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">

                <div class="Box2">
                    <div class="ListHeader">
                        <div id="divHeader">
                            <table style="float: right">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblPoemCount" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="تعداد ابیات این شعر:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="hplPoetName" Font-Bold="true" runat="server"></asp:HyperLink>
                                    </td>
                                    <td class="lbl">
                                        <asp:Label ID="Label2" runat="server" Text="شاعر:"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <%=HeaderText %>
                        </div>
                    </div>
                    <div id="PoemList">
                        <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="<%= GetClass()%>">
                                    <div class="l">
                                        <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Part2"),Keyword)%>
                                    </div>
                                    <div class="r">
                                        <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Part1"), Keyword)%></div>
                                </div>
                                <div class="clear">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="Box2Toolbar">
                        <Tlb:Toolbar ID="tlb1" runat="server" />
                    </div>
                    <div class="Clear">
                    </div>
                </div>
            </div>
            <div class="Clear">
            </div>
        </div>
    </div>
    <div>
            <UCRC:UCRandContent ID="UCRandContent4" runat="server" CatCode="115" />
        </div>
    
    <script type="text/javascript">
        objOnSelect = document.getElementById("PoemList");
        objOnSelect.onmouseup = doSomethingWithSelectedText;
        objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>
</asp:Content>
