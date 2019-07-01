<%@ Page Language="C#" MasterPageFile="~/EngPopup.master" AutoEventWireup="true" Inherits="Know_Tehran_ShowMap_Default" Title="Tehran Map" CodeBehind="Default.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>

<asp:content id="Content1" contentplaceholderid="CP1" runat="Server">
    <style>
        .NormalImg {
            height: 600px;
        }

        .ImageCont {
            width: 600px;
            height: 700px;
            overflow: auto;
            scrollbar-3d-light-color: #ff8000;
            scrollbar-arrow-color: #000080;
            scrollbar-base-color: #000080;
            scrollbar-dark-shadow-color: #24369C;
            scrollbar-face-color: #99B3CC;
            scrollbar-highlight-color: #FFFFFF;
            scrollbar-shadow-color: #24369C;
        }
    </style>

    <script type="text/javascript">
        var ZoomFactor = 0.05;
        function Zoom(Prefix) {
            CurWidth = parseInt(document.getElementById('MyImg').style.width)
            NewWidth = CurWidth + CurWidth * ZoomFactor * Prefix;
            CurHeight = parseInt(document.getElementById('MyImg').style.height)
            NewHeight = CurHeight + CurHeight * ZoomFactor * Prefix;
            document.getElementById('MyImg').style.width = NewWidth + 'px'
            document.getElementById('MyImg').style.height = NewHeight + 'px'
        }
        function Restore() {
            document.getElementById('MyImg').style.width = '539px'
            document.getElementById('MyImg').style.height = '624px'
        }
    </script>

    <AKP:MsgBox ID="msgText" runat="server" />
    <div class="ParsetList">
        <div class="Marginer1">
            <div class="Box3">
                <div class="MainHeader">
                </div>
                <div style="text-align: left; width: 100%;">
                    <asp:Label ID="lblHeader" Style="float: left; padding-left: 15px;" CssClass="Header1"
                        runat="server" Text="Tehran Map"></asp:Label>
                </div>
                <div class="Clear">
                </div>
                <div style="text-align: left">
                    <div class="Marginer2">
                        Tehran is the capital and largest city of Iran, and the administrative center of
                        Tehran Province. Tehran is a sprawling city at the foot of the Alborz mountain range
                        with an immense network of highways unparalleled in Western Asia. The city is famous
                        for its numerous ski resorts on the Alborz slopes, large museums, art centers, and
                        palace complexes. Tehran is the largest city in the Middle East and is the 28th
                        most populated city in the world with a population of 7,873,000 people. Most Iranian
                        industries are headquartered in Tehran, including the manufacturing of automobiles,
                        electrical equipment, military weaponry, textiles, sugar, cement, and chemical products.
                        Tehran is also a leading center for the sale of carpets and furniture. There is
                        an oil refinery located south of the city
                    </div>
                </div>
                <div style="text-align: center">
                    <table style="direction:ltr;">
                        <tr>
                            <td>
                                <map name="FPMap0">
            <area  href="?ID=4" shape="rect" coords="192, 0, 223, 38">
            <area  href="?ID=3" shape="rect" coords="223, 0, 256, 38">
            <area  href="?ID=2" shape="rect" coords="256, 0, 289, 38">
            <area  href="?ID=1" shape="rect" coords="289, 0, 322, 38">
            <area  href="?ID=12" shape="rect" coords="128, 38, 160, 76">
            <area  href="?ID=11" shape="rect" coords="160, 38, 192, 76">
            <area  href="?ID=10" shape="rect" coords="192, 38, 223, 76">
            <area  href="?ID=9" shape="rect" coords="223, 38, 256, 76">
            <area  href="?ID=8" shape="rect" coords="256, 38, 289, 76">
            <area  href="?ID=7" shape="rect" coords="289, 38, 322, 76">
            <area  href="?ID=6" shape="rect" coords="322, 38, 353, 76">
            <area  href="?ID=5" shape="rect" coords="353, 38, 384, 76">
            <area  href="?ID=24" shape="rect" coords="36, 76, 66, 114">
            <area  href="?ID=23" shape="rect" coords="66, 76, 98, 114">
            <area  href="?ID=22" shape="rect" coords="98, 76, 128, 114">
            <area  href="?ID=21" shape="rect" coords="128, 76, 160, 114">
            <area  href="?ID=20" shape="rect" coords="160, 76, 192, 114">
            <area  href="?ID=19" shape="rect" coords="192, 76, 223, 114">
            <area  href="?ID=18" shape="rect" coords="223, 76, 256, 114">
            <area  href="?ID=17" shape="rect" coords="256, 76, 289, 114">
            <area  href="?ID=16" shape="rect" coords="289, 76, 322, 114">
            <area  href="?ID=15" shape="rect" coords="322, 76, 353, 114">
            <area  href="?ID=14" shape="rect" coords="353, 76, 384, 114">
            <area  href="?ID=13" shape="rect" coords="384, 76, 414, 114">
            <area  href="?ID=38" shape="rect" coords="6, 114, 36, 152">
            <area  href="?ID=37" shape="rect" coords="36, 114, 66, 152">
            <area  href="?ID=36" shape="rect" coords="66, 114, 98, 152">
            <area  href="?ID=35" shape="rect" coords="98, 114, 128, 152">
            <area  href="?ID=34" shape="rect" coords="128, 114, 160, 152">
            <area  href="?ID=33" shape="rect" coords="160, 114, 192, 152">
            <area  href="?ID=32" shape="rect" coords="192, 114, 223, 152">
            <area  href="?ID=31" shape="rect" coords="223, 114, 256, 152">
            <area  href="?ID=30" shape="rect" coords="256, 114, 289, 152">
            <area  href="?ID=29" shape="rect" coords="289, 114, 322, 152">
            <area  href="?ID=28" shape="rect" coords="322, 114, 353, 152">
            <area  href="?ID=27" shape="rect" coords="353, 114, 384, 152">
            <area  href="?ID=26" shape="rect" coords="384, 114, 414, 152">
            <area  href="?ID=25" shape="rect" coords="414, 114, 446, 152">
            <area  href="?ID=52" shape="rect" coords="6, 152, 36, 188">
            <area  href="?ID=51" shape="rect" coords="36, 152, 66, 188">
            <area  href="?ID=50" shape="rect" coords="66, 152, 98, 188">
            <area  href="?ID=49" shape="rect" coords="98, 152, 128, 188">
            <area  href="?ID=48" shape="rect" coords="128, 152, 160, 188">
            <area  href="?ID=47" shape="rect" coords="160, 152, 192, 188">
            <area  href="?ID=46" shape="rect" coords="192, 152, 223, 188">
            <area  href="?ID=45" shape="rect" coords="223, 152, 256, 188">
            <area  href="?ID=44" shape="rect" coords="256, 152, 289, 188">
            <area  href="?ID=43" shape="rect" coords="289, 152, 322, 188">
            <area  href="?ID=42" shape="rect" coords="322, 152, 353, 188">
            <area  href="?ID=41" shape="rect" coords="353, 152, 384, 188">
            <area  href="?ID=40" shape="rect" coords="384, 152, 414, 188">
            <area  href="?ID=39" shape="rect" coords="414, 152, 446, 188">
            <area  href="?ID=62" shape="rect" coords="6, 188, 36, 224">
            <area  href="?ID=61" shape="rect" coords="36, 188, 66, 224">
            <area  href="?ID=60" shape="rect" coords="66, 188, 98, 224">
            <area  href="?ID=59" shape="rect" coords="98, 188, 128, 224">
            <area  href="?ID=58" shape="rect" coords="128, 188, 160, 224">
            <area  href="?ID=57" shape="rect" coords="160, 188, 192, 224">
            <area  href="?ID=56" shape="rect" coords="192, 188, 223, 224">
            <area  href="?ID=55" shape="rect" coords="223, 188, 256, 224">
            <area  href="?ID=54" shape="rect" coords="256, 188, 289, 224">
            <area  href="?ID=53" shape="rect" coords="289, 188, 322, 224">
            <area  href="?ID=72" shape="rect" coords="6, 224, 36, 260">
            <area  href="?ID=71" shape="rect" coords="36, 224, 66, 260">
            <area  href="?ID=70" shape="rect" coords="66, 224, 98, 260">
            <area  href="?ID=69" shape="rect" coords="98, 224, 128, 260">
            <area  href="?ID=68" shape="rect" coords="128, 224, 160, 260">
            <area  href="?ID=67" shape="rect" coords="160, 224, 192, 260">
            <area  href="?ID=66" shape="rect" coords="192, 224, 223, 260">
            <area  href="?ID=65" shape="rect" coords="223, 224, 256, 260">
            <area  href="?ID=64" shape="rect" coords="256, 224, 289, 260">
            <area  href="?ID=63" shape="rect" coords="289, 224, 322, 260">
            <area  href="?ID=80" shape="rect" coords="66, 260, 98, 296">
            <area  href="?ID=79" shape="rect" coords="98, 260, 128, 296">
            <area  href="?ID=78" shape="rect" coords="128, 260, 160, 296">
            <area  href="?ID=77" shape="rect" coords="160, 260, 192, 296">
            <area  href="?ID=76" shape="rect" coords="192, 260, 223, 296">
            <area  href="?ID=75" shape="rect" coords="223, 260, 256, 296">
            <area  href="?ID=74" shape="rect" coords="256, 260, 289, 296">
            <area  href="?ID=73" shape="rect" coords="289, 260, 322, 296">
            <area  href="?ID=88" shape="rect" coords="66, 296, 98, 332">
            <area  href="?ID=87" shape="rect" coords="98, 296, 128, 332">
            <area  href="?ID=86" shape="rect" coords="128, 296, 160, 332">
            <area  href="?ID=85" shape="rect" coords="160, 296, 192, 332">
            <area  href="?ID=84" shape="rect" coords="192, 296, 223, 332">
            <area  href="?ID=83" shape="rect" coords="223, 296, 256, 332">
            <area  href="?ID=82" shape="rect" coords="256, 296, 289, 332">
            <area  href="?ID=81" shape="rect" coords="289, 296, 322, 332">
            <area  href="?ID=90" shape="rect" coords="192, 332, 223, 368">
            <area  href="?ID=89" shape="rect" coords="223, 332, 256, 368">
            <area  href="?ID=92" shape="rect" coords="192, 368, 223, 404">
            <area  href="?ID=91" shape="rect" coords="223, 368, 256, 404">
        </map>
                                <asp:Image ID="Image1" runat="server" Style="cursor: pointer" BorderWidth="1" BorderColor="Black"
                                ImageUrl="http://static.parset.com/Pics/Tehran/TehranMap.gif" usemap="#FPMap0" />
                            <br />
                            </td>
                            <td>
                                <div class="WinRadiusGray">
                                <table style="width:780px;background-color:white;">
                        <tr>
                            <td style="text-align: left;">
                                <img onclick="Zoom(-1)" style="cursor: pointer;" src="../../../images/ZoomOut.jpg" />
                            </td>
                            <td style="text-align: center;">
                                <img onclick="Restore()" style="cursor: pointer;" src="../../../images/Refresh.jpg" />
                            </td>
                            <td style="text-align: right;">
                                <img onclick="Zoom(1)" style="cursor: pointer;" src="../../../images/ZoomIn.jpg" />
                            </td>
                        </tr>
                    </table>
                                    </div>
                                <div class="WinRadiusGray">
                    <table style="direction:ltr;">
                        <tr>
                            <td colspan="3">
                                <UCBanner:Banner ID="Banner3" runat="server" PositionCode="26" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align:top;">
                                <asp:hyperlink ID="hplBack" BorderColor="White" BorderWidth="0"  runat="server" >
                                                        <asp:Image ID="Image2" BorderWidth="0" ImageUrl="~/images/site/Back-48.png" runat="server" />
                                </asp:hyperlink>
                                <UCBanner:Banner ID="Banner1" runat="server" PositionCode="24" />
                            </td>
                            <td>
                                <div class="ImageCont">
                        <img id="MyImg" alt="Tehran Map" class="NormalImg" style="width: 539px; height: 624px;"
                            src="http://static.parset.com/Pics/Tehran/<%=ID %>.jpg" />
                                </div>

                            </td>
                            <td style="vertical-align:top;">
                                <asp:hyperlink ID="hplNext" BorderWidth="0" runat="server" >
                                                        <asp:Image ID="Image3" BorderWidth="0" ImageUrl="~/images/site/Next-48.png" runat="server" />
                                </asp:hyperlink>
                                <UCBanner:Banner ID="Banner2" runat="server" PositionCode="25" />
                            </td>
                        </tr>
                        
                    </table>
                                    </div>

                            </td>

                        </tr>

                    </table>
                    
                    
                </div>
                <div class="Box3Toolbar">
                    <Tlb:Toolbar ID="tlb1" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:content>
