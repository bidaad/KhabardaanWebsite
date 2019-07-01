<%@ Page Language="C#" MasterPageFile="~/EngPopup.master" AutoEventWireup="true"
    Inherits="Know_Iran_ShowMap_Default" Title="Iran Map" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Marginer1">
    <div class="WinRadiusGray">
    <AKP:MsgBox ID="msgText" runat="server" />
    <div class="ParsetList">
        <div class="Marginer1">
            <div class="Box3">
                <div class="MainHeader">
                </div>
                <div style="float: left;">
                    <asp:Label ID="lblHeader" Style="float: left; padding-left: 15px;" CssClass="Header1"
                        runat="server" Text="Iran Map"></asp:Label>
                </div>
                <div style="text-align: left;">
                    Iran formerly known internationally as Persia until 1935, is a country in Central
                    Eurasia,located on the northeastern shore of the Persian Gulf, northwestern shore
                    of the Gulf of Oman, and the southern shore of the Caspian Sea. Both "Persia" and
                    "Iran" are used interchangeably in cultural context; however, Iran is the name used
                    officially in political context.[8][9] The name Iran is a cognate of Aryan, and
                    means "Land of the Aryans".</div>
                <div class="Clear">
                </div>
                <div style="text-align: center">
                    <br />
                    <br />
                    <br />
                    <table style="direction:ltr;">
                        <tr>
                            <td>
                                <map name="FPMap0">
            <area href="?ID=11" shape="rect" coords="1, 1, 105, 68">
            <area href="?ID=12" shape="rect" coords="106, 1, 210, 68">
            <area href="?ID=13" shape="rect" coords="211, 1, 315, 68">
            <area href="?ID=14" shape="rect" coords="316, 1, 420, 68">
            <area href="?ID=15" shape="rect" coords="421, 1, 525, 68">
            <area href="?ID=16" shape="rect" coords="526, 1, 630, 68">
            <area href="?ID=21" shape="rect" coords="1, 69, 105, 136">
            <area href="?ID=22" shape="rect" coords="106, 69, 210, 136">
            <area href="?ID=23" shape="rect" coords="211, 69, 315, 136">
            <area href="?ID=24" shape="rect" coords="316, 69, 420, 136">
            <area href="?ID=25" shape="rect" coords="421, 69, 525, 136">
            <area href="?ID=26" shape="rect" coords="526, 69, 630, 136">
            <area href="?ID=31" shape="rect" coords="1, 137, 105, 204">
            <area href="?ID=32" shape="rect" coords="106, 137, 210, 204">
            <area href="?ID=33" shape="rect" coords="211, 137, 315, 204">
            <area href="?ID=34" shape="rect" coords="316, 137, 420, 204">
            <area href="?ID=35" shape="rect" coords="421, 137, 525, 204">
            <area href="?ID=36" shape="rect" coords="526, 137, 630, 204">
            <area href="?ID=41" shape="rect" coords="1, 205, 105, 272">
            <area href="?ID=42" shape="rect" coords="106, 205, 210, 272">
            <area href="?ID=43" shape="rect" coords="211, 205, 315, 272">
            <area href="?ID=44" shape="rect" coords="316, 205, 420, 272">
            <area href="?ID=45" shape="rect" coords="421, 205, 525, 272">
            <area href="?ID=46" shape="rect" coords="526, 205, 630, 272">
            <area href="?ID=51" shape="rect" coords="1, 273, 105, 340">
            <area href="?ID=52" shape="rect" coords="106, 273, 210, 340">
            <area href="?ID=53" shape="rect" coords="211, 273, 315, 340">
            <area href="?ID=54" shape="rect" coords="316, 273, 420, 340">
            <area href="?ID=55" shape="rect" coords="421, 273, 525, 340">
            <area href="?ID=56" shape="rect" coords="526, 273, 630, 340">
            <area href="?ID=61" shape="rect" coords="1, 341, 105, 408">
            <area href="?ID=62" shape="rect" coords="106, 341, 210, 408">
            <area href="?ID=63" shape="rect" coords="211, 341, 315, 408">
            <area href="?ID=64" shape="rect" coords="316, 341, 420, 408">
            <area href="?ID=65" shape="rect" coords="421, 341, 525, 408">
            <area href="?ID=66" shape="rect" coords="526, 341, 630, 408">
            <area href="?ID=71" shape="rect" coords="1, 409, 105, 476">
            <area href="?ID=72" shape="rect" coords="106, 409, 210, 476">
            <area href="?ID=73" shape="rect" coords="211, 409, 315, 476">
            <area href="?ID=74" shape="rect" coords="316, 409, 420, 476">
            <area href="?ID=75" shape="rect" coords="421, 409, 525, 476">
            <area href="?ID=76" shape="rect" coords="526, 409, 630, 476">
        </map>
                                <asp:Image runat="server" Style="cursor: pointer" BorderWidth="1" BorderColor="Black"
                                ImageUrl="http://static.parset.com/Pics/Iran/Iran.jpg" usemap="#FPMap0" />

                            </td>
                            <td><table style="direction:ltr;">
                        <tr>
                            <td colspan="3">
                                <asp:HyperLink ID="imgUp" Visible="false" ImageUrl="~/images/arrow-top.gif" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="imgLeft" Visible="false" ImageUrl="~/images/arrow-left.gif" runat="server" /><br />
                                <UCBanner:Banner ID="Banner1" runat="server" PositionCode="27" />
                            </td>
                            <td>
                                <span class='zoom' id='IranPic'>
                                <asp:Image ID="imgMapPart" ClientIDMode="Static" runat="server" Width="500" Height="325" Style="cursor: pointer" BorderWidth="1"
                                    BorderColor="Black" />
                                    </span>
                            </td>
                            <td>
                                <asp:HyperLink ID="imgRight" Visible="false" ImageUrl="~/images/arrow-right.gif"
                                    runat="server" /><br />
                                <UCBanner:Banner ID="Banner2" runat="server" PositionCode="28" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:HyperLink ID="imgBot" Visible="false" ImageUrl="~/images/arrow-bot.gif" runat="server" />
                            </td>
                        </tr>
                    </table></td>

                        </tr>

                    </table>
                    
                    <br />
                    <br />
                    <div style="text-align: center">
                        <UCBanner:Banner ID="Banner3" runat="server" PositionCode="29" />
                        
                    </div>
                    <br />
                </div>
                <div class="Box3Toolbar">
                    <Tlb:Toolbar ID="tlb1" runat="server" />
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</asp:Content>
