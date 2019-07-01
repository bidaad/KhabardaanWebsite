<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCRelatedContents.ascx.cs"
    Inherits="Parset.UserControls.UCRelatedContents" %>
<asp:Repeater ID="rptContents" runat="server" EnableViewState="false">
    <ItemTemplate>
        <ul>
        <li class="RelatedInnerContentCols">
            <div class="RelatedInnerContentLeft">
                <asp:HyperLink CssClass="ACont" onclick="OpenShop()" ToolTip='<%#Eval("Title") %>' Target="_blank" NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>'
                    runat="server"><%#Eval("Title") %></asp:HyperLink><br />
                    <div class="ContText">
                <%#ShowBriefContent( Eval("ContentText")) %>
            </div>
                    </div>
            <div class="RelatedInnerContentRight">
                <asp:HyperLink onclick="OpenShop()" ToolTip='<%#Eval("Title") %>' NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>'
                    Target="_blank" ImageUrl='<%#"http://static.parset.com/Files/Content/180/" +Eval("PicName") %>'
                    runat="server"></asp:HyperLink></div>
        </li>
            </ul>
    </ItemTemplate>
</asp:Repeater>
