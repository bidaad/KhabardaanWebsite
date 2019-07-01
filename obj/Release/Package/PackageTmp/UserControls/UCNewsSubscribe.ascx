<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCNewsSubscribe.ascx.cs" Inherits="Parset.UserControls.UCNewsSubscribe" %>
<div class="WinRadiusGray Padder10">
    <div>
        <asp:Panel ID="pnlSendInvitation" runat="server">
            <div>
                <asp:Label ID="Label10" runat="server" Text="در خبرنامه پارست عضو شوید"></asp:Label></div>
            <table class="tblSuggest">
                
                <tr>
                    <td>
                        <asp:Button ID="btnSendToFriend" Text="ارسال" CssClass="btn btn-info" ValidationGroup="NewsEmails" runat="server"
                            OnClick="btnSendToFriend_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" TabIndex="2" CssClass="form-control" FirstTime="1" Text="ایمیل" onclick="this.value=''"
                            SkinID="English" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="lblInvSent" Visible="false" runat="server" Text="ایمیل با موفقیت ارسال شد"></asp:Label>
    </div>
</div>