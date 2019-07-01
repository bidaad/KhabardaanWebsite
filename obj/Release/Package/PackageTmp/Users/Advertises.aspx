<%@ Page Title="" Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_Advertises" CodeBehind="Advertises.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UserTools.ascx" TagName="UserTools" TagPrefix="UTL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="Marginer1">
                <div class="WinRadiusGray">
                    <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
                </div>
                <div class="WinRadiusGray">
                                <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="آگهی ها "
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

                <div class="Box1">
                    <div class="Box1Header">
                        <asp:Label ID="Label12" runat="server" Text="آگهی ها"></asp:Label></div>
                    <div class="Col2D">
                        <asp:HyperLink ID="hplNewAd" ImageUrl="~/images/PllaceAd.jpg" NavigateUrl="~/Users/EditAdvertise.aspx"
                            runat="server"></asp:HyperLink>
                    </div>
                    <div class="MyAds">
                        <asp:Repeater runat="server" EnableViewState="false" ID="rptAdvertises">
                            <HeaderTemplate>
                                <table class="tblMyAds">
                                    <tr>
                                        <th>
                                            ویرایش
                                        </th>
                                        <th>
                                            نوع
                                        </th>
                                        <th>
                                            بازدید
                                        </th>
                                        <th>
                                            وضعیت
                                        </th>
                                        <th>
                                            گروه
                                        </th>
                                        <th>
                                            عنوان
                                        </th>
                                        <th>
                                            انقضا
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:HyperLink runat="server" NavigateUrl='<%#"http://www.parset.com/Users/EditAdvertise.aspx?Code=" + Eval("Code") %>'>
                                                    <asp:Image runat="server" ImageUrl="~/images/Edit-32.gif" />
                                        </asp:HyperLink>
                                    </td>
                                    <td>
                                        <%#Eval("RateName") %>
                                    </td>
                                    <td>
                                        <%#Eval("ViewCount") %>
                                    </td>
                                    <td>
                                        <%#Eval("Status") %>
                                    </td>
                                    <td>
                                        <%#Eval("CatName") %>
                                    </td>
                                    <td>
                                        <div class="SingleAdver">
                                            <a href="EditAdvertise.aspx?Code=<%#DataBinder.Eval(Container.DataItem, "Code")%>">
                                                <%#DataBinder.Eval(Container.DataItem, "Title")%></a>
                                        </div>
                                    </td>
                                    <td>
                                        <%#Tools.ChangeEnc( Eval("EDate").ToString()) %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                </div>
                <div class="Clear">
                </div>
                <div class="Spacer1">
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
