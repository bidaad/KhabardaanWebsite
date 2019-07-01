<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VerRandGalleries.ascx.cs"
    Inherits="Parset.UserControls.VerRandGalleries" %>
<div>
    <asp:Repeater ID="rptRandGalleryPics" EnableViewState="false" runat="server">
        <HeaderTemplate>
            <div class="NewsHead1">
                <div style="float: left;">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Galleries" runat="server"> همه عکسها » </asp:HyperLink>
                </div>
                <div>
                    عکسهای تصادفی
                </div>
            </div>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="GalleryTitleVer">
                <div>
                    <asp:HyperLink ID="HyperLink1" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                        ImageUrl='<%#"~/Files/Galleries/" + DataBinder.Eval(Container.DataItem, "SmallPicFile") %>'
                        NavigateUrl='<%#"http://www.parset.com/Galleries/ShowGallery.aspx?GalleryCode=" + DataBinder.Eval(Container.DataItem, "Code")%>'
                        Text='<%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"),60)%>'
                        runat="server"></asp:HyperLink>
                </div>
                <div class="Farsi">
                    <%#DataBinder.Eval(Container.DataItem, "Title")%>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
