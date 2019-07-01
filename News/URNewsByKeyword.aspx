<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="URNewsByKeyword.aspx.cs" Inherits="Khabardaan.News.URNewsByKeyword" %>

<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="panel">
        <h2>
            <asp:Literal ID="lblTitle" runat="server"></asp:Literal>
        </h2>
        <div class="Clear">
        </div>
        <div>
            <NL:NewsList runat="server" PageSize="30" ID="NewsList1">
            </NL:NewsList>
        </div>
        <h2>کلید واژه های دیگر</h2>
        <div class="RoundBorder1">
        <div class="KeywordList">
            <asp:DataList ID="dtlOtherKeywords" CssClass="tblTags" RepeatColumns="4" runat="server">
                <ItemTemplate>
                    <div><asp:HyperLink NavigateUrl='<%#"~/NK" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Name")) + ".html"%>' runat="server"><%#Eval("Name") %></asp:HyperLink></div>
                </ItemTemplate>
            </asp:DataList>

        </div>
            </div>
        <div class="ByKhabardaan">
            تمام خبرها با ربات <a href="https://www.khabardaan.ir/Crawler">خبردان</a> جمع آوری شده اند<br />
        </div>
    </div>
</asp:Content>
