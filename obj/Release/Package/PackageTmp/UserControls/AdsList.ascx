<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_AdsList" CodeBehind="AdsList.ascx.cs" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<div>
    <ul class="<%=ShowAdClass() %>">
        <asp:Repeater EnableViewState="false" ID="dtlAds" runat="server">
            <ItemTemplate>
                <li>
                    <div class="ad">

                        <div class="row">
                            <div class="col-md-2">
                                <div class="<%#ShowRateClass(Eval("Rate")) %>">
                                </div>
                            </div>
                            <div class="col-md-10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/Ads/ShowAds.aspx?ID=" + Eval("ID")  %>'>
                                    <asp:Image ID="Image1" BorderWidth="1" ImageUrl='<%#"~/Files/Ads/" +  DataBinder.Eval(Container.DataItem, "SmallPicFile")%>'
                                        runat="server" />
                                </asp:HyperLink>
                            </div>
                            

                        </div>

                        <h3>
                            <asp:HyperLink runat="server" NavigateUrl='<%#"~/Ads/ShowAds.aspx?ID=" + Eval("ID") %>'>
                    <%#Eval("Title") %>
                            </asp:HyperLink>
                        </h3>
                    </div>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
    <div class="Farsi Padder5">
        <asp:Label ID="lblMessage" runat="server"></asp:Label></div>
</div>
<div class="Clear"></div>
<p>
    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
</p>
