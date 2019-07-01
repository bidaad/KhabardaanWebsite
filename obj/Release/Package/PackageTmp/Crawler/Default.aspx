<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="Default.aspx.cs" Title="درباره ربات خبریاب پارست"
    Inherits="WebApp_Crawler_Default" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
    <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="درباره ربات خبریاب پارست"
                    runat="server"></asp:Label>
            </h3>
        </div>
    <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    
                    <div class="Marginer2">
                        <div class="Farsi" >
                            این ربات منابع خبری تعریف شده نظیر ایسنا ، ایرنا ، همشهری آنلاین و ... را بطور متناوب
                            جستجو میکند و اخبار جدید را یافته و ذخیره میکند.
                            <br />
                            عنوان و متن خبر و همچنین عکس خبر در صورت وجود بطور کامل دریافت میشود و سپس خبر البته
                            با ذکر منبع آن در سایت پارست منتشر میشود.
                            <br />
                            کلمات کلیدی خبر یا همان Tag های خبر بصورت خودکار از روز متن خبر استخراج میشود و
                            با استفاده از این کلمات کلیدی میتوان خبرهای مربوط به یک موضوع خاص را بازیافت نمود.
                            مثلا خبرهای مربوط به سازمان ملل از طریق <a href="http://www.parset.com/News/Keywords/3585.htm" style="text-decoration:underline;">این
                                آدرس</a> قابل دریافت است.<br />
                            <br />
                            &nbsp;ارزش افزوده دیگری که هر خبر از طریق این سیستم پیدا میکند ، اخبار مرتبط است
                            بدین شکل که در موقع ذخیره خبر ، از طریق الگوریتمهای بکار رفته در سایت پارست خبرهای
                            مرتبط نیز پیدا میشوند.<br />
                            &nbsp;همچنین میتوان به عکسهای مربوط به یک کلمه کلیدی نیز از همین طریق دسترسی پیدا
                            کرد که میتوان آن را پیش درآمدی برای جستجوی هوشمندانه عکس در وب فارسی تلقی کرد.
                            <br />
                            براحتی میتوان از این سیستم برای جمع آوری خودکار اخبار مربوط به یک حوزه خاص مثلا
                            حمل و نقل ، نفت و ... استفاده کرد. <br />
                            پر واضح است که در این صورت تا حد زیادی از خطاهای انسانی و هزینه هایی که برای جمع
                            آوری دستی این اطلاعات صرف میشود صرفه جویی میشود. البته کارایی و دقت ربات بصورت صد
                            درصد نمیباشد و خطاهایی هم در حین کار از قبیل تولید کلمات کلیدی اشتباه و ... بوجود
                            میآید ولی در مجموع میتوان آنرا فصلی نو در تجزیه و تحلیل اطلاعات منابع خبری فارسی
                            تلقی کرد.
                            <br />
                            <br />
                            از تمامی علاقمندان برای همکاری در زمینه پردازش و تحلیل اطلاعات دعوت میشود. 
							<a href="http://parset.com/ContactUs.aspx">با ما ارتباط برقرار کنید.</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    <div class="Clear">
    </div>
</div>
</asp:Content>
