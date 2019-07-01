<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RandSMS.ascx.cs" Inherits="Parset.UserControls.RandSMS" %>
<div id="RandSMSPanel">
</div>
    <script type="text/javascript">
        $(document).ready(function () {
            Url = SiteDomain + "Ajax/AjaxRandSMS.aspx"
            startRandSMSRequest(Url, AjaxRandSMSResult, 'GET', null);
        });
    </script>
