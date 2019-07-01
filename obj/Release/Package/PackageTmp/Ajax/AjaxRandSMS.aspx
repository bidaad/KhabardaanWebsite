<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxRandSMS.aspx.cs" Inherits="Parset.Ajax.AjaxRandSMS" %>

<div class="WinRadiusGray">
<div class="CatHeader">
    سامانه ارسال پیامک پارست
</div>
<div class="clear"></div>
<div style="margin-left:50px;cursor:pointer;" onclick="window.location.href='http://www.parset.com/sms'" class="SendSMSTools">
    <div id="RandSMS" class="SMSRandCont">
        <div class="slides">
            <asp:Repeater ID="rptSMS" EnableViewState="false" runat="server">
                <ItemTemplate><div><asp:HyperLink CssClass="SMSRandLink" NavigateUrl='<%#"http://www.parset.com/SMS/ShowCat.aspx?Code=" + Eval("HCSMSCatCode") %>'  runat="server"><%#Eval("SMSbody") %></asp:HyperLink></div></ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
</div>
