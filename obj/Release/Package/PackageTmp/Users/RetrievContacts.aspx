<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true" Inherits="Users_RetrievContacts"
    Title="Retrieve Contacts" CodeBehind="RetrievContacts.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/InviteByEmail.ascx" TagName="InviteByEmail" TagPrefix="INV" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
               <asp:Panel ID="pnlContacts" runat="server">
                <div class="Box1">
                    <div class="Box1Header">
                        <asp:Label ID="Label18" runat="server" Text="دعوت از دوستان"></asp:Label></div>
                    <div>
                        <AKP:MsgBox runat="server" ID="msg" />
                    </div>
                    <div class="Col2E">
                        <div class="Col2ELeft">
                            <div class="EmailVal">
                                <asp:Label ID="lblEmailVal" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="Col2ERight">
                            <asp:Label ID="lblEmailName" runat="server" Text="Email Address:"></asp:Label>
                        </div>
                    </div>
                    <div class="Col2E">
                        <div class="Col2ELeft">
                            <asp:TextBox ID="txtEmailPassword" Width="132" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="Col2ERight">
                            <asp:Label ID="lblPasswordName" runat="server" Text="Password:"></asp:Label>
                        </div>
                    </div>
                    <div class="Col2E">
                        <div class="Col2ELeft">
                        </div>
                        <div class="Col2ERight">
                            <asp:LinkButton ID="btnRetrieveEmail" runat="server" Text=" ارسال " CssClass="button2"
                                OnClick="btnRetrieveEmail_Click" />
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Line1">
                        <hr />
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Col2E">
                        <asp:Label ID="Label16" runat="server" Text="بدون اجازه شما ما کلمه عبور ایمیل و لیست دوستان شما را ذخیره نمیکنیم."></asp:Label>
                    </div>
                    <div class="Sep1">
                    </div>
                </div>
            </asp:Panel>
            <INV:InviteByEmail runat="server" Visible="false" ID="InviteByEmail1"></INV:InviteByEmail>
            <div class="Marginer1">
                <div class="NoThanks">
                    <asp:HyperLink ID="hplContinue" NavigateUrl="~/Users/Home.aspx" runat="server">مایل به ارائه کلمه عبور ایمیل خود نیستم.</asp:HyperLink>
                </div>
                <div class="lblHeaderContainer">
                    <asp:Label ID="Label11" runat="server" Text="با پارست به دنیا متصل شوید"></asp:Label>
                </div>
                <div class="Features">
                    <div>
                        <asp:Label ID="Label8" runat="server" Text="دوستان خود را در هر کجای دنیا پیدا کنید"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="Label9" runat="server" Text="عکسهای خود را با بقیه به اشتراک بگذارید."></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="Label10" runat="server" Text="لینکهای مورد علاقه خود را به دوستانتان بفرستید."></asp:Label>
                    </div>
                </div>
            </div>
</div>
</asp:Content>
