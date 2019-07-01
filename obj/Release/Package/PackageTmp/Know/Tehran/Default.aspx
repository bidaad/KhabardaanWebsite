<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Know_Tehran_Default"
    Title="نقشه تهران" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="نقشه تهران"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <map name="FPMap0">
            <area target="_blank" href="ShowMap/?ID=4" shape="rect" coords="192, 0, 223, 38">
            <area target="_blank" href="ShowMap/?ID=3" shape="rect" coords="223, 0, 256, 38">
            <area target="_blank" href="ShowMap/?ID=2" shape="rect" coords="256, 0, 289, 38">
            <area target="_blank" href="ShowMap/?ID=1" shape="rect" coords="289, 0, 322, 38">
            <area target="_blank" href="ShowMap/?ID=12" shape="rect" coords="128, 38, 160, 76">
            <area target="_blank" href="ShowMap/?ID=11" shape="rect" coords="160, 38, 192, 76">
            <area target="_blank" href="ShowMap/?ID=10" shape="rect" coords="192, 38, 223, 76">
            <area target="_blank" href="ShowMap/?ID=9" shape="rect" coords="223, 38, 256, 76">
            <area target="_blank" href="ShowMap/?ID=8" shape="rect" coords="256, 38, 289, 76">
            <area target="_blank" href="ShowMap/?ID=7" shape="rect" coords="289, 38, 322, 76">
            <area target="_blank" href="ShowMap/?ID=6" shape="rect" coords="322, 38, 353, 76">
            <area target="_blank" href="ShowMap/?ID=5" shape="rect" coords="353, 38, 384, 76">
            <area target="_blank" href="ShowMap/?ID=24" shape="rect" coords="36, 76, 66, 114">
            <area target="_blank" href="ShowMap/?ID=23" shape="rect" coords="66, 76, 98, 114">
            <area target="_blank" href="ShowMap/?ID=22" shape="rect" coords="98, 76, 128, 114">
            <area target="_blank" href="ShowMap/?ID=21" shape="rect" coords="128, 76, 160, 114">
            <area target="_blank" href="ShowMap/?ID=20" shape="rect" coords="160, 76, 192, 114">
            <area target="_blank" href="ShowMap/?ID=19" shape="rect" coords="192, 76, 223, 114">
            <area target="_blank" href="ShowMap/?ID=18" shape="rect" coords="223, 76, 256, 114">
            <area target="_blank" href="ShowMap/?ID=17" shape="rect" coords="256, 76, 289, 114">
            <area target="_blank" href="ShowMap/?ID=16" shape="rect" coords="289, 76, 322, 114">
            <area target="_blank" href="ShowMap/?ID=15" shape="rect" coords="322, 76, 353, 114">
            <area target="_blank" href="ShowMap/?ID=14" shape="rect" coords="353, 76, 384, 114">
            <area target="_blank" href="ShowMap/?ID=13" shape="rect" coords="384, 76, 414, 114">
            <area target="_blank" href="ShowMap/?ID=38" shape="rect" coords="6, 114, 36, 152">
            <area target="_blank" href="ShowMap/?ID=37" shape="rect" coords="36, 114, 66, 152">
            <area target="_blank" href="ShowMap/?ID=36" shape="rect" coords="66, 114, 98, 152">
            <area target="_blank" href="ShowMap/?ID=35" shape="rect" coords="98, 114, 128, 152">
            <area target="_blank" href="ShowMap/?ID=34" shape="rect" coords="128, 114, 160, 152">
            <area target="_blank" href="ShowMap/?ID=33" shape="rect" coords="160, 114, 192, 152">
            <area target="_blank" href="ShowMap/?ID=32" shape="rect" coords="192, 114, 223, 152">
            <area target="_blank" href="ShowMap/?ID=31" shape="rect" coords="223, 114, 256, 152">
            <area target="_blank" href="ShowMap/?ID=30" shape="rect" coords="256, 114, 289, 152">
            <area target="_blank" href="ShowMap/?ID=29" shape="rect" coords="289, 114, 322, 152">
            <area target="_blank" href="ShowMap/?ID=28" shape="rect" coords="322, 114, 353, 152">
            <area target="_blank" href="ShowMap/?ID=27" shape="rect" coords="353, 114, 384, 152">
            <area target="_blank" href="ShowMap/?ID=26" shape="rect" coords="384, 114, 414, 152">
            <area target="_blank" href="ShowMap/?ID=25" shape="rect" coords="414, 114, 446, 152">
            <area target="_blank" href="ShowMap/?ID=52" shape="rect" coords="6, 152, 36, 188">
            <area target="_blank" href="ShowMap/?ID=51" shape="rect" coords="36, 152, 66, 188">
            <area target="_blank" href="ShowMap/?ID=50" shape="rect" coords="66, 152, 98, 188">
            <area target="_blank" href="ShowMap/?ID=49" shape="rect" coords="98, 152, 128, 188">
            <area target="_blank" href="ShowMap/?ID=48" shape="rect" coords="128, 152, 160, 188">
            <area target="_blank" href="ShowMap/?ID=47" shape="rect" coords="160, 152, 192, 188">
            <area target="_blank" href="ShowMap/?ID=46" shape="rect" coords="192, 152, 223, 188">
            <area target="_blank" href="ShowMap/?ID=45" shape="rect" coords="223, 152, 256, 188">
            <area target="_blank" href="ShowMap/?ID=44" shape="rect" coords="256, 152, 289, 188">
            <area target="_blank" href="ShowMap/?ID=43" shape="rect" coords="289, 152, 322, 188">
            <area target="_blank" href="ShowMap/?ID=42" shape="rect" coords="322, 152, 353, 188">
            <area target="_blank" href="ShowMap/?ID=41" shape="rect" coords="353, 152, 384, 188">
            <area target="_blank" href="ShowMap/?ID=40" shape="rect" coords="384, 152, 414, 188">
            <area target="_blank" href="ShowMap/?ID=39" shape="rect" coords="414, 152, 446, 188">
            <area target="_blank" href="ShowMap/?ID=62" shape="rect" coords="6, 188, 36, 224">
            <area target="_blank" href="ShowMap/?ID=61" shape="rect" coords="36, 188, 66, 224">
            <area target="_blank" href="ShowMap/?ID=60" shape="rect" coords="66, 188, 98, 224">
            <area target="_blank" href="ShowMap/?ID=59" shape="rect" coords="98, 188, 128, 224">
            <area target="_blank" href="ShowMap/?ID=58" shape="rect" coords="128, 188, 160, 224">
            <area target="_blank" href="ShowMap/?ID=57" shape="rect" coords="160, 188, 192, 224">
            <area target="_blank" href="ShowMap/?ID=56" shape="rect" coords="192, 188, 223, 224">
            <area target="_blank" href="ShowMap/?ID=55" shape="rect" coords="223, 188, 256, 224">
            <area target="_blank" href="ShowMap/?ID=54" shape="rect" coords="256, 188, 289, 224">
            <area target="_blank" href="ShowMap/?ID=53" shape="rect" coords="289, 188, 322, 224">
            <area target="_blank" href="ShowMap/?ID=72" shape="rect" coords="6, 224, 36, 260">
            <area target="_blank" href="ShowMap/?ID=71" shape="rect" coords="36, 224, 66, 260">
            <area target="_blank" href="ShowMap/?ID=70" shape="rect" coords="66, 224, 98, 260">
            <area target="_blank" href="ShowMap/?ID=69" shape="rect" coords="98, 224, 128, 260">
            <area target="_blank" href="ShowMap/?ID=68" shape="rect" coords="128, 224, 160, 260">
            <area target="_blank" href="ShowMap/?ID=67" shape="rect" coords="160, 224, 192, 260">
            <area target="_blank" href="ShowMap/?ID=66" shape="rect" coords="192, 224, 223, 260">
            <area target="_blank" href="ShowMap/?ID=65" shape="rect" coords="223, 224, 256, 260">
            <area target="_blank" href="ShowMap/?ID=64" shape="rect" coords="256, 224, 289, 260">
            <area target="_blank" href="ShowMap/?ID=63" shape="rect" coords="289, 224, 322, 260">
            <area target="_blank" href="ShowMap/?ID=80" shape="rect" coords="66, 260, 98, 296">
            <area target="_blank" href="ShowMap/?ID=79" shape="rect" coords="98, 260, 128, 296">
            <area target="_blank" href="ShowMap/?ID=78" shape="rect" coords="128, 260, 160, 296">
            <area target="_blank" href="ShowMap/?ID=77" shape="rect" coords="160, 260, 192, 296">
            <area target="_blank" href="ShowMap/?ID=76" shape="rect" coords="192, 260, 223, 296">
            <area target="_blank" href="ShowMap/?ID=75" shape="rect" coords="223, 260, 256, 296">
            <area target="_blank" href="ShowMap/?ID=74" shape="rect" coords="256, 260, 289, 296">
            <area target="_blank" href="ShowMap/?ID=73" shape="rect" coords="289, 260, 322, 296">
            <area target="_blank" href="ShowMap/?ID=88" shape="rect" coords="66, 296, 98, 332">
            <area target="_blank" href="ShowMap/?ID=87" shape="rect" coords="98, 296, 128, 332">
            <area target="_blank" href="ShowMap/?ID=86" shape="rect" coords="128, 296, 160, 332">
            <area target="_blank" href="ShowMap/?ID=85" shape="rect" coords="160, 296, 192, 332">
            <area target="_blank" href="ShowMap/?ID=84" shape="rect" coords="192, 296, 223, 332">
            <area target="_blank" href="ShowMap/?ID=83" shape="rect" coords="223, 296, 256, 332">
            <area target="_blank" href="ShowMap/?ID=82" shape="rect" coords="256, 296, 289, 332">
            <area target="_blank" href="ShowMap/?ID=81" shape="rect" coords="289, 296, 322, 332">
            <area target="_blank" href="ShowMap/?ID=90" shape="rect" coords="192, 332, 223, 368">
            <area target="_blank" href="ShowMap/?ID=89" shape="rect" coords="223, 332, 256, 368">
            <area target="_blank" href="ShowMap/?ID=92" shape="rect" coords="192, 368, 223, 404">
            <area target="_blank" href="ShowMap/?ID=91" shape="rect" coords="223, 368, 256, 404">
        </map>
        
        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">
                        
                        <div class="MainHeader">
                            در این نقشه ، تهران به نود و دو منطقه تقسیم شده است که میتوانید با کلیک بر روی هر
                            منطقه جزئیات بیشتر را ملاحظه فرمایید.
                        </div>
                        <div class="Clear">
                        </div>
                        <div style="text-align: center">
                            <br />
                            <br />
                            <br />
                            <asp:Image ID="Image1" runat="server" Style="cursor: pointer" BorderWidth="1" BorderColor="Black"
                                ImageUrl="http://static.parset.com/Pics/Tehran/TehranMap.gif" usemap="#FPMap0" />
                            <br />
                            <br />
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                        <div class="Clear">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
            <UCRC:UCRandContent ID="UCRandContent3" runat="server" MainCatCode="53" />
        </div>
   
    <div class="Clear">
    </div>
</asp:Content>
