<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_Quran_ShowContent_Default"
    Title="سوره قرآن" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
        <h3 class="CatHeader">
            <asp:Label ID="lblCatTitle" Text="قرآن"
                runat="server"></asp:Label>
        </h3>
    </div>
    <div class="clear">
    </div>
        
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box2">
                    <div>
                        <div class="TopNav">
                            <asp:HyperLink ID="hplNav" NavigateUrl="~/Culture/Quran/" runat="server">بازگشت به فهرست سوره ها</asp:HyperLink>
                        </div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="ListHeader">
                                <div class="ListHeader">
                                    <div id="divHeader">
                                        <div class="RightHeaderTitle">
                                            <table>
                                                <tr>
                                                    <td class="lbl">
                                                        <asp:Label ID="Label3" runat="server" Text="سوره:"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblSore" Font-Bold="true" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <div class="LangSwitch">
                                                            <asp:LinkButton CssClass="button" ID="btnSwitchLang" CurLang="Farsi" runat="server"
                                                                Text="مشاهده متن عربی" OnClick="btnSwitchLang_Click"></asp:LinkButton>
                                                        </div>
                                                    </td>
                                                    
                                                    
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="QuaranObj">
                                <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <div class="<%= GetClass()%>">
                                            <div class="Sore">
                                                (<%#Tools.ConvertToUnicode(DataBinder.Eval(Container.DataItem, "Aye"))%>)</div>
                                            <div style="text-align: justify">
                                                <%#DataBinder.Eval(Container.DataItem, "Matn")%>
                                            </div>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
    <script type="text/javascript">
        objOnSelect = document.getElementById("QuaranObj");
        objOnSelect.onmouseup = doSomethingWithSelectedText;
        objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>
</asp:Content>
