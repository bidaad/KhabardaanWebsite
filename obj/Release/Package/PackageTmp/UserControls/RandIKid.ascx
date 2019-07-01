<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RandIKid.ascx.cs" Inherits="Parset.UserControls.RandIKid" %>
<div class="Padder20" style="text-align: center;font-family:Tahoma;direction:rtl;">
    <%--<div>
        <asp:HyperLink ID="hplBanner" Target="_blank" runat="server"></asp:HyperLink></div>
    <div style="height: 20px; font-weight: bold;">
        <asp:HyperLink ID="hplTitle" runat="server"></asp:HyperLink></div>
    <div style="text-align: right; direction: rtl; line-height: 150%;">
        <asp:Literal ID="ltrDesc" runat="server"></asp:Literal></div>--%>
    <asp:DataList ID="rptProducts" RepeatColumns="1" CssClass="tblIKidProNames" runat="server">
        <ItemTemplate>
            <div style="float:left;padding:8px;">
                <asp:HyperLink Target="_blank" NavigateUrl=<%#"~/Shop/" + Eval("Code") + "/" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".htm" %> runat="server">
                <img alt="<%#Eval("Title") %>" src="<%#"http://www.irankids.net/" + Eval("PicFile") %>" />
                </asp:HyperLink>
            </div>
            <asp:HyperLink Font-Bold="true" Target="_blank" NavigateUrl=<%#"~/Shop/" + Eval("Code") + "/" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".htm" %> runat="server"><%#Eval("Title") %></asp:HyperLink> <br />
            <%#Eval("Description") %>
            <asp:HyperLink ID="hplBuy" Target="_blank" ImageUrl="~/images/buy.gif" BorderWidth="0" BorderStyle="None" NavigateUrl=<%#"~/Shop/" + Eval("Code") + "/" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".htm" %> ToolTip="اضافه کردن محصول به سبد خرید"
                                                        runat="server"></asp:HyperLink>
        </ItemTemplate>
    </asp:DataList>
</div>
