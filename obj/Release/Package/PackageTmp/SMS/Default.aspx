<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Parset.SMS.Default" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandIKid.ascx" TagName="RandIKid" TagPrefix="UCRandIKid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray Padder5">

        <div class="form-inline">

            <div class="form-group">
                <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="جستجو در اس ام اس ها" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSearch" Text="جستجو" CssClass="btn btn-warning" runat="server" OnClick="btnSearch_Click" />
            </div>

        </div>

    </div>

    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="اس ام اس"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div>
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Marginer1">
                        <div class="CoolWin">
                            <asp:HyperLink ID="hplHelpSMS" NavigateUrl="~/Help/SMSHelp.aspx" Target="_blank"
                                runat="server">
                        از این پس میتوانید متن اس ام اس را مستقیما به موبایل خود ارسال کنید
                            </asp:HyperLink>
                        </div>
                    </div>
                    <div class="Box3">
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="گروه های اس ام اس"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div>
                            <asp:DataList ID="dtlSMSCats" CssClass="tblSMSCats" RepeatColumns="2" RepeatDirection="Horizontal" EnableViewState="false" runat="server">
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplSMSCat" NavigateUrl='<%#"~/SMS/ShowCat.aspx?Code=" + Eval("Code") %>' runat="server">اس ام اس&nbsp;<%#Eval("Name") %></asp:HyperLink>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>

                        <div class="Clear">
                        </div>
                    </div>
                    <div class="MidPageBanner">
                        <UCBanner:Banner ID="Banner2" PositionCode="11" runat="server" />
                    </div>
                    <div class="Clear">
                    </div>
                </div>
            </div>
            <div class="Clear">
            </div>

            <div class="Clear">
            </div>
        </div>
    </div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner1" PositionCode="16" runat="server" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
