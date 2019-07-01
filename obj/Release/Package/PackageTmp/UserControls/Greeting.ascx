<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_Greeting" Codebehind="Greeting.ascx.cs" %>
<div class="CatHeader">
    <asp:Label ID="lblCatName" runat="server"></asp:Label>
</div>
<asp:DataList ID="dtGreetings" EnableViewState="false" CssClass="tblGreetingCats"
    RepeatColumns="2" runat="server">
    <ItemTemplate>
        <div >
            <div>
                <asp:HyperLink runat="server" NavigateUrl='<%# "~/Greetings/SendGreeting/?ID=" + DataBinder.Eval(Container.DataItem, "ID")%>'><asp:Image runat="server" BorderStyle="Solid" BorderWidth="1" ImageUrl=<%# "http://static.parset.com/Pics/Greetings/" + DataBinder.Eval(Container.DataItem, "SmallPic")%> /></asp:HyperLink></div>
            <div>
                <%#Tools.ConvertToUnicode( DataBinder.Eval(Container.DataItem, "Title"))%></div>
        </div>
    </ItemTemplate>
</asp:DataList>
