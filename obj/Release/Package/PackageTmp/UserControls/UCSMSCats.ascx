<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCSMSCats.ascx.cs" Inherits="Parset.UserControls.UCSMSCats" %>
<div class="SMSCatContainer" >
<asp:Repeater ID="rptSMSCats" EnableViewState="false" runat="server">
    <ItemTemplate>
        <div>
            <asp:HyperLink ID="hplSMSCat" NavigateUrl='<%#"http://www.parset.com/SMS/ShowCat.aspx?Code=" + Eval("Code") %>'
                runat="server">اس ام اس&nbsp;<%#Eval("Name") %></asp:HyperLink>
        </div>
    </ItemTemplate>
</asp:Repeater>
</div>