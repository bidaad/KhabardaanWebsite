<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCRandSmallContent.ascx.cs"
    Inherits="Parset.UserControls.UCRandSmallContent" %>

<asp:Repeater ID="rptContents" runat="server" EnableViewState="false">
    <ItemTemplate>
        <div class="SmallContentItem">
            <div class="SmallContentImg">
                <asp:HyperLink NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>' Target="_blank" ToolTip='<%#Eval("Title") %>' runat="server"><asp:Image runat="server" ImageUrl='<%#"http://static.parset.com/Files/Content/105/" +Eval("PicName") %>' AlternateText='<%#Eval("Title") %>' /></asp:HyperLink></div>
            <div>
                <asp:HyperLink CssClass="AContSmall" Target="_blank" NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>' runat="server"><%#Eval("Title") %></asp:HyperLink></div>
        </div>
    </ItemTemplate>
</asp:Repeater>
