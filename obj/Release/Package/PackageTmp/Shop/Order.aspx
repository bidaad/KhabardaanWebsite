<%@ Page Language="C#" MasterPageFile="~/RootNoCol.master" ValidateRequest="false" EnableEventValidation="false"
    AutoEventWireup="True" Inherits="Shop_Order" Title="سفارش" CodeBehind="Order.aspx.cs" %>

<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/Menu.ascx" TagName="Menu" TagPrefix="MNU" %>
<%@ Register Src="~/UserControls/MostSoldPros.ascx" TagName="MostSoldPros" TagPrefix="UCMostSoldPros" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <script type="text/javascript">
function ldMenu(Indx) {
//var Indx=objProvinceCombo.selectedIndex;
with (document.getElementById('<%=ddlCityCode.ClientID %>')) 
{
options.length=0;
if (Indx==0)
{
options[0]=new Option("لطفا استان خود را انتخاب کنيد","");
}
if (Indx == 1) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("تبريز", "410001");
            options[2] = new Option("كندوان", "410002");
            options[3] = new Option("بندر شرفخانه", "410003");
            options[4] = new Option("مراغه", "410004");
            options[5] = new Option("ميانه", "410005");
            options[6] = new Option("شبستر", "410006");
            options[7] = new Option("مرند", "410007");
            options[8] = new Option("جلفا", "410008");
            options[9] = new Option("سراب", "410009");
            options[10] = new Option("هاديشهر", "410010");
            options[11] = new Option("بناب", "410011");
            options[12] = new Option("كليبر", "410012");
            options[13] = new Option("تسوج", "410013");
            options[14] = new Option("اهر", "410014");
            options[15] = new Option("هريس", "410015");
            options[16] = new Option("عجبشير", "410016");
            options[17] = new Option("هشترود", "410017");
            options[18] = new Option("ملكان", "410018");
            options[19] = new Option("بستان آباد", "410019");
            options[20] = new Option("ورزقان", "410020");
            options[21] = new Option("اسكو", "410021");
            options[22] = new Option("آذر شهر", "410022");
            options[23] = new Option("قره آغاج", "410023");
            options[24] = new Option("ممقان", "410024");
        }

        if (Indx == 2) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("اروميه", "440001");
            options[2] = new Option("نقده", "440002");
            options[3] = new Option("ماكو", "440003");
            options[4] = new Option("تكاب", "440004");
            options[5] = new Option("خوي", "440005");
            options[6] = new Option("مهاباد", "440006");
            options[7] = new Option("سر دشت", "440007");
            options[8] = new Option("چالدران", "440008");
            options[9] = new Option("بوكان", "440009");
            options[10] = new Option("مياندوآب", "440010");
            options[11] = new Option("سلماس", "440011");
            options[12] = new Option("شاهين دژ", "440012");
            options[13] = new Option("پيرانشهر", "440013");
            options[14] = new Option("سيه چشمه", "440014");
            options[15] = new Option("اشنويه", "440015");
            options[16] = new Option("چایپاره", "440016");
            options[17] = new Option("پلدشت", "440017");
            options[18] = new Option("شوط", "440018");
        }
        if (Indx == 3) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("اردبيل", "450001");
            options[2] = new Option("سرعين", "450002");
            options[3] = new Option("بيله سوار", "450003");
            options[4] = new Option("پارس آباد", "450004");
            options[5] = new Option("خلخال", "450005");
            options[6] = new Option("مشگين شهر", "450006");
            options[7] = new Option("مغان", "450007");
            options[8] = new Option("نمين", "450008");
            options[9] = new Option("نير", "450009");
            options[10] = new Option("كوثر", "450010");
            options[11] = new Option("كيوي", "450011");
            options[12] = new Option("گرمي", "450012");

        }
        if (Indx == 4) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("اصفهان", "310001");
            options[2] = new Option("فريدن", "3100012");
            options[3] = new Option("فريدون شهر", "3100013");
            options[4] = new Option("فلاورجان", "3100014");
            options[5] = new Option("گلپايگان", "3100015");
            options[6] = new Option("دهاقان", "3100016");
            options[7] = new Option("نطنز", "3100017");
            options[8] = new Option("نايين", "3100018");
            options[9] = new Option("تيران", "3100019");
            options[10] = new Option("كاشان", "310002");
            options[11] = new Option("فولاد شهر", "3100020");
            options[12] = new Option("اردستان", "3100021");
            options[13] = new Option("سميرم", "3100022");
            options[14] = new Option("درچه", "3100023");
            options[15] = new Option("کوهپایه", "3100024");
            options[16] = new Option("مباركه", "310003");
            options[17] = new Option("شهرضا", "310004");
            options[18] = new Option("خميني شهر", "310005");
            options[19] = new Option("شاهين شهر", "310006");
            options[20] = new Option("نجف آباد", "310007");
            options[21] = new Option("دولت آباد", "310008");
            options[22] = new Option("زرين شهر", "310009");
            options[23] = new Option("آران و بيدگل", "310010");
            options[24] = new Option("باغ بهادران", "310011");
            options[25] = new Option("خوانسار", "310013");
            options[26] = new Option("مهردشت", "310014");
            options[27] = new Option("علويجه", "310015");
            options[28] = new Option("عسگران", "310016");
            options[29] = new Option("نهضت آباد", "310017");
            options[30] = new Option("حاجي آباد", "310018");
            options[31] = new Option("تودشک", "310019");
            options[32] = new Option("ورزنه", "310020");
        }
        if (Indx == 5) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("ايلام", "840001");
            options[2] = new Option("مهران", "840002");
            options[3] = new Option("دهلران", "840003");
            options[4] = new Option("آبدانان", "840004");
            options[5] = new Option("شيروان چرداول", "840005");
            options[6] = new Option("دره شهر", "840006");
            options[7] = new Option("ايوان", "840007");
            options[8] = new Option("سرابله", "840008");
        }
        if (Indx == 6) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("بوشهر", "770001");
            options[2] = new Option("تنگستان", "770002");
            options[3] = new Option("دشتستان", "770003");
            options[4] = new Option("دير", "770004");
            options[5] = new Option("ديلم", "770005");
            options[6] = new Option("كنگان", "770006");
            options[7] = new Option("گناوه", "770007");
            options[8] = new Option("ريشهر", "770008");
            options[9] = new Option("دشتي", "770009");
            options[10] = new Option("خورموج", "770010");
            options[11] = new Option("اهرم", "770011");
            options[12] = new Option("برازجان", "770012");
            options[13] = new Option("خارك", "770013");
            options[14] = new Option("جم", "770014");
            options[15] = new Option("کاکی", "770015");
            options[16] = new Option("عسلویه", "770016");
            options[17] = new Option("بردخون", "770017");
        }
        if (Indx == 7) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("تهران", "210001");
            options[2] = new Option("ورامين", "210005");
            options[3] = new Option("فيروزكوه", "210007");
            options[4] = new Option("ري", "210008");
            options[5] = new Option("دماوند", "210009");
            options[6] = new Option("اسلامشهر", "210010");
            options[7] = new Option("رودهن", "210012");
            options[8] = new Option("لواسان", "210013");
            options[9] = new Option("بومهن", "210014");
            options[10] = new Option("تجريش", "210015");
            options[11] = new Option("فشم", "210016");
            options[12] = new Option("كهريزك", "210017");
            options[13] = new Option("پاكدشت", "210018");
            options[14] = new Option("چهاردانگه", "210025");
            options[15] = new Option("شريف آباد", "210027");
            options[16] = new Option("قرچك", "210028");
            options[17] = new Option("باقرشهر", "210029");
        }
        if (Indx == 8) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("شهركرد", "380001");
            options[2] = new Option("فارسان", "380002");
            options[3] = new Option("بروجن", "380003");
            options[4] = new Option("چلگرد", "380004");
            options[5] = new Option("اردل", "380005");
            options[6] = new Option("لردگان", "380006");
            options[7] = new Option("سامان", "380007");
        }
        if (Indx == 9) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("قائن", "510007");
            options[2] = new Option("فردوس", "510009");
            options[3] = new Option("بيرجند", "560001");
            options[4] = new Option("نهبندان", "560002");
            options[5] = new Option("سربيشه", "560003");
            options[6] = new Option("طبس مسینا", "560004");
            options[7] = new Option("قهستان", "560005");
            options[8] = new Option("درمیان", "560006");
        }
        if (Indx == 10) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("مشهد", "510001");
            options[2] = new Option("نيشابور", "510002");
            options[3] = new Option("سبزوار", "510003");
            options[4] = new Option("كاشمر", "510005");
            options[5] = new Option("گناباد", "510006");
            options[6] = new Option("طبس", "510010");
            options[7] = new Option("تربت حيدريه", "510011");
            options[8] = new Option("خواف", "510012");
            options[9] = new Option("تربت جام", "510013");
            options[10] = new Option("تايباد", "510014");
            options[11] = new Option("قوچان", "510015");
            options[12] = new Option("سرخس", "510018");
            options[13] = new Option("بردسكن", "510021");
            options[14] = new Option("فريمان", "510022");
            options[15] = new Option("چناران", "510023");
            options[16] = new Option("درگز", "510025");
            options[17] = new Option("كلات", "510027");
            options[18] = new Option("طرقبه", "510028");
            options[19] = new Option("سر ولایت", "510029");
        }
        if (Indx == 11) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("بجنورد", "580001");
            options[2] = new Option("اسفراين", "580002");
            options[3] = new Option("جاجرم", "580003");
            options[4] = new Option("شيروان", "580004");
            options[5] = new Option("آشخانه", "580005");
            options[6] = new Option("گرمه", "580006");
            options[7] = new Option("ساروج", "580007");
        }
        if (Indx == 12) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("اهواز", "610001");
            options[2] = new Option("ايرانشهر", "610002");
            options[3] = new Option("شوش", "610003");
            options[4] = new Option("آبادان", "610004");
            options[5] = new Option("خرمشهر", "610005");
            options[6] = new Option("مسجد سليمان", "610006");
            options[7] = new Option("ايذه", "610007");
            options[8] = new Option("شوشتر", "610008");
            options[9] = new Option("انديمشك", "610009");
            options[10] = new Option("سوسنگرد", "610010");
            options[11] = new Option("هويزه", "610011");
            options[12] = new Option("دزفول", "610012");
            options[13] = new Option("شادگان", "610013");
            options[14] = new Option("بندر ماهشهر", "610014");
            options[15] = new Option("بندر امام خميني", "610015");
            options[16] = new Option("اميديه", "610016");
            options[17] = new Option("بهبهان", "610017");
            options[18] = new Option("رامهرمز", "610018");
            options[19] = new Option("باغ ملك", "610019");
            options[20] = new Option("هنديجان", "610020");
            options[21] = new Option("لالي", "610021");
            options[22] = new Option("رامشیر", "610022");
            options[23] = new Option("حمیدیه", "610023");
            options[24] = new Option("دغاغله", "610024");
            options[25] = new Option("ملاثانی", "610025");
            options[26] = new Option("شادگان", "610026");
            options[27] = new Option("ویسی", "610027");
        }
        if (Indx == 13) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("زنجان", "240001");
            options[2] = new Option("ابهر", "240002");
            options[3] = new Option("خدابنده", "240003");
            options[4] = new Option("كارم", "240004");
            options[5] = new Option("ماهنشان", "240005");
            options[6] = new Option("خرمدره", "240006");
            options[7] = new Option("ايجرود", "240007");
            options[8] = new Option("زرين آباد", "240008");
            options[9] = new Option("آب بر", "240009");
            options[10] = new Option("قيدار", "240010");
        }
        if (Indx == 14) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("سمنان", "230001");
            options[2] = new Option("شاهرود", "230002");
            options[3] = new Option("گرمسار", "230003");
            options[4] = new Option("ايوانكي", "230004");
            options[5] = new Option("دامغان", "230005");
            options[6] = new Option("بسطام", "230006");
        }
        if (Indx == 15) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("زاهدان", "540001");
            options[2] = new Option("چابهار", "540002");
            options[3] = new Option("خاش", "540003");
            options[4] = new Option("سراوان", "540004");
            options[5] = new Option("زابل", "540005");
            options[6] = new Option("سرباز", "540006");
            options[7] = new Option("نيكشهر", "540007");
            options[8] = new Option("ايرانشهر", "540008");
            options[9] = new Option("راسك", "540009");
            options[10] = new Option("ميرجاوه", "540010");
        }
        if (Indx == 16) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("شيراز", "710001");
            options[2] = new Option("اقليد", "710002");
            options[3] = new Option("داراب", "710003");
            options[4] = new Option("فسا", "710004");
            options[5] = new Option("مرودشت", "710005");
            options[6] = new Option("خرم بيد", "710006");
            options[7] = new Option("آباده", "710007");
            options[8] = new Option("كازرون", "710008");
            options[9] = new Option("ممسني", "710009");
            options[10] = new Option("سپيدان", "710010");
            options[11] = new Option("لار", "710011");
            options[12] = new Option("فيروز آباد", "710012");
            options[13] = new Option("جهرم", "710013");
            options[14] = new Option("ني ريز", "710014");
            options[15] = new Option("استهبان", "710015");
            options[16] = new Option("لامرد", "710016");
            options[17] = new Option("مهر", "710017");
            options[18] = new Option("حاجي آباد", "710018");
            options[19] = new Option("نورآباد", "710019");
            options[20] = new Option("اردكان", "710020");
            options[21] = new Option("صفاشهر", "710021");
            options[22] = new Option("ارسنجان", "710022");
            options[23] = new Option("قيروكارزين", "710023");
            options[24] = new Option("سوريان", "710024");
            options[25] = new Option("فراشبند", "710025");
            options[26] = new Option("سروستان", "710026");
            options[27] = new Option("ارژن", "710027");
            options[28] = new Option("گويم", "710028");
            options[29] = new Option("داريون", "710029");
            options[30] = new Option("زرقان", "710030");
            options[31] = new Option("خان زنیان", "710031");
            options[32] = new Option("کوار", "710032");
            options[33] = new Option("ده بید", "710033");
            options[34] = new Option("باب انار/خفر", "710034");
            options[35] = new Option("بوانات", "710035");
            options[36] = new Option("خرامه", "710036");
            options[37] = new Option("خنج", "710037");
            options[38] = new Option("سیاخ دارنگون", "710038");
        }
        if (Indx == 17) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("قزوين", "280001");
            options[2] = new Option("تاكستان", "280002");
            options[3] = new Option("آبيك", "280003");
            options[4] = new Option("بوئين زهرا", "280004");
        }
        if (Indx == 18) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("قم", "250001");
        }
        if (Indx == 19) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("طالقان", "210002");
            options[2] = new Option("شهريار", "210004");
            options[3] = new Option("قدس", "210006");
            options[4] = new Option("نظرآباد", "210011");
            options[5] = new Option("رباط كريم", "210019");
            options[6] = new Option("اشتهارد", "210020");
            options[7] = new Option("هشتگرد", "210021");
            options[8] = new Option("كن", "210022");
            options[9] = new Option("ملارد", "210023");
            options[10] = new Option("آسارا", "210024");
            options[11] = new Option("شهرک گلستان", "210026");
            options[12] = new Option("اندیشه", "210030");
            options[13] = new Option("كرج", "260001");
            options[14] = new Option("نظر آباد", "260002");
            options[15] = new Option("گوهردشت", "260003");
            options[16] = new Option("ماهدشت", "260004");
            options[17] = new Option("مشکین دشت", "260005");
        }

        if (Indx == 20) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("سنندج", "870001");
            options[2] = new Option("ديواندره", "870002");
            options[3] = new Option("بانه", "870003");
            options[4] = new Option("بيجار", "870004");
            options[5] = new Option("سقز", "870005");
            options[6] = new Option("كامياران", "870006");
            options[7] = new Option("قروه", "870007");
            options[8] = new Option("مريوان", "870008");
            options[9] = new Option("صلوات آباد", "870009");
            options[10] = new Option("حسن آباد", "870010");
        }
        if (Indx == 21) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("كرمان", "340001");
            options[2] = new Option("راور", "3400010");
            options[3] = new Option("بابك", "3400011");
            options[4] = new Option("انار", "3400012");
            options[5] = new Option("کوهبنان", "3400013");
            options[6] = new Option("رفسنجان", "340002");
            options[7] = new Option("بافت", "340003");
            options[8] = new Option("سيرجان", "340004");
            options[9] = new Option("كهنوج", "340005");
            options[10] = new Option("زرند", "340006");
            options[11] = new Option("بم", "340007");
            options[12] = new Option("جيرفت", "340008");
            options[13] = new Option("بردسير", "340009");
        }
        if (Indx == 22) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("كرمانشاه", "830001");
            options[2] = new Option("اسلام آباد غرب", "830002");
            options[3] = new Option("سر پل ذهاب", "830003");
            options[4] = new Option("كنگاور", "830004");
            options[5] = new Option("سنقر", "830005");
            options[6] = new Option("قصر شيرين", "830006");
            options[7] = new Option("گيلان غرب", "830007");
            options[8] = new Option("هرسين", "830008");
            options[9] = new Option("صحنه", "830009");
            options[10] = new Option("پاوه", "830010");
            options[11] = new Option("جوانرود", "830011");
            options[12] = new Option("شاهو", "830012");
        }
        if (Indx == 23) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("ياسوج", "740001");
            options[2] = new Option("گچساران", "740002");
            options[3] = new Option("دنا", "740003");
            options[4] = new Option("دوگنبدان", "740004");
            options[5] = new Option("سي سخت", "740005");
            options[6] = new Option("دهدشت", "740006");
            options[7] = new Option("ليكك", "740007");
        }
        if (Indx == 24) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("گرگان", "170001");
            options[2] = new Option("آق قلا", "170002");
            options[3] = new Option("گنبد كاووس", "170003");
            options[4] = new Option("علي آباد كتول", "170004");
            options[5] = new Option("مينو دشت", "170005");
            options[6] = new Option("تركمن", "170006");
            options[7] = new Option("كردكوي", "170007");
            options[8] = new Option("بندر گز", "170008");
            options[9] = new Option("كلاله", "170009");
            options[10] = new Option("آزاد شهر", "170010");
            options[11] = new Option("راميان", "170011");
        }
        if (Indx == 25) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("رشت", "130001");
            options[2] = new Option("منجيل", "130003");
            options[3] = new Option("لنگرود", "130004");
            options[4] = new Option("رود سر", "130005");
            options[5] = new Option("تالش", "130006");
            options[6] = new Option("آستارا", "130007");
            options[7] = new Option("ماسوله", "130008");
            options[8] = new Option("آستانه اشرفيه", "130009");
            options[9] = new Option("رودبار", "130010");
            options[10] = new Option("فومن", "130011");
            options[11] = new Option("صومعه سرا", "130012");
            options[12] = new Option("بندرانزلي", "130013");
            options[13] = new Option("كلاچاي", "130014");
            options[14] = new Option("هشتپر", "130015");
            options[15] = new Option("رضوان شهر", "130016");
            options[16] = new Option("ماسال", "130017");
            options[17] = new Option("شفت", "130018");
            options[18] = new Option("سياهكل", "130019");
            options[19] = new Option("املش", "130020");
            options[20] = new Option("لاهیجان", "130021");
            options[21] = new Option("خشک بيجار", "130022");
            options[22] = new Option("خمام", "130023");
            options[23] = new Option("لشت نشا", "130024");
            options[24] = new Option("بندر کياشهر", "130025");
        }
        if (Indx == 26) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("خرم آباد", "660001");
            options[2] = new Option("ماهشهر", "6600010");
            options[3] = new Option("دزفول", "6600011");
            options[4] = new Option("بروجرد", "660002");
            options[5] = new Option("دورود", "660003");
            options[6] = new Option("اليگودرز", "660004");
            options[7] = new Option("ازنا", "660005");
            options[8] = new Option("نور آباد", "660006");
            options[9] = new Option("كوهدشت", "660007");
            options[10] = new Option("الشتر", "660008");
            options[11] = new Option("پلدختر", "660009");
        }
        if (Indx == 27) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("ساري", "150001");
            options[2] = new Option("آمل", "150002");
            options[3] = new Option("بابل", "150003");
            options[4] = new Option("بابلسر", "150004");
            options[5] = new Option("بهشهر", "150005");
            options[6] = new Option("تنكابن", "150006");
            options[7] = new Option("جويبار", "150007");
            options[8] = new Option("چالوس", "150008");
            options[9] = new Option("رامسر", "150009");
            options[10] = new Option("سواد كوه", "150010");
            options[11] = new Option("قائم شهر", "150011");
            options[12] = new Option("نكا", "150012");
            options[13] = new Option("نور", "150013");
            options[14] = new Option("بلده", "150014");
            options[15] = new Option("نوشهر", "150015");
            options[16] = new Option("پل سفيد", "150016");
            options[17] = new Option("محمود آباد", "150017");
            options[18] = new Option("فريدون كنار", "150018");
        }
        if (Indx == 28) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("اراك", "860001");
            options[2] = new Option("آشتيان", "860002");
            options[3] = new Option("تفرش", "860003");
            options[4] = new Option("خمين", "860004");
            options[5] = new Option("دليجان", "860005");
            options[6] = new Option("ساوه", "860006");
            options[7] = new Option("سربند", "860007");
            options[8] = new Option("محلات", "860008");
            options[9] = new Option("شازند", "860009");
        }
        if (Indx == 29) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("بندرعباس", "760001");
            options[2] = new Option("قشم", "760002");
            options[3] = new Option("كيش", "760003");
            options[4] = new Option("بندر لنگه", "760004");
            options[5] = new Option("بستك", "760005");
            options[6] = new Option("حاجي آباد", "760006");
            options[7] = new Option("دهبارز", "760007");
            options[8] = new Option("انگهران", "760008");
            options[9] = new Option("ميناب", "760009");
            options[10] = new Option("ابوموسي", "760010");
            options[11] = new Option("بندر جاسك", "760011");
            options[12] = new Option("تنب بزرگ", "760012");
            options[13] = new Option("بندر خمیر", "760013");
            options[14] = new Option("پارسیان", "760014");
            options[15] = new Option("قشم", "760015");
        }
        if (Indx == 30) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("همدان", "810001");
            options[2] = new Option("ملاير", "810002");
            options[3] = new Option("تويسركان", "810003");
            options[4] = new Option("نهاوند", "810004");
            options[5] = new Option("كبودر اهنگ", "810005");
            options[6] = new Option("رزن", "810006");
            options[7] = new Option("اسدآباد", "810007");
            options[8] = new Option("بهار", "810008");
        }
        if (Indx == 31) {
            options[0] = new Option("لطفا شهر را انتخاب کنید", "");
            options[1] = new Option("يزد", "350001");
            options[2] = new Option("تفت", "350002");
            options[3] = new Option("اردكان", "350003");
            options[4] = new Option("ابركوه", "350004");
            options[5] = new Option("ميبد", "350005");
            options[6] = new Option("طبس", "350006");
            options[7] = new Option("بافق", "350007");
            options[8] = new Option("مهريز", "350008");
            options[9] = new Option("اشكذر", "350009");
            options[10] = new Option("هرات", "350010");
            options[11] = new Option("خضرآباد", "350011");
            options[12] = new Option("شاهديه", "350012");
            options[13] = new Option("حمیدیه شهر", "350013");
            options[14] = new Option("سید میرزا", "350014");
            options[15] = new Option("زارچ", "350015");
        }
