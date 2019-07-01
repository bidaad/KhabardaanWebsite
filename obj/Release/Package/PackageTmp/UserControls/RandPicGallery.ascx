<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RandPicGallery.ascx.cs"
    Inherits="WebApp.UserControls.RandPicGallery" %>
<%@ Register Src="~/UserControls/TextLinks.ascx" TagName="TextLinks" TagPrefix="UCTextLinks" %>
<div class="GalCont">
<asp:DataList ID="rptRandGalleryPics" CssClass="tblRandGallery" RepeatDirection="Horizontal"
    RepeatColumns="3" EnableViewState="false" runat="server">
    <HeaderTemplate>
        <div class="NewsHead1">
            <div>
                گالری تصاویر
            </div>
        </div>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="GalleryTitle">
            <div>
                <asp:HyperLink ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>' ImageUrl='<%#"http://static.parset.com/Files/Galleries/" + DataBinder.Eval(Container.DataItem, "SmallPicFile") %>'
                    NavigateUrl='<%#"http://www.parset.com/Galleries/ShowGallery.aspx?GalleryCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                    Text='<%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"),60)%>'
                    runat="server"></asp:HyperLink>
            </div>
            <%--<div class="Farsi">
                <asp:HyperLink ID="HyperLink2" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                    NavigateUrl='<%#"http://www.parset.com/Galleries/ShowGallery.aspx?GalleryCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                    runat="server">
                <%#Tools.ShowBriefText(Eval("Title"), 50)%>
                </asp:HyperLink>
            </div>--%>
        </div>
    </ItemTemplate>
</asp:DataList>
<div class="MoreLeft">
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Galleries" runat="server"> گالری های دیگر » </asp:HyperLink>
</div>
</div>
<div class="clear">
</div>
