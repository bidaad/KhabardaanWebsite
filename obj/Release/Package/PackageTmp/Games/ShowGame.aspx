<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootCol1.Master" CodeBehind="ShowGame.aspx.cs" Inherits="Parset.Games.ShowGame" %>

<%@ Register Src="~/UserControls/UCRandSmallContent.ascx" TagName="UCRandSmallContent" TagPrefix="UCRSC" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<%@ Register Src="~/UserControls/UCMostVisitedNews.ascx" TagName="UCMostVisitedNews" TagPrefix="UCMVN" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <script type="text/javascript" src="http://static.parset.com/Scripts/swfobject.js"></script>
    <div class="WinRadiusGray">
        <div class="Clear">
            <div class="ListHeader">
                <div id="divHeader">
                    <h1>
                        <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                    </h1>
                </div>
            </div>
        </div>
        <div class="Padder20">
            <asp:Label runat="server" ID="lblDesc" Text=""></asp:Label>
        </div>
        <script type="text/javascript">
            swfobject.embedSWF("<%=FlashFile%>", "SWFContent", "<%=Width%>", "<%=Height%>", "9.0.0", "expressInstall.swf");
        </script>
        <div id="SWFContent">
            <h1>Alternative content</h1>
            <p><a href="http://www.adobe.com/go/getflashplayer">
                <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
        </div>


        <div class="Clear"></div>
    </div>
</asp:Content>
