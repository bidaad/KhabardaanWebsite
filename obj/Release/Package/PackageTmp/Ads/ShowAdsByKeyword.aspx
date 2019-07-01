<%@ Page Title="" Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true"
    Inherits="Ads_ShowAdsByKeyword" CodeBehind="ShowAdsByKeyword.aspx.cs" %>

<%@ Register Src="~/UserControls/AdsList.ascx" TagName="AdsList" TagPrefix="UCAdsList" %>
<%@ Register Src="~/UserControls/ColAds.ascx" TagName="ColAds" TagPrefix="UCColAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Col2A">
        <div class="Col2ALeft">
            <div class="WinRadiusGray">
                <div class="Marginer1">
                    <div class="GreenHeader">
                        <h3>
                            <asp:Label ID="lblHeader" Text=" آگهی های کلمات مرتبط" runat="server"></asp:Label>
                        </h3>
                    </div>
                    <UCAdsList:AdsList runat="server" ID="AdsList1" />
                </div>
            </div>
        </div>
        <div class="Col2ARight">
            <div class="WinRadiusGray">
                <uccolads:colads runat="server" id="LatestAds" />
            </div>
        </div>
    </div>
</asp:Content>
