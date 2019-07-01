<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="UserControls_SmallAdsList" Codebehind="SmallAdsList.ascx.cs" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<div class="panel warning">
    <div class="heading" >
        <asp:Label ID="lblColHeader" runat="server"></asp:Label>
    </div>
    <div class="content">
    
    <asp:Repeater EnableViewState="false" ID="rptAds" runat="server">
        <ItemTemplate>
            <div >
                <div class="<%=ShowAdClass() %>">
                    <div class="AdsSmallLeft">
                        <h3>
                            <asp:HyperLink runat="server" NavigateUrl='<%#"http://www.parset.com/Ads/ShowAds" + Eval("ID") + ".htm" %>'>
                                <%#Eval("Title") %>
                            </asp:HyperLink>
                        </h3>
                        <div >
                            <%#Tools.ShowBriefText(Eval("Description"), 400) %>
                        </div>
                    </div>
                    <div class="AdsSmallRight">
                        <div>
                            <%#Tools.ChangeEnc( Eval("ShamsiCreateDate").ToString()) %>
                        </div>
                        <div>
                            <asp:HyperLink  runat="server" NavigateUrl='<%#"http://www.parset.com/Ads/ShowAds" + Eval("ID") + ".htm" %>'>
                            <asp:Image  BorderWidth="1" ImageUrl='<%#"~/Files/Ads/" +  DataBinder.Eval(Container.DataItem, "SmallPicFile")%>'
                                runat="server" />
                                </asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <div class="Clear">
            </div>
        </ItemTemplate>
    </asp:Repeater>
        </div>
</div>
<div>
    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
</div>
