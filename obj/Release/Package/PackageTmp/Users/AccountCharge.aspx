<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootCol1.master"
    CodeBehind="AccountCharge.aspx.cs" Inherits="Parset.UsersFolder.AccountCharge" %>

<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CP1">
    <div class="WinRadiusGray">
        <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
    </div>
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="شارژ حساب"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>
        <div>
            <div>
                <div class="Marginer1">
                    <div class="Box1" style="margin-top: 10px;">
                        <div class="PayPanel">
                            <div>
                                <AKP:MsgBox runat="server" ID="msg">
                                </AKP:MsgBox>
                            </div>
                            <div class="BlueColorBox" style="padding:5px;">
                                موجودی کنونی:
                                <asp:Label ID="lblAccountBalance" runat="server"></asp:Label>
                            </div>
                            <div >
                                <table style="float:right;margin-right:50px;">
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnUpdateAccount" CssClass="input-button" OnClientClick="HideButton(this);"
                                                runat="server" Text="افزايش اعتبار" OnClick="btnUpdateAccount_Click" />
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlBankCode" runat="server">
                                                <asp:ListItem Text="بانک پارسیان" Value="2"></asp:ListItem>
                                                <%--<asp:ListItem Text="بانک سامان" Value="1"></asp:ListItem>--%>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="پرداخت با استفاده از درگاه بانک"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="ريال"></asp:Label>
                                        </td>
                                        <td>
                                            <AKP:NumericTextBox ID="txtAmount" runat="server"></AKP:NumericTextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="مبلغ شارژ"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
            <table style="direction: ltr; width: 100%;" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <img src="../images/Templates/WinShadow_01.gif" width="29" height="23" alt="">
                    </td>
                    <td style="background-image: url(../images/Templates/WinShadowTop.jpg); height: 23px;">
                    </td>
                    <td>
                        <img src="../images/Templates/WinShadow_03.gif" width="28" height="23" alt="">
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url(../images/Templates/WinShadowLeft.jpg); width: 29px;">
                    </td>
                    <td style="text-align: right; direction: rtl;line-height:150%;">
                        <div style="direction: rtl; margin-top: 10px; padding: px;">
                            <span style="color: Red; font-weight: bold;">قابل توجه کاربران محترم </span>
                            <br />
                            <br />
                            جهت استفاده از بعضی خدمات پارست باید حداقل موجودی 
							مورد نیاز را داشته باشید. <br />
							با شارژ اکانت خود به میزان حداقل 1000 تومان هزینه 
							ارسال هر اس ام اس برای شما با 43 درصد تخفیف محاسبه 
							می شود.<br />
                            برای پرداخت آنلاین کافی است رمز دوم عابر بانک خود که همان رمز اینترنتی است را 
							در اختیار داشته
                            باشید.<br />
                            امکان پرداخت با عابر بانک تمام کارتهای بانکی میسر است.
                        </div>

                        &nbsp;
                    </td>
                    <td style="background-image: url(../images/Templates/WinShadowRight.jpg); width: 28px;">
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="../images/Templates/WinShadow_07.gif" width="29" height="27" alt="">
                    </td>
                    <td style="background-image: url(../images/Templates/WinShadowBottom.jpg); height: 27px;">
                    </td>
                    <td>
                        <img src="../images/Templates/WinShadow_09.gif" width="28" height="27" alt="">
                    </td>
                </tr>
            </table>
            <div dir="rtl" id="paymentBox" style="margin-left:120px;">
                                    <div id="shetab" style="opacity: 1;">
                                        &nbsp;</div>
                                    <div id="banks">
                                        <h3>
                                            درگاه پرداخت فوق پذیرنده تمامی کارت های بانکی عضو شبکه شتاب می باشد.</h3>
                                        <div class="Clear">
                                        </div>
                                        <ul class="list1" id="banks-list">
                                            <li style="background-position: -216px 0px; border-width: 1px; top: 0px;" id="bank-number-9">
                                                <span class="english-title">melli</span><span class="persian-title">ملی</span></li>
                                            <li style="background-position: -240px 0px; border-width: 1px; top: 0px;" id="bank-number-10">
                                                <span class="english-title">saderat</span><span class="persian-title">صادرات</span></li>
                                            <li style="background-position: -120px 0px; border-width: 1px; top: 0px;" id="bank-number-5">
                                                <span class="english-title">parsian</span><span class="persian-title">پارسیان</span></li>
                                            <li style="background-position: -48px 0px; border-width: 1px; top: 0px;" id="bank-number-2">
                                                <span class="english-title">mellat</span><span class="persian-title">ملت</span></li>
                                            <li style="background-position: 0px 0px; border-width: 1px; top: 0px;" id="bank-number-0">
                                                <span class="english-title">saman</span><span class="persian-title">سامان</span></li>
                                            <li style="background-position: -288px 0px; border-width: 1px; top: 0px;" id="bank-number-12">
                                                <span class="english-title">tejarat</span><span class="persian-title">تجارت</span></li>
                                            <li style="background-position: -360px 0px; border-width: 1px; top: 0px;" id="bank-number-15">
                                                <span class="english-title">refah</span><span class="persian-title">رفاه</span></li>
                                            <li style="background-position: -384px 0px;" id="bank-number-16"><span class="english-title">
                                                sepah</span><span class="persian-title">سپه</span></li>
                                            <li style="background-position: -480px 0px;" id="bank-number-20"><span class="english-title">
                                                maskan</span><span class="persian-title">مسکن</span></li>
                                            <li style="background-position: -24px 0px; border-width: 1px; top: 0px;" id="bank-number-1">
                                                <span class="english-title">eghtesade-novin</span><span class="persian-title">اقتصاد
                                                    نوین</span></li>
                                            <li style="background-position: -72px 0px; border-width: 1px; top: 0px;" id="bank-number-3">
                                                <span class="english-title">keshavarzi</span><span class="persian-title">کشاورزی</span></li>
                                            <li style="background-position: -192px 0px; border-width: 1px; top: 0px;" id="bank-number-8">
                                                <span class="english-title">pasargad</span><span class="persian-title">پاسارگاد</span></li>
                                        </ul>
                                        <ul class="list2" id="banks-list">
                                            <li style="background-position: -312px 0px; border-width: 1px; top: 0px;" id="bank-number-13">
                                                <span class="english-title">toseye-tavon</span><span class="persian-title">توسعه تعاون</span></li>
                                            <li style="background-position: -336px 0px; border-width: 1px; top: 0px;" id="bank-number-14">
                                                <span class="english-title">ansar</span><span class="persian-title">انصار</span></li>
                                            <li style="background-position: -264px 0px; border-width: 1px; top: 0px;" id="bank-number-11">
                                                <span class="english-title">post-bank</span><span class="persian-title">پست بانک</span></li>
                                            <li style="background-position: -96px 0px; border-width: 1px; top: 0px;" id="bank-number-4">
                                                <span class="english-title">sina</span><span class="persian-title">سینا</span></li>
                                            <li style="background-position: -408px 0px;" id="bank-number-17"><span class="english-title">
                                                sarmayeh</span><span class="persian-title">سرمایه</span></li>
                                            <li style="background-position: -432px 0px;" id="bank-number-18"><span class="english-title">
                                                tat</span><span class="persian-title">تات</span></li>
                                            <li style="background-position: -456px 0px;" id="bank-number-19"><span class="english-title">
                                                kar-afarin</span><span class="persian-title">کار آفرین</span></li>
                                            <li style="background-position: -504px 0px;" id="bank-number-21"><span class="english-title">
                                                mehr</span><span class="persian-title">مهر</span></li>
                                            <li style="background-position: -528px 0px; border-width: 1px; top: 0px;" id="bank-number-22">
                                                <span class="english-title">dey</span><span class="persian-title">دی</span></li>
                                            <li style="background-position: -552px 0px; border-width: 1px; top: 0px;" id="bank-number-23">
                                                <span class="english-title">shahr</span><span class="persian-title">شهر</span></li>
                                            <li style="background-position: -144px 0px; border-width: 1px; top: 0px;" id="bank-number-6">
                                                <span class="english-title">toseye-saderat</span><span class="persian-title">توسعه صادرات</span></li>
                                            <li style="background-position: -168px 0px; border-width: 1px; top: 0px;" id="bank-number-7">
                                                <span class="english-title">sanato-madan</span><span class="persian-title">صنعت و معدن</span></li>
                                        </ul>
                                        <!--<p id="selected-bank-name">&nbsp;</p>-->
                                    </div>
                                </div>
        </div>
    </div>
</asp:Content>
