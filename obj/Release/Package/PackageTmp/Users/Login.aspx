<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Users_Login"
    Title="صفحه ورود" CodeBehind="Login.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="WinRadiusGray">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="Marginer2">
                        <uc1:Login ID="Login1" runat="server" />
                    </div>
        
    </div>
    <div class="Clear">
    </div>
</asp:Content>
