<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_Weather"
    CodeBehind="Weather.ascx.cs" %>
<div>
    <table class="tblWinThem1" style="width: 95%; direction: ltr !important;" cellpadding="0" cellspacing="0">
    <tr>
        <td class="WinThem1Corner1">
            &nbsp;
        </td>
        <td class="WinThem1Mid">
            <asp:Literal ID="Literal1" Text="وضعیت آب و هوا" runat="server"></asp:Literal>
        </td>
        <td class="WinThem1Corner2">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="WinThem1Left">
            &nbsp;
        </td>
        <td class="WinThem1Data" style="direction: rtl; padding: 4px;">
            <div class="Padder2">
                <%=YahooWeather.Helper.BuildHTML() %>
            </div>
        </td>
        <td class="WinThem1Right">
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="WinThem1Corner3">
            &nbsp;
        </td>
        <td class="WinThem1Bot">
            &nbsp;
        </td>
        <td class="WinThem1Corner4">
            &nbsp;
        </td>
    </tr>
</table>
</div>
<div class="clearfloat">
</div>
