<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" Title="راهنمای ارسال اس ام اس" AutoEventWireup="true" CodeBehind="SMSHelp.aspx.cs"
    Inherits="Parset.Help.SMSHelp" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
    
    <div >
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3" id="HelpDesc">
                    <div class="MainHeader">
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="راهنمای ارسال اس ام اس"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="Marginer2">
                        <div style="line-height:150%;">
                            <div style="direction: rtl">
                                <span style="font-size: xx-large; color: #800000;">راهنمای ارسال اس ام اس<br />
                                </span><span style="color: #800000;"><span style="font-size: xx-large;">
                                    <br />
                                </span></span>&nbsp;ازاین پس میتوانید متن مورد نظر خود را از قسمتهای تعبیر خواب ، نامها ، طالع بینی و اشعار انتخاب
                                (<span lang="en-us">Select</span>) کنید و آنرا به شماره دلخواهتان اس ام اس کنید.<br />
                                برای انتخاب متن کافی است اشاره گر موس را بر روی آغاز متنی که در نظر دارید نگه دارید
                                و تا پایان متن مور نظر بکشید و دکمه موس را رها کنید.<br />
                                <br />
                                <img alt="راهنمای ارسال اس ام اس 1" style="border:solid 1px #111111" src="http://static.parset.com/images/SMSHelp1.gif"
                                    width="600" height="376" /><br />
                                <br />
                                <br />
                                سپس صفحه ای شبیه شکل زیر ظاهر می شود<br />
                                <br />
                                <img alt="راهنمای ارسال اس ام اس 2" style="border:solid 1px #111111" src="http://static.parset.com/images/SMSHelp2.gif"
                                    width="600" height="455" /><br />
                                <br />
                                <br />
                                شماره مقصد را وارد کنید و دکمه ارسال را فشار دهید.<br />
                                شماره مقصد باید با 09 شروع شود به عنوان مثال 09123456789<br />
                                <br />
                                برای ارسال لازم است عضو پارست باشید و به اندازه ارسال اس ام اس موجودی داشته باشید.<br />
                                هزینه ارسال هر اس ام اس فارسی (70 کاراکتر) 50 تومان است و هر 70 کاراکتر اضافی یک اس ام اس
                                جدید تلقی میشود.<br />
                                مثلا اگر متن ارسالی 150 کاراکتر داشته باشد هزینه 3 اس ام اس از موجودی شما کسر می شود.<br />
                                <br />
                                شارژ حساب کاربری به راحتی بصورت آنلاین انجام میشود.<br />
                                برای شارژ حساب وارد پنل کاربری شوید و <a href="http://www.parset.com/Users/AccountCharge.aspx">
                                    قسمت شارژ حساب</a> را انتخاب کنید.<br />
                                سپس مبلغ شارژ (حداقل 10000 ریال) را وارد کنید و از طریق درگاه پرداخت الکترونیک بانک
                                پارسیان با وارد کردن مشخصات کارت خود مبلغ شارژ را پرداخت کنید.<br />
                                توجه داشته باشید که اطلاعات کارت شما تنها&nbsp; در سایت بانک وارد می شود.<br />
                                <br />
                                برای پرداخت لازم نیست کارت پارسیان داشته باشید. با دارا بودن هر یک از کارتهای متصل به شبکه شتاب قادر به پرداخت آنلاین هستید.
                                کاربران سایت می توانند برای مشاهده تراکنشهای مالی خود به <a href="http://www.parset.com/Users/UserTransList.aspx">
                                    بخش تراکنشهای مالی</a> مراجعه کنند و از تراکنشهای خود بطور کامل مطلع شوند.<br />
                                <br />
                                <span style="font-size: 20px; color: #000080;">ارسال اولین اس ام اس برای کاربران پارست
                                    رایگان است.</span><br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>    
    <div class="Clear">
    </div>

        <script type="text/javascript">
            objOnSelect = document.getElementById("HelpDesc");
            objOnSelect.onmouseup = doSomethingWithSelectedText;
            objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>

</asp:Content>
