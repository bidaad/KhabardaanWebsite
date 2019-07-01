<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Know_Iran_Default" Title="نقشه ایران" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
            <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="نقشه ایران"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <map name="FPMap0">
            <area target="_blank" href="ShowMap/?ID=11" shape="rect" coords="1, 1, 105, 68">
            <area target="_blank" href="ShowMap/?ID=12" shape="rect" coords="106, 1, 210, 68">
            <area target="_blank" href="ShowMap/?ID=13" shape="rect" coords="211, 1, 315, 68">
            <area target="_blank" href="ShowMap/?ID=14" shape="rect" coords="316, 1, 420, 68">
            <area target="_blank" href="ShowMap/?ID=15" shape="rect" coords="421, 1, 525, 68">
            <area target="_blank" href="ShowMap/?ID=16" shape="rect" coords="526, 1, 630, 68">
            <area target="_blank" href="ShowMap/?ID=21" shape="rect" coords="1, 69, 105, 136">
            <area target="_blank" href="ShowMap/?ID=22" shape="rect" coords="106, 69, 210, 136">
            <area target="_blank" href="ShowMap/?ID=23" shape="rect" coords="211, 69, 315, 136">
            <area target="_blank" href="ShowMap/?ID=24" shape="rect" coords="316, 69, 420, 136">
            <area target="_blank" href="ShowMap/?ID=25" shape="rect" coords="421, 69, 525, 136">
            <area target="_blank" href="ShowMap/?ID=26" shape="rect" coords="526, 69, 630, 136">
            <area target="_blank" href="ShowMap/?ID=31" shape="rect" coords="1, 137, 105, 204">
            <area target="_blank" href="ShowMap/?ID=32" shape="rect" coords="106, 137, 210, 204">
            <area target="_blank" href="ShowMap/?ID=33" shape="rect" coords="211, 137, 315, 204">
            <area target="_blank" href="ShowMap/?ID=34" shape="rect" coords="316, 137, 420, 204">
            <area target="_blank" href="ShowMap/?ID=35" shape="rect" coords="421, 137, 525, 204">
            <area target="_blank" href="ShowMap/?ID=36" shape="rect" coords="526, 137, 630, 204">
            <area target="_blank" href="ShowMap/?ID=41" shape="rect" coords="1, 205, 105, 272">
            <area target="_blank" href="ShowMap/?ID=42" shape="rect" coords="106, 205, 210, 272">
            <area target="_blank" href="ShowMap/?ID=43" shape="rect" coords="211, 205, 315, 272">
            <area target="_blank" href="ShowMap/?ID=44" shape="rect" coords="316, 205, 420, 272">
            <area target="_blank" href="ShowMap/?ID=45" shape="rect" coords="421, 205, 525, 272">
            <area target="_blank" href="ShowMap/?ID=46" shape="rect" coords="526, 205, 630, 272">
            <area target="_blank" href="ShowMap/?ID=51" shape="rect" coords="1, 273, 105, 340">
            <area target="_blank" href="ShowMap/?ID=52" shape="rect" coords="106, 273, 210, 340">
            <area target="_blank" href="ShowMap/?ID=53" shape="rect" coords="211, 273, 315, 340">
            <area target="_blank" href="ShowMap/?ID=54" shape="rect" coords="316, 273, 420, 340">
            <area target="_blank" href="ShowMap/?ID=55" shape="rect" coords="421, 273, 525, 340">
            <area target="_blank" href="ShowMap/?ID=56" shape="rect" coords="526, 273, 630, 340">
            <area target="_blank" href="ShowMap/?ID=61" shape="rect" coords="1, 341, 105, 408">
            <area target="_blank" href="ShowMap/?ID=62" shape="rect" coords="106, 341, 210, 408">
            <area target="_blank" href="ShowMap/?ID=63" shape="rect" coords="211, 341, 315, 408">
            <area target="_blank" href="ShowMap/?ID=64" shape="rect" coords="316, 341, 420, 408">
            <area target="_blank" href="ShowMap/?ID=65" shape="rect" coords="421, 341, 525, 408">
            <area target="_blank" href="ShowMap/?ID=66" shape="rect" coords="526, 341, 630, 408">
            <area target="_blank" href="ShowMap/?ID=71" shape="rect" coords="1, 409, 105, 476">
            <area target="_blank" href="ShowMap/?ID=72" shape="rect" coords="106, 409, 210, 476">
            <area target="_blank" href="ShowMap/?ID=73" shape="rect" coords="211, 409, 315, 476">
            <area target="_blank" href="ShowMap/?ID=74" shape="rect" coords="316, 409, 420, 476">
            <area target="_blank" href="ShowMap/?ID=75" shape="rect" coords="421, 409, 525, 476">
            <area target="_blank" href="ShowMap/?ID=76" shape="rect" coords="526, 409, 630, 476">
        </map>
        
        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">
                        <div class="MainHeader">
                            با کلیک بر روی هر منطقه از نقشه ایران ، میتوانید نقشه بزرگ آن منطقه را مشاهده فرمایید.
                        </div>
                        
                        <div style="text-align: center">
                            <br />
                            <br />
                            <br />
                            <asp:Image runat="server" Style="cursor: pointer" BorderWidth="1" BorderColor="Black"
                                ImageUrl="http://static.parset.com/Pics/Iran/Iran.jpg" usemap="#FPMap0" />
                            <br />
                            <br />
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
    
    <div class="Clear">
    </div>
</asp:Content>
