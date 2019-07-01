<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCTextGalleries.ascx.cs" Inherits="Parset.UserControls.UCTextGalleries" %>
<%@ OutputCache Duration="300" VaryByParam="None" %> 
<div class="WinRadiusGray">
    <div class="MVCCont">
    <asp:Repeater ID="rptRandGals" runat="server">
        <ItemTemplate>
            <div>
                <asp:HyperLink target="_blank" NavigateUrl='<%#"http://www.parset.com/Gal" + Eval("Code") + "_" + Eval("Title") + ".html" %>' runat="server"><%#Tools.ShowBriefText(Eval("Title"),45) %></asp:HyperLink>
            </div>

        </ItemTemplate>

    </asp:Repeater>
        </div>
    </div>