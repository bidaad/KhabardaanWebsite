<%@ Page Title="" Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="VisaCard" Codebehind="VisaCard.aspx.cs" %>

<%@ Register Src="UserControls/ProductList.ascx" TagName="ProductList" TagPrefix="Pro" %>


<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="InnerBarWrap">
    </div>
    <div class="LeftCol">
        <div class="Marginer1">
            <div class="Spacer1">
            </div>
            <div>
                <div class="Marginer1">
                    <div class="Box3">
            <div class="Box3Header2">
                <asp:Label ID="Label1" runat="server" Text="صدور ویزا کارت جهت خرید اینترنتی بصورت آنلاین"></asp:Label>
            </div>
            <div class="Marginer1">
                <div style="direction: rtl">
                    <div>
                        <font face="Tahoma" size="4">صدور ویزا کارت جهت خرید اینترنتی بصورت آنلاین : </font>
                    </div>
                    <div>
                        با راه اندازی اين سرويس، از اين پس هر کاربر ميتواند کارت <span lang="en-us">VisaCard</span>
                        مخصوص به خود را داشته باشد. مزاياي داشتن اين کارت بدين شرح ميباشد :
                    </div>
                    <div>
                        - ثبت نام آزمونهاي <span lang="en-us">TOEFL </span>&nbsp;و <span lang="en-us">GRE
                        </span>و ...</div>
                    <div>
                        - پرداخت هزينه ثبت نام دانشگاههاي خارجي<span lang="en-us"> </span>&nbsp;و مقالات
                        و کنفرانسهای خارجي</div>
                    <div>
                        - خريد <span lang="en-us">Domain</span> و <span lang="en-us">Hosting</span> از شرکتهاي
                        خارجی</div>
                    <div>
                        <span lang="fa">- خريد انواع سرويسهاي دانلود نظير </span><span lang="en-us">4Shared</span>،<span
                            lang="fa"> و ... </span>
                    </div>
                    <div>
                        - تبليغ در سايت هاي نظير <span lang="en-us">Google</span> و ...</div>
                    <div>
                        - خريد از فروشگاههاي اينترنتي سراسر دنيا که لوگو <span lang="en-us">VisaCard</span>
                        را دارند.<p align="center">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Shop/ProductList.aspx?CatCode=1" runat="server" ImageUrl="~/images/visa02.jpg" />
                    </div>
                    <div>
                        نکات مهم :
                    </div>
                    <div>
                        1- اين کارتها توسط يک بانک آمريکايي معتبر صادر شده اند.<p>
                            2-&nbsp; کارت به نام شما و با آدرس آمريکا ثبت و صادر ميگردد.</p>
                        <p>
                            3- کارتها دارای 2 سال تاريخ انقضاء ميباشند.</p>
                        <p>
                            4- امکان مشاهده اعتبار و ليست تراکنشهاي انجام شده بصورت آنلاين توسط شما مقدور نمیباشد
                            و باید از طریق سایت ما از موجودی کارت مطلع شوید.</p>
                        <p>
                            <span lang="en-us">5</span>- اين کارتها قابليت شارژ مجدد ندارند و پس از اتمام قابل
                            استفاده نميباشند.</p>
                        <p>
                            <span lang="en-us">6</span>- در صورت داشتن هرگونه سوال، نظر و پيشنهاد، لطفا از طريق
                            پست الکترونيک <span lang="en-us">support [@] parset .com</span> با ما تماس بگيريد.</p>
                    </div>
                    <div style="text-align:center;" >
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Shop/ProductList.aspx?CatCode=1" Font-Size="X-Large" runat="server" >هم اکنون ویزا کارت مورد نیاز خود را تهیه کنید !</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
                </div>
            </div>
        </div>
    </div>
    <div class="RightCol">
        <Mnu:Menu ID="Menu1" runat="server" />
        <div class="Clear">
        </div>
        <div class="RightBanner">
           <UCBanner:Banner ID="Banner5" PositionCode="6" runat="server" />
        </div>
    </div>
</asp:Content>