document.getElementById('<%=ddlCityCode.ClientID %>').options[0].selected=true;
}

}

function check()
{

if (document.f1.<%=ddlProvinceCode.ClientID %>.selectedIndex==0)
 {
    alert(' استان را انتخاب کنيد');
    document.f1.<%=ddlProvinceCode.ClientID %>.focus();
 return (false);
 }
if (document.f1.<%=ddlCityCode.ClientID %>.selectedIndex==0)
 {
    alert(' شهر را انتخاب کنيد');
    document.f1.<%=ddlCityCode.ClientID %>.focus();
 return (false);
 }
}    
    </script>
    <div style="height: 10px;">
    </div>
    <div class="Col2A">
        <div class="Col2ALeft">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="WinRadiusGray">
                    <asp:Panel runat="server" ID="pnlBasket" CssClass="OrgaeWin">
                        <div class="Marginer1">
                            <div style="text-align: right; font-weight: bold; direction: rtl;">
                                <asp:Label ID="lblBasketHeader" runat="server" Text="سبد خرید خالی است"></asp:Label></div>
                            <asp:Repeater ID="rptBasket" OnItemCommand="HandleRepeaterCommand" runat="server">
                                <HeaderTemplate>
                                    <table class="tblBasket" cellspacing="0">
                                        <tr>
                                            <th>
                                                <asp:Label ID="Label1" runat="server" Text="حذف"></asp:Label>
                                            </th>
                                            <th>
                                                <asp:Label ID="Label3" runat="server" Text="قیمت کل"></asp:Label>
                                            </th>
                                            <th>
                                                <asp:Label ID="Label4" runat="server" Text="قیمت پایه"></asp:Label>
                                            </th>
                                            <th>
                                                <asp:Label ID="Label5" runat="server" Text="تعداد"></asp:Label>
                                            </th>
                                            <th>
                                                <asp:Label ID="Label40" runat="server" Text="وضعیت"></asp:Label>
                                            </th>
                                            <th>
                                                <asp:Label ID="Label6" runat="server" Text="نام محصول"></asp:Label>
                                            </th>
                                        </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:ImageButton runat="server" ProductCode='<%#DataBinder.Eval(Container.DataItem, "ProductCode") %>'
                                                OnClientClick=<%#"return confirm('آیا از حذف " +  DataBinder.Eval(Container.DataItem, "ProductName") + " مطمئن هستید؟ ')" %>
                                                ID="btnRemove" CommandName="RemoveFromBasket" ToolTip="حذف از سبد خرید" ImageUrl="~/images/Remove-icon.png" />
                                        </td>
                                        <td>
                                            <%#Tools.ChageEnc(Tools.FormatCurrency(DataBinder.Eval(Container.DataItem, "ProductTotalPrice").ToString()))%>
                                        </td>
                                        <td>
                                            <%#Tools.ChageEnc(Tools.FormatCurrency(DataBinder.Eval(Container.DataItem, "ProductPrice").ToString()))%>
                                        </td>
                                        <td>
                                            <%#Tools.ChangeEnc( DataBinder.Eval(Container.DataItem, "ItemCount").ToString())%>
                                        </td>
                                        <td>
                                            <%#GetStatus(Eval("ProductCode"))%>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductName")%>'
                                                NavigateUrl='<%#"http://www.parset.com/Shop/" + Eval("ProductCode") + "/" + Tools.ReplaceSpaceWithUnderline(Eval("ProductName")) + ".htm"%>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table></FooterTemplate>
                            </asp:Repeater>
                            <asp:Panel runat="server" ID="pnlTotal" CssClass="ContTotal">
                                <asp:Label ID="Label18" runat="server" Text="مجموع:"></asp:Label>&nbsp;
                                <asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>&nbsp;ریال
                            </asp:Panel>
                        </div>
                    </asp:Panel>
                    </div>
                    <div class="WinRadiusGray">
                    <asp:Panel runat="server" ID="pnlBuyInfo">
                        <div class="BoxYel">
                            <div class="BoxYelHeader">
                                <div class="BoxYelLable">
                                    راهنمای خرید
                                </div>
                            </div>
                            <div id="cphMain_pnlBuyInfo" class="BoxYelMid">
                                <div style="padding: 10px; direction: rtl;">
                                    <ul class="OrderMsg">
                                        <li>&nbsp;لطفا" اطلاعات خواسته شده در فرم سفارش را با دقت تکمیل نمائید . ثبت اطلاعات
                                            ناقص و نادرست باعث بروز اختلال در ارسال کالا توسط اداره پست میگردد و درصورت عودت
                                            محصول به هردلیل ، هزینه پستی آن از حساب فروشگاه کسر میگردد . </li>
                                        <li>&nbsp;کلیه سفارشات ثبت شده در سیستم ، طی 3 الی 4 روز کاری و در ساعات اداری ( بین
                                            8 صبح الی 4 بعدازظهر ) توسط اداره پست به آدرس ثبت شده در فرم سفارش ارسال میگردد.
                                            لذا خواهشمند است آدرس پستی دقیق به همراه پلاک ثبتی خود را در فرم ثبت نموده و به
                                            دیگر همکاران خود در محل کار یا دیگر افراد خانواده دررابطه با سفارش خود اطلاع رسانی
                                            نموده تا در صورت مراجعه مامور پست به جهت عدم حضورشما ، سفارش عودت داده نشود و <strong>
                                                درصورت امکان آدرس محلی را ثبت نمائید که بیشتر اوقات خود را در آن محل میگذرانید</strong>
                                            .</li>
                                        <li>درصورت مراجعه مامور پست و عدم تحویل کالا به دلیل عدم حضور ، قبض عدم حضور صادر گشته
                                            و به درب منزل یا محل کار الصاق میگردد و مرسوله به واحد پستی منطقه ارجاع میگردد .
                                            مامور پست مجددا" روز بعد به محل مراجعه میکند و درصورت عدم حضور ، قبض دوم عدم حضور
                                            صادر میگردد و درصورتیکه ظرف مدت 5 روز جهت دریافت مرسوله خود به واحد پستی منطقه مراجعه
                                            ننمائید ، مرسوله به واحد پستی مبداء مرجوع میگردد و هزینه پستی مربوطه از حساب فروشنده
                                            کسر میگردد .</li>
                                        <li>سفارشات ثبت شده ای که شامل فیلم یا کارتون هستند ، فقط روزهای شنبه هر هفته آماده
                                            و به اداره پست تحویل میگردد و چنانچه برای دریافت آن عجله دارید ، درقسمت توضیخات
                                            ( انتهای فرم سفارش ) قید نمائید .</li>
                                        <li>سفارشات زیر <strong>5000 تومان</strong> فقط با پست عادی ارسال میگردد که دراین صورت
                                            بعد از 5 تا 7 روز کاری به دست شما خواهد رسید .</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="BoxYelBot">
                            </div>
                        </div>
                    </asp:Panel>
                    </div>
                    <div class="Clear"></div>
                    <div class="WinRadiusGray">
                    <div>
                        <asp:Literal ID="ltrFactor" runat="server"></asp:Literal>
                    </div>
                    </div>
                    <div class="WinRadiusGray">
                    <div class="Marginer1">
                        <AKP:MsgBox runat="server" ID="msgMessage">
                        </AKP:MsgBox>
                    </div>
                    </div>
                    <div class="WinRadiusGray">

                    <div>
                        <asp:Panel runat="server" ID="pnlPayTools">
                            <div class="cTabHeaders">
                                <telerik:RadTabStrip ID="tsPay" dir="rtl" SelectedIndex="0" runat="server" MultiPageID="RadMultiPage1"
                                    Skin="Vista">
                                    <Tabs>
                                        <telerik:RadTab ID="Tab1" Font-Names="tahoma" runat="server" Text="فرم سفارش کالا">
                                        </telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTabStrip>
                            </div>
                            <div class="cTabWrapper">
                                <div class="Marginer1">
                                    <div class="OrderForm" style="text-align: right;">
                                        <div class="Marginer1">
                                            <div style="padding: 6px;">
                                                <AKP:MsgBox ID="MsgBox2" runat="server">
                                                </AKP:MsgBox>
                                            </div>
                                            <div style="padding: 6px;">
                                                <AKP:MsgBox ID="MsgBox1" runat="server">
                                                </AKP:MsgBox>
                                            </div>
                                        </div>
                                        <asp:MultiView runat="server" ID="mltViewOrder" ActiveViewIndex="0">
                                            <asp:View runat="server" ID="View0">
                                                <div class="FormRow">
                                                    <div class="FormList">
                                                        <asp:DropDownList ID="ddlProvinceCode" onchange="ldMenu(this.selectedIndex);" CssClass="cInput"
                                                            Style="font-size: 12px;" runat="server">
                                                            <asp:ListItem Value="0">لطفا استان خود را انتخاب کنید</asp:ListItem>
                                                            <asp:ListItem Value="O9">آذربايجان شرقي</asp:ListItem>
                                                            <asp:ListItem Value="O10">آذربايجان غربي</asp:ListItem>
                                                            <asp:ListItem Value="O13">اردبيل</asp:ListItem>
                                                            <asp:ListItem Value="O14">اصفهان</asp:ListItem>
                                                            <asp:ListItem Value="O11">ايلام</asp:ListItem>
                                                            <asp:ListItem Value="O15">بوشهر</asp:ListItem>
                                                            <asp:ListItem Value="O30">تهران</asp:ListItem>
                                                            <asp:ListItem Value="O3">چهارمحال بختياري</asp:ListItem>
                                                            <asp:ListItem Value="O19">خراسان جنوبي</asp:ListItem>
                                                            <asp:ListItem Value="O17">خراسان رضوي</asp:ListItem>
                                                            <asp:ListItem Value="O18">خراسان شمالي</asp:ListItem>
                                                            <asp:ListItem Value="O16">خوزستان</asp:ListItem>
                                                            <asp:ListItem Value="O20">زنجان</asp:ListItem>
                                                            <asp:ListItem Value="O21">سمنان</asp:ListItem>
                                                            <asp:ListItem Value="O23">سيستان و بلوچستان</asp:ListItem>
                                                            <asp:ListItem Value="O1">فارس</asp:ListItem>
                                                            <asp:ListItem Value="O22">قزوين</asp:ListItem>
                                                            <asp:ListItem Value="O12">قم</asp:ListItem>
                                                            <asp:ListItem Value="O31">کرج</asp:ListItem>
                                                            <asp:ListItem Value="O27">كردستان</asp:ListItem>
                                                            <asp:ListItem Value="O25">كرمان</asp:ListItem>
                                                            <asp:ListItem Value="O26">كرمانشاه</asp:ListItem>
                                                            <asp:ListItem Value="O24">كهكيلويه و بويراحمد</asp:ListItem>
                                                            <asp:ListItem Value="O8">گلستان</asp:ListItem>
                                                            <asp:ListItem Value="O7">گيلان</asp:ListItem>
                                                            <asp:ListItem Value="O28">لرستان</asp:ListItem>
                                                            <asp:ListItem Value="O29">مازندران</asp:ListItem>
                                                            <asp:ListItem Value="O2">مركزي</asp:ListItem>
                                                            <asp:ListItem Value="O5">هرمزگان</asp:ListItem>
                                                            <asp:ListItem Value="O4">همدان</asp:ListItem>
                                                            <asp:ListItem Value="O6">يزد</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="FormRight">
                                                        <asp:Label ID="Label5" runat="server" Text=":استان"></asp:Label>
                                                        <asp:Label ID="Label24" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="FormRow">
                                                    <div class="FormList">
                                                        <asp:DropDownList ID="ddlCityCode" CssClass="cInput" Style="font-size: 12px;" runat="server">
                                                            <asp:ListItem Value="0">لطفا شهر خود را انتخاب کنید</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="FormRight">
                                                        <asp:Label ID="Label4" runat="server" Text=":شهر"></asp:Label>
                                                        <asp:Label ID="Label25" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                                    </div>
                                                </div>
                                                <div>
                                                </div>
                                                <div>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="lnkAddMoreProducts" CssClass="ThemButton" Text="اضافه کردن محصول جدید"
                                                                    runat="server" OnClick="lnkAddMoreProducts_Click"></asp:Button>
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnNext1" CssClass="ThemButton" OnClientClick="Hide(this)" Text="خرید"
                                                                    runat="server" OnClick="btnNext1_Click"></asp:Button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </asp:View>
                                            <asp:View runat="server" ID="View1">
                                                <div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblTotalProductPrice" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label34" runat="server" Text=":هزینه کالا"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <table class="tblSendTypes">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label27" runat="server" Text="ریال"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblPishtazPrice" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    هزینه ارسال
                                                                </td>
                                                                <td>
                                                                    <asp:RadioButton runat="server" AutoPostBack="true" Text="پست پيشتاز" OnCheckedChanged="CalcTotalOrder"
                                                                        CssClass="SendType" GroupName="SendType" ID="rbPishtaz" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label41" runat="server" Text="ریال"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblSefareshiPrice" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    هزینه ارسال
                                                                </td>
                                                                <td>
                                                                    <asp:RadioButton runat="server" Text="پست سفارشي " Checked="true" CssClass="SendType"
                                                                        GroupName="SendType" AutoPostBack="true" ID="rbSefareshi" OnCheckedChanged="CalcTotalOrder" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="Clear">
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblOtherCosts" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label38" runat="server" Text=":هزینه بسته بندی"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblTotalOrderPrice" Font-Bold="true" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label36" runat="server" Text=":هزینه کل"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <AKP:Combo ID="cboHCGenderCode" AllowNull="false" BaseID="HCGenders" runat="server" />
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label131" runat="server" Text=":جنسیت"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" BackColor="#ef4d4d" ForeColor="White"
                                                                ControlToValidate="txtFirstName" runat="server" ErrorMessage="نام را وارد کنید"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label1" runat="server" Text=":نام"></asp:Label>
                                                            <asp:Label ID="Label2" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" BackColor="#ef4d4d" ForeColor="White"
                                                                ControlToValidate="txtLastName" runat="server" ErrorMessage="نام خانوادگی را وارد کنید"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label7" runat="server" Text=":نام خانوادگی"></asp:Label>
                                                            <asp:Label ID="Label8" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" BackColor="#ef4d4d"
                                                                ForeColor="White" ControlToValidate="txtCellPhone" runat="server" ErrorMessage="شماره موبایل الزامی است"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtCellPhone" SkinID="Numeric" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label121" runat="server" Text=":موبایل"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:TextBox ID="txtHomeTel" SkinID="Numeric" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label3" runat="server" Text=":تلفن منزل"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:TextBox ID="txtJobTel" SkinID="Numeric" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label9" runat="server" Text=":تلفن محل کار"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="White"
                                                                BackColor="#ef4d4d" ControlToValidate="txtPostalCode" runat="server" ErrorMessage="کد پستی را وارد کنید"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtPostalCode" MaxLength="10" SkinID="Numeric" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label101" runat="server" Text=":کد پستی"></asp:Label>
                                                            <asp:Label ID="Label111" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="Farsi" style="padding-right: 100px;">
                                                        <a href="http://www.iran.ir/postcode" target="_blank">
                                                            دریافت کد پستی از روی شماره تلفن </a>
                                                        <br />
                                                        <asp:Label ID="Label16" runat="server" Text="برای دریافت کد پستی خود با 140 تماس بگیرید."></asp:Label>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmail"
                                                                Display="Dynamic" runat="server" BackColor="#ef4d4d" ForeColor="White" ErrorMessage="ایمیل را وارد کنید"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                                ControlToValidate="txtEmail" ForeColor="White" BackColor="#ef4d4d" ErrorMessage="ایمیل معتبر نیست"></asp:RegularExpressionValidator>
                                                            <asp:TextBox ID="txtEmail" SkinID="English" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label10" runat="server" Text=":ایمیل"></asp:Label>
                                                            <asp:Label ID="Label11" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:TextBox ID="txtAddress" TextMode="MultiLine" Width="300" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label12" runat="server" Text=":آدرس"></asp:Label>
                                                            <asp:Label ID="Label13" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRow">
                                                        <div class="FormList">
                                                            <asp:TextBox ID="txtDescription" TextMode="MultiLine" Width="300" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label21" runat="server" Text=":توضیحات"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="Clear">
                                                    </div>
                                                    <div class="FormRow">
                                                        <asp:Panel runat="server" ID="pnlUserBalance" CssClass="FormList" Style="direction: rtl;">
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <AKP:Combo runat="server" AllowNull="false" ID="cboHCPayMethodCode">
                                                                        </AKP:Combo>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label39" Text="موجودی:" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblBalance" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        ریال
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label23" runat="server" Text=":نحوه پرداخت"></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="Clear">
                                                </div>
                                                <asp:Button ID="btnConfirm" CssClass="ThemButton" Text="تایید" runat="server" OnClick="btnConfirm_Click">
                                                </asp:Button>
                                            </asp:View>
                                            <asp:View runat="server" ID="View2">
                                                <div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblGender" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label14" runat="server" Text=":جنسیت"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label15" runat="server" Text=":نام"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblLastName" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label17" runat="server" Text=":نام خانوادگی"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblProvince" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label22" runat="server" Text=":استان"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblCity" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label26" runat="server" Text=":شهر"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblCellPhone" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label28" runat="server" Text=":موبایل"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblHomeTel" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label29" runat="server" Text=":تلفن منزل"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblWorkTel" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label30" runat="server" Text=":تلفن محل کار"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblPostalCode" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label31" runat="server" Text=":کد پستی"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label33" runat="server" Text=":ایمیل"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblAddress" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label35" runat="server" Text=":آدرس"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="FormRowRead">
                                                        <div class="FormList">
                                                            <asp:Label ID="lblComment" runat="server"></asp:Label>
                                                        </div>
                                                        <div class="FormRight">
                                                            <asp:Label ID="Label37" runat="server" Text=":توضیحات"></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </asp:View>
                                        </asp:MultiView>
                                        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1"
                                            DynamicLayout="true">
                                            <ProgressTemplate>
                                                <asp:Image ID="Image1" ImageUrl="~/images/loading2.gif" runat="server" />
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                        <div class="Clear">
                                        </div>
                                        <div style="text-align: left; padding-left: 15px;">
                                            <asp:Button ID="btnEditInfo" Visible="false" CssClass="ThemButton" Text="اصلاح اطلاعات"
                                                runat="server" OnClick="btnEditInfo_Click"></asp:Button>
                                            <asp:Button ID="btnSubmit" Visible="false" OnClientClick="Hide(this)" CssClass="ThemButton"
                                                Text="ثبت سفارش" runat="server" OnClick="btnSubmit_Click"></asp:Button>
                                        </div>
                                    </div>
                                    <div>
                                        <AKP:MsgBox runat="server" ID="msgPay">
                                        </AKP:MsgBox>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label19" runat="server" Text="در صورت داشتن هرگونه سوال"></asp:Label>
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/ContactUs.aspx" runat="server">با ما تماس بگیرید</asp:HyperLink>
                                    </div>
                                    <div class="Alert">
                                        توجه:<br />
                                        پس از ثبت نهایی ، یک پیام کوتاه به شماره موبایل شما ارسال میگردد و تا ارسال جواب
                                        ، سفارش شما تایید نمیشود.
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="Col2ARight">
            <div class="WinRadiusGray">
                        <MNU:Menu runat="server" />
                    </div>
            <div class="WinRadiusGray">
            <div>
                <UCMostSoldPros:MostSoldPros runat="server">
                </UCMostSoldPros:MostSoldPros>
            </div>
            </div>
            <div class="WinRadiusGray">
            <div class="CenterButton">
                <asp:HyperLink ID="HyperLink3" runat="server" Target="_blank" NavigateUrl="~/YahooGroup.aspx"
                    ImageUrl="~/images/JoinButton.jpg"></asp:HyperLink>
            </div>
            </div>
            <div class="WinRadiusGray">
                <div>
                    <asp:HyperLink ID="HyperLink4" runat="server" Target="_blank" ImageUrl="~/images/bannerMahak.jpg"
                        NavigateUrl="http://www.mahak-charity.org/main/iwanttohelpmahakrightnow"></asp:HyperLink>
                </div>
                <div class="Farsi">
                    درصدی از سود حاصل از فروش این سایت به حساب موسسه محک واریز میگردد . <font color="red">
                        (با خرید از ما ،شما هم در این امر خیر سهیم باشید )</font>
                </div>
            </div>
            <div class="WinRadiusGray">
            <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" ImageUrl="~/images/SepcialProducts.gif"
                NavigateUrl="~/SpecialProducts.aspx"></asp:HyperLink>
            </div>
        </div>
    </div>
    <asp:Literal ID="ltrScript" runat="server"></asp:Literal>
</asp:Content>
