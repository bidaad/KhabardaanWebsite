<%@ Page Title="" Language="C#" MasterPageFile="~/RootNoCol.master" AutoEventWireup="true"
    Inherits="Ads_ShowAds" CodeBehind="ShowAds.aspx.cs" %>

<%@ Register Src="~/UserControls/AdKeywords.ascx" TagName="AdKeywords" TagPrefix="UCAdKeywords" %>
<%@ Register Src="~/UserControls/ColAds.ascx" TagName="ColAds" TagPrefix="UCColAds" %>
<%@ Register Src="~/UserControls/SmallAdsList.ascx" TagName="SmallAdsList" TagPrefix="UCSmallAdsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="row">
        <div class="col-md-3">
            
                <UCAdKeywords:AdKeywords runat="server" ID="UCAdKeywords1" />
                <UCColAds:ColAds runat="server" ID="ColAds1" />
                <UCColAds:ColAds runat="server" ID="RelatedAds" />
            
        </div>
        <div class="col-md-9">
            <AKP:MsgBox runat="server" ID="msgBox">
            </AKP:MsgBox>
            <div class="WinRadiusGray Padder10">
                <div class="ShowAdsForm">
                    <div style="margin-bottom: 5px;">
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="AdTitle">
                        <asp:Label ID="lblTitle" runat="server"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="AdDesc">
                        <asp:Panel ID="pnlPic" runat="server" class="AdsPic">
                            <asp:Image ID="imgAdsPic" BorderWidth="1" EnableViewState="false" runat="server" />
                        </asp:Panel>
                        <asp:Label ID="lblDescription" EnableViewState="false" runat="server"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>

                    <div class="Clear">
                    </div>


                </div>
            </div>
            <div class="WinRadiusGray">
                <div class="AdsInfo">
                    <asp:Panel ID="pnlName" runat="server">

                        <div class="Lbl">
                            <asp:Label ID="Label4" runat="server" Text="نام:"></asp:Label>
                        </div>
                        <div class="Ctrl">
                            <asp:Label ID="lblName" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="Clear">
                    </div>
                    <asp:Panel ID="pnlTel" runat="server">

                        <div class="Lbl">
                            <asp:Label ID="Label5" runat="server" Text="تلفن:"></asp:Label>
                        </div>
                        <div class="Ctrl">
                            <asp:Label ID="lblTel" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="Clear">
                    </div>
                    <asp:Panel ID="pnlPrice" runat="server">

                        <div class="Lbl">
                            <asp:Label ID="Label6" runat="server" Text="قیمت:"></asp:Label>
                        </div>
                        <div class="Ctrl">
                            <asp:Label ID="lblPrice" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="Clear">
                    </div>
                    <asp:Panel ID="pnlAdsDate" runat="server">

                        <div class="Lbl">
                            <asp:Label ID="Label10" runat="server" Text="انقضا:"></asp:Label>
                        </div>
                        <div class="Ctrl">
                            <asp:Label ID="lblAdsDate" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="Clear">
                    </div>
                    <asp:Panel ID="pnlStateName" runat="server">

                        <div class="Lbl">
                            <asp:Label ID="Label9" runat="server" Text="موقعیت:"></asp:Label>
                        </div>
                        <div class="Ctrl">
                            <asp:Label ID="lblStateName" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="Clear">
                    </div>
                    <asp:Panel ID="pnlAddress" runat="server">

                        <div class="Lbl">
                            <asp:Label ID="Label8" runat="server" Text="آدرس:"></asp:Label>
                        </div>
                        <div class="Ctrl">
                            <asp:Label ID="lblAddress" CssClass="AdAddress" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                </div>

            </div>

            <asp:Panel runat="server" CssClass="panel" ID="pnlContactAdvertiser">

                <div class="heading">
                    تماس با آگهی دهنده
                </div>
                <div class="content Padder10">
                    <AKP:MsgBox runat="server" ID="msgMessage">
                    </AKP:MsgBox>

                    <div class="form-inline">
                        <div class="form-group">
                            <label class="css-required-item">*</label>
                            <AKP:ExTextBox runat="server" ID="txtName" CssClass="form-control" placeholder="نام" MaxLength="70" TabIndex="2" />

                        </div>
                    </div>
                    <div class="form-inline">
                        <div class="form-group">

                            <label class="css-required-item">*</label>
                            <AKP:ExTextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="ایمیل شما" MaxLength="70" TabIndex="2" />

                        </div>
                    </div>
                    <div class="form-inline">
                        <div class="form-group">

                            <label class="css-required-item">*</label>
                            <AKP:ExTextBox ID="txtQuestion" TextMode="MultiLine" runat="server" CssClass="form-control" placeholder="پرسش"
                                MaxLength="32" TabIndex="2" />

                        </div>
                    </div>
                    <div class="form-inline">
                        <div class="form-group">
                            <asp:ImageButton ID="btnSendToAdvertiser" CssClass="btnSendAdvertiser" ImageUrl="~/images/btnSendGreen.png"
                                runat="server" OnClick="btnSendToAdvertiser_Click" />

                        </div>
                    </div>
                </div>
            </asp:Panel>


            <div class="WinRadiusGray">
                <UCSmallAdsList:SmallAdsList runat="server" ID="UCSmallAdsList1" />
            </div>
            <div class="WinRadiusGray">
                <asp:Panel runat="server" ID="pnlRelatedNews">
                    <div class="GreenHeader">
                        <h3>
                            <asp:Label ID="lblHeader" Text="اخبار مرتبط" runat="server"></asp:Label>
                        </h3>
                    </div>
                    <div class="Win2">
                        <div class="AdsRelatedNews">
                            <asp:Repeater ID="rptRelatedNews" EnableViewState="false" runat="server">
                                <ItemTemplate>
                                    <div>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"http://www.parset.com/News/" + Eval("Code")  + ".htm"%>'>
                                            <%#Eval("Title") %>
                                        </asp:HyperLink>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </asp:Panel>

            </div>
        </div>

    </div>
</asp:Content>
