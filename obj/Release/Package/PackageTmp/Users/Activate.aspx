<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Activate" Title="تکمیل عضویت" CodeBehind="Activate.aspx.cs" %>


<%@ Register Src="~/UserControls/Message.ascx" TagName="Message" TagPrefix="Msg" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
    <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    <div class="MainHeader">
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="تکمیل عضویت"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Marginer2">
                        <asp:Panel runat="server" ID="pnlMessage" CssClass="Message">
                            <div style="padding: 6px;">
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
</div>
</asp:Content>
