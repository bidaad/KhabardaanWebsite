<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="True" CodeBehind="URShowPoem.aspx.cs" Inherits="Poems_ShowPoem_URShowPoem" %>

<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
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
        <div class="ContentCatMore">
            <asp:HyperLink ID="hplNav" NavigateUrl="../" runat="server">بازگشت به فهرست شعرا</asp:HyperLink>
        </div>
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="اشعار"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>


        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">

                <div class="Box2">
                    <div class="ListHeader">
                        <div id="divHeader">
                            <table style="float: right">
                                <tr>
                                    
                                    <td><asp:Label ID="Label4" runat="server" Text="تعداد ابیات این شعر:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblPoemCount" runat="server"></asp:Label>
                                    </td>
                                    <td class="lbl" style="padding-right:30px;">
                                        <asp:Label ID="Label2" runat="server" Text="شاعر:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="hplPoetName" Font-Bold="true" runat="server"></asp:HyperLink>
                                    </td>
                                    
                                </tr>
                            </table>
                            <%=HeaderText %>
                        </div>
                    </div>
                    <div id="PoemList" class="Padder10">
                        <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                            <ItemTemplate>
                                <div class="row Poem">
                                    
                                    <div class="col-md-6 text-left">
                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "~/Poem" + Eval("PoemNum") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Part1")) + ".html" %>'>
                                            <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Part1"),Keyword)%></asp:HyperLink>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/Poem" + Eval("PoemNum") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Part1")) + ".html" %>'>
                                            <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Part2"),Keyword)%></asp:HyperLink>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <div class="row Poem">
                                    <div class="col-md-6 text-left PoemAlt">
                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "~/Poem" + Eval("PoemNum") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Part1")) + ".html" %>'>
                                            <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Part1"),Keyword)%></asp:HyperLink>
                                    </div>
                                    <div class="col-md-6 text-right PoemAlt">
                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# "~/Poem" + Eval("PoemNum") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Part1")) + ".html" %>'>
                                            <%#Tools.HLText(DataBinder.Eval(Container.DataItem, "Part2"),Keyword)%></asp:HyperLink>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </AlternatingItemTemplate>
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


</asp:Content>
