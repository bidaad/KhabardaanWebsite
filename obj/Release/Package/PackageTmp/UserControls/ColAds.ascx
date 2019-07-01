<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_ColAds" CodeBehind="ColAds.ascx.cs" %>

<div class="panel danger">
    <div class="heading" style="width: 99%; float: right;">
        <div>
            <asp:Label ID="lblColHeader" runat="server"></asp:Label>
        </div>
    </div>
    <div class="Clear"></div>
    <div class=" Padder5">
        <asp:Repeater EnableViewState="false" ID="dtlAds" runat="server">
            <ItemTemplate>
                <div class="adSmall">
                    <h3>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"http://www.parset.com/Ads/ShowAds.aspx?ID=" + Eval("ID") %>'>
                    <%#Eval("Title") %>
                        </asp:HyperLink>
                    </h3>
                    <div>
                        <asp:HyperLink runat="server" NavigateUrl='<%#"http://www.parset.com/Ads/ShowAds.aspx?ID=" + Eval("ID") %>'>
                            <asp:Image ID="Image1" BorderWidth="1" ImageUrl='<%#"~/Files/Ads/" +  DataBinder.Eval(Container.DataItem, "SmallPicFile")%>'
                                runat="server" />
                        </asp:HyperLink>
                        <div>
                            تلفن :
                                <%#Eval("Tel") %>
                        </div>
                        <div>
                            نام :
                                <%#Eval("Name") %>
                        </div>
                    </div>


                </div>
                <div class="Clear">
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>

