<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootNoCol.master" CodeBehind="Default.aspx.cs" Inherits="Parset.Games.Default" %>

<%@ Register Src="~/UserControls/UCRandSmallContent.ascx" TagName="UCRandSmallContent" TagPrefix="UCRSC" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<%@ Register Src="~/UserControls/UCMostVisitedNews.ascx" TagName="UCMostVisitedNews" TagPrefix="UCMVN" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="row">
        <div class="col-md-10">
            <div class="row">
                    <div class="col-md-4">
                    <div class="WinRadiusGray">
                        <MNU:Menu runat="server" />
                    </div>

                    <div class="WinRadiusGray">
                        <UCMVN:UCMostVisitedNews runat="server" />
                    </div>

                </div>
                <div class="col-md-8">
                    <div class="WinRadiusGray">
                        <div class="Clear">
                            <div class="ListHeader">
                                <div id="divHeader">
                                    <h3>
                                    <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                                        </h3>
                                </div>
                            </div>
                        </div>

                        <ul class="GamesList">
                            <asp:Repeater ID="rptGames" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="GameItem">
                                            <div>
                                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Games/ShowGame.aspx?Code=" + Eval("Code") %>' runat="server">
                                                    <asp:Image ID="Image1" ImageUrl='<%#"http://static.parset.com/Files/Games/Pics/" + Eval("SmallPicFile") %>' runat="server"></asp:Image>
                                                </asp:HyperLink>

                                            </div>
                                            <div>
                                                <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/Games/ShowGame.aspx?Code=" + Eval("Code") %>' runat="server">
                                <%#Eval("Title") %>
                                                </asp:HyperLink>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <div class="Clear"></div>
                        <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                        <div class="Clear"></div>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="col-md-2">
            <div class="WinRadiusGray">
                <UCBanner:Banner runat="server" PositionCode="7" />
            </div>
            <div class="WinRadiusGray">
                <UCRSC:UCRandSmallContent runat="server" />
            </div>
        </div>

    </div>
</asp:Content>
