<%@ Page Title="Enter the Security Code which has been sent to your email address" Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Users_EnterSecCode" Codebehind="EnterSecCode.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/AddFreind.ascx" TagName="AddFriend" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Col2">
        <div class="Col2Left">
            <div class="Box1">
                <div class="Box1Header">
                    <asp:Label ID="Label12" runat="server" Text="Account Activation"></asp:Label></div>
                <div class="Clear">
                </div>
                <div>
                    <div>
                        <AKP:MsgBox runat="server" ID="msg" />
                    </div>
                    <div>
                        <asp:Label ID="Label2" runat="server" Text="Enter the Security Code which has been sent to your email address."></asp:Label>
                    </div>
                    <asp:Panel runat="server" ID="pnlEmail">
                        <table style="width: 200px">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSecCode" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:LinkButton ID="btnSubmitSecCode" ValidationGroup="SecCode" runat="server" Text="Submit"
                                        CssClass="button1" OnClick="btnSubmitSecCode_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <div>
                        <asp:RequiredFieldValidator ValidationGroup="SecCode" ID="RFV2" CssClass="cRFV"
                            runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="Col2Right">
            <div>
                <asp:Label ID="Label9" runat="server" Text="Advertisment"></asp:Label></div>
            <div class="Line2">
                <hr />
            </div>
            <div>
                <ADS:Banner ID="Banner1" PositionCode="1" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>

