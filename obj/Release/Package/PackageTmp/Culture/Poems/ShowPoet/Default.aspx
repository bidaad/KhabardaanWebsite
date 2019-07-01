<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_Poems_ShowPoet_Default"
    CodeBehind="Default.aspx.cs" %>


<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandAlbum.ascx" TagName="RandAlbum" TagPrefix="RAL" %>

<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UCVisaCard.ascx" TagName="VisaCard" TagPrefix="UCV" %>
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
    <AKP:MsgBox ID="msgText" runat="server" />
    
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblHeader" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div class="ParsetList">
            <div class="Marginer1">
                <div class="MidPageBanner">
                    <UCBanner:Banner ID="Banner1" PositionCode="11" runat="server" />
                </div>
                <div class="Box2">
                    <div>
                        <div class="TopNav">
                            <asp:HyperLink ID="hplNav" runat="server">بازگشت به فهرست شعرا</asp:HyperLink>
                        </div>
                        
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: right">
                        <div class="Alphabet">
                            <asp:Repeater EnableViewState="false" runat="server" ID="rptAlaphabet">
                                <HeaderTemplate>
                                    <ul>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>
                                        <asp:HyperLink ID="hplNum" NavigateUrl='<%# "~/Culture/Poems/ShowPoet/?Poet=" + PoetID +"&Book=" + Book + "&FirstChar=" + Container.DataItem %>'
                                            runat="server"><%#Container.DataItem %>
                                        </asp:HyperLink>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="ListHeader">
                        <div id="divHeader">
                            <div class="RightHeaderTitle">
                                اولین بیت هر شعر در ذیل آمده است. لطفا برای مشاهده شعر کامل بر روی یک مصرع ، کلیک
                                کنید
                            </div>
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
                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                    <div class="Box2Toolbar">
                        <Tlb:Toolbar ID="tlb1" runat="server" />
                    </div>
                    <div class="Clear">
                    </div>
                </div>
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
