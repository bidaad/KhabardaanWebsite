<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="ContactUs"
    Title="تماس با ما" CodeBehind="ContactUs.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
                <h3 class="CatHeader">
                    <asp:Label ID="lblCatTitle"  Text="تماس با ما"
                        runat="server"></asp:Label>
                </h3>
            </div>
            <div class="clear">
            </div>
        
        <div>
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="Box3">
                        
                        <div class="Clear">
                        </div>
                        <div class="Marginer2">
                            <div class="cYellowWin">
                                توجه فرمایید که اخبار این سایت بصورت خودکار از منابع خبری دریافت میشود. در صورتی
                                که در مورد خبری سووالی یا انتقادی دارید لطفا با سایت تولید کننده آن خبر که در پایان
                                خبر درج شده تماس بگیرید.
                                <br />
                                
                                <div class="FLeft">
                                    با تشکر</div>
                                <br />
                                <div class="FLeft">
                                    علیرضا گرجی</div>
                            </div>
                            <asp:Panel ID="pnlSend" runat="server">
                                <div style="text-align: right">
                                    <div class="FormRow">
                                        <div class="FormList">
                                           
                                            <asp:TextBox ID="txtName" Width="300" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName"
                                                runat="server" ErrorMessage="نام را وارد کنید"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="FormRight">
                                            <asp:Label ID="Label1" runat="server" Text="نام:"></asp:Label>
                                            <asp:Label ID="Label16" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="FormRow">
                                        <div class="FormList">
                                           
                                            <asp:TextBox ID="txtEmail" Width="300" SkinID="English" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ControlToValidate="txtEmail"
                                                runat="server" ErrorMessage="ایمیل را وارد کنید"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic"
                                                runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                ControlToValidate="txtEmail" ValidationGroup="Invitation" ErrorMessage="ایمیل معتبر نیست"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="FormRight">
                                            <asp:Label ID="Label7" runat="server" Text="ایمیل:"></asp:Label>
                                            <asp:Label ID="Label18" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="FormRow">
                                        <div class="FormList">
                                            
                                            <asp:TextBox ID="txtComment" TextMode="MultiLine" Width="300" Rows="7" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" ControlToValidate="txtComment"
                                                runat="server" ErrorMessage="متن پیام را وارد کنید"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="FormRight">
                                            <asp:Label ID="Label2" runat="server" Text="متن پیام:"></asp:Label>
                                            <asp:Label ID="Label17" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                    <div class="FormRow">
                                        <div class="FormList">
                                            <div style="text-align: right">
                                                <telerik:RadCaptcha ID="RadCaptcha1" CssClass="Capt" Width="300" CaptchaImage-ImageCssClass="CaptImg"
                                                    CaptchaTextBoxCssClass="CaptText" runat="server" ErrorMessage="" CaptchaTextBoxLabel="">
                                                </telerik:RadCaptcha>
                                            </div>
                                        </div>
                                        <div class="FormRight">
                                            <asp:Label ID="Label3" runat="server" Text="کد امنیتی:"></asp:Label>
                                            <asp:Label ID="Label4" CssClass="cReq" runat="server" Text="*"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="Clear">
                                    </div>
                                    <div style="text-align: left; padding-left: 150px; padding-top: 5px;">
                                        <asp:LinkButton ID="btnSend" CssClass="button" Text="ارسال" runat="server" OnClick="btnSend_Click"></asp:LinkButton>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
</asp:Content>
