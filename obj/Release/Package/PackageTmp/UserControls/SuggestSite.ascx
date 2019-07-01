<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SuggestSite.ascx.cs"
    Inherits="Parset.UserControls.SuggestSite" %>
<div class="WinRadiusGray Padder10">
    <div>
        <asp:Panel ID="pnlSedInvitation" runat="server">
            <div>
                <asp:Label ID="Label10" runat="server" Text="این سایت را به دوستان خود معرفی کنید"></asp:Label></div>
            <table class="tblSuggest">
                <tr>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmail" ValidationGroup="Invitation" ErrorMessage="ایمیل معتبر نیست"></asp:RegularExpressionValidator>
                    </td>
                    <td style="text-align: right;">
                        <asp:TextBox ID="txtFromName" TabIndex="1" CssClass="form-control" Width="100" runat="server"></asp:TextBox>
                    </td>
                    <td style="white-space: nowrap">
                        <asp:Label CssClass="Farsi" ID="Label12" runat="server" Text=":نام شما"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSendToFriend" Text="ارسال" CssClass="btn btn-info" ValidationGroup="Invitation" runat="server"
                            OnClick="btnSendToFriend_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" TabIndex="2" CssClass="form-control" FirstTime="1" Text="ایمیل دوست شما" onclick="if(this.FirstTime=='1' || this.FirstTime==undefined) {this.value='';this.FirstTime='0';}"
                            SkinID="English" Width="100" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label CssClass="Farsi" ID="Label11" runat="server" Text=":ایمیل"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="lblInvSent" Visible="false" runat="server" Text="دعوتنامه شما با موفقیت ارسال شد"></asp:Label>
    </div>
</div>
