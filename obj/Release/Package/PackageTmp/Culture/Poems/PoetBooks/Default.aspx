<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_Poems_PoetBooks_Default"
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
    <div class="WinRadiusGray">
        <div class="ContentCatMore">
        <asp:HyperLink ID="hplNav" NavigateUrl="~/Culture/Poems/Default.aspx" runat="server">بازگشت به فهرست شعرا</asp:HyperLink>
    </div>
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label  ID="lblPoetName" runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    
                    <div class="Box3" id="PoemList">
                       
                        <div>
                            <asp:Repeater ID="dtlPoetBooks" EnableViewState="false" runat="server">
                                <HeaderTemplate>
                                    <ul class="tblBooks">
                                       
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li >
                                        <div class="Book">
                                            <a href="../ShowPoet/?Poet=<%=PoetID %>&Book=<%#DataBinder.Eval(Container.DataItem, "ID")%>">
                                                <%#DataBinder.Eval(Container.DataItem, "Name")%></a>
                                        </div>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <UCRC:UCRandContent ID="UCRandContent4" runat="server" CatCode="115" />
    </div>
    <div class="WinRadiusGray">

        <div class="Clear">
        </div>
    </div>
    <script type="text/javascript">
        objOnSelect = document.getElementById("PoemList");
        objOnSelect.onmouseup = doSomethingWithSelectedText;
        objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>
</asp:Content>
