<%@ Page Language="C#" MasterPageFile="~/Root1.master" ValidateRequest="false" AutoEventWireup="true"
    Inherits="Greetings_SendGreeting_Default" Title="ارسال کارت تبریک" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <script type="text/javascript">
        function SaveHTML(DivID) {
            objSendPanel = document.getElementById(DivID);
            objHidden = document.getElementById('<%=hfSendHtml.ClientID %>');
            //alert(objHidden);
            if (objHidden != null && objSendPanel != null)
                objHidden.value = objSendPanel.innerHTML
        }
    
    </script>
    <div class="WinRadiusGray">
                    <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="کارت تبریک"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

    <div class="InnerBarWrap">
    </div>
    <div class="LeftCol">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="Box3">
                    <div>
                        <div class="TopNav">
                            <asp:HyperLink ID="hplNav" NavigateUrl="~/Greetings" runat="server">بازگشت به کارتهای تبریک </asp:HyperLink>
                        </div>
                        <asp:Label ID="Label1" CssClass="Header1" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="ارسال کارت تبریک"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="SendGreeting">
                        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>--%>
                        <asp:MultiView ID="MltTemplates" ActiveViewIndex="0" runat="server">
                            <asp:View ID="vDesign" runat="server">
                                <div style="padding: 10px;">
                                    <asp:Image ID="imgCard" CssClass="SendGreetingPic" BorderWidth="1" ClientIDMode="Static" runat="server" />
                                </div>
                                <div class="Clear">
                                </div>
                                <div style="text-align: right;">
                                    <div class="FormArea">
                                        <table class="GreetingSend1">
                                            <tr>
                                                <td colspan="2">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Image ID="Image1" ImageUrl="~/images/letter_c.gif" runat="server" />
                                                            </td>
                                                            <td>
                                                                <asp:RadioButton ID="rbCardType3" GroupName="CardTypes" runat="server" TabIndex="3" />
                                                            </td>
                                                            <td>
                                                                <asp:Image ID="Image2" ImageUrl="~/images/card_l.gif" runat="server" />
                                                            </td>
                                                            <td>
                                                                <asp:RadioButton ID="rbCardType2" GroupName="CardTypes" runat="server" TabIndex="2" />
                                                            </td>
                                                            <td>
                                                                <asp:Image ID="Image3" ImageUrl="~/images/card_r.gif" runat="server" />
                                                            </td>
                                                            <td>
                                                                <asp:RadioButton ID="rbCardType1" Checked="true" GroupName="CardTypes" runat="server"
                                                                    TabIndex="1" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="text-align: center">
                                                    <asp:Label ID="Label9" runat="server" Text="شکل کارت"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="Label4" runat="server" Text="ایمیل"></asp:Label>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="SendCard"
                                                            ControlToValidate="txtToEmail" Display="Dynamic" runat="server" ErrorMessage="ایمیل گیرنده را وارد کنید"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="SendCard"
                                                            runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                            ControlToValidate="txtToEmail" ErrorMessage="ایمیل معتبر نیست"></asp:RegularExpressionValidator>
                                                    </div>
                                                    <div>
                                                        <asp:TextBox ID="txtToEmail" SkinID="English" runat="server" TabIndex="5"></asp:TextBox></div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="Label3" runat="server" Text="نام"></asp:Label>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="SendCard"
                                                            ControlToValidate="txtToName" Display="Dynamic" runat="server" ErrorMessage="نام گیرنده را وارد کنید"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div>
                                                        <asp:TextBox ID="txtToName" runat="server" TabIndex="4"></asp:TextBox></div>
                                                </td>
                                                <td style="width: 50px;">
                                                    <asp:Label ID="Label2" runat="server" Text="برای"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" class="HorzDot">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="Label6" runat="server" Text="ایمیل"></asp:Label>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="SendCard"
                                                            ControlToValidate="txtFromEmail" Display="Dynamic" runat="server" ErrorMessage="ایمیل فرستنده را وارد کنید"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="SendCard"
                                                            runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                            ControlToValidate="txtFromEmail" ErrorMessage="ایمیل معتبر نیست"></asp:RegularExpressionValidator>
                                                    </div>
                                                    <div>
                                                        <asp:TextBox ID="txtFromEmail" SkinID="English" runat="server" TabIndex="7"></asp:TextBox></div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="Label7" runat="server" Text="نام"></asp:Label>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="SendCard"
                                                            ControlToValidate="txtFromName" Display="Dynamic" runat="server" ErrorMessage="نام فرستنده را وارد کنید"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div>
                                                        <asp:TextBox ID="txtFromName" runat="server" TabIndex="6"></asp:TextBox></div>
                                                </td>
                                                <td style="width: 50px;">
                                                    <asp:Label ID="Label8" runat="server" Text="از طرف"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" class="HorzDot">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <div>
                                                        <asp:TextBox ID="txtComment" TextMode="MultiLine" Rows="5" Columns="40" runat="server"
                                                            TabIndex="8"></asp:TextBox></div>
                                                </td>
                                                <td style="width: 50px;">
                                                    <asp:Label ID="Label11" runat="server" Text="متن"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: right;">
                                                    <table>
                                                        <tr>
                                                            <%--<td style="text-align: center">
                                                                        <asp:LinkButton CssClass="button" ValidationGroup="SendCard" runat="server" OnClientClick="SaveHTML('SendPanel1')"
                                                                            ID="LinkButton5" Text="ارسال" OnClick="btnSend_Click"></asp:LinkButton>
                                                                    </td>--%>
                                                            <td style="text-align: center">
                                                                <asp:LinkButton runat="server" ValidationGroup="SendCard" CssClass="button" ID="btnPeview"
                                                                    Text="پیش نمایش" OnClick="btnPeview_Click"></asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View runat="server" ID="vTemplate1">
                                <div class="Marginer1">
                                    <div id="SendPanel1">
                                        <div style="background-color: #F5F5F5; border: solid 1px #CCCCCC; font-family: Tahoma;
                                            font-size: 10pt;">
                                            <table style="width: 100%; font-family: Tahoma; font-size: 10pt;">
                                                <tr>
                                                    <td>
                                                        <div style="white-space: nowrap; direction: rtl; font-weight: bold;">
                                                            <asp:Label ID="Label5" runat="server" Text="تقدیم به:"></asp:Label>
                                                            <asp:Label ID="lblTo1" runat="server"></asp:Label>
                                                        </div>
                                                        <div style="white-space: nowrap; direction: rtl; padding-bottom: 10px; font-weight: bold;">
                                                            <asp:Label ID="Label10" runat="server" Text="از طرف:"></asp:Label>
                                                            <asp:Label ID="lblFrom1" runat="server"></asp:Label>
                                                        </div>
                                                        <div style="text-align: right; width: 100%; direction: rtl;">
                                                            <div style="padding: 7px;">
                                                                <asp:Label ID="lblComment1" runat="server"></asp:Label></div>
                                                        </div>
                                                    </td>
                                                    <td style="width: 1px;">
                                                        <div style="padding: 9px;">
                                                            <asp:Image ID="imgCard1" BorderWidth="1" CssClass="SendGreetingPic" ClientIDMode="Static" Width="200" runat="server" />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div style="text-align: right;">
                                        <table>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:LinkButton CssClass="button" runat="server" ID="btnEditCard" Text="ویرایش" OnClick="btnEditCard_Click"></asp:LinkButton>
                                                </td>
                                                <td style="text-align: center">
                                                    <asp:LinkButton CssClass="button" runat="server" OnClientClick="SaveHTML('SendPanel1')"
                                                        ID="btnSend1" Text="ارسال" OnClick="btnSend_Click"></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View runat="server" ID="vTemplate2">
                                <div class="Marginer1">
                                    <div id="SendPanel2">
                                        <div style="background-color: #F5F5F5; border: solid 1px #CCCCCC; font-family: Tahoma;
                                            font-size: 10pt;">
                                            <table style="width: 100%; font-family: Tahoma; font-size: 10pt;">
                                                <tr>
                                                    <td style="width: 1px;">
                                                        <div style="padding: 9px;">
                                                            <asp:Image ID="imgCard2" BorderWidth="1" CssClass="SendGreetingPic" ClientIDMode="Static" runat="server" />
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div style="white-space: nowrap; direction: rtl; font-weight: bold;">
                                                            <asp:Label ID="Label12" runat="server" Text="تقدیم به:"></asp:Label>
                                                            <asp:Label ID="lblTo2" runat="server"></asp:Label>
                                                        </div>
                                                        <div style="white-space: nowrap; direction: rtl; padding-bottom: 10px; font-weight: bold;">
                                                            <asp:Label ID="Label14" runat="server" Text="از طرف:"></asp:Label>
                                                            <asp:Label ID="lblFrom2" runat="server"></asp:Label>
                                                        </div>
                                                        <div style="text-align: right; width: 100%; direction: rtl;">
                                                            <div style="padding: 7px;">
                                                                <asp:Label ID="lblComment2" runat="server"></asp:Label></div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div style="text-align: right;">
                                        <table>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:LinkButton CssClass="button" runat="server" ID="LinkButton1" Text="ویرایش" OnClick="btnEditCard_Click"></asp:LinkButton>
                                                </td>
                                                <td style="text-align: center">
                                                    <asp:LinkButton CssClass="button" runat="server" OnClientClick="SaveHTML('SendPanel2')"
                                                        ID="LinkButton2" Text="ارسال" OnClick="btnSend_Click"></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View runat="server" ID="vTemplate3">
                                <div class="Marginer1">
                                    <div id="SendPanel3">
                                        <div style="background-color: #F5F5F5; border: solid 1px #CCCCCC; font-family: Tahoma;
                                            font-size: 10pt;">
                                            <table style="width: 100%; font-family: Tahoma; font-size: 10pt;">
                                                <tr>
                                                    <td>
                                                        <div style="padding: 9px;">
                                                            <asp:Image ID="imgCard3" BorderWidth="1" CssClass="SendGreetingPic" ClientIDMode="Static" runat="server" />
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div style="white-space: nowrap; direction: rtl; font-weight: bold;">
                                                            <asp:Label ID="Label17" runat="server" Text="تقدیم به:"></asp:Label>
                                                            <asp:Label ID="lblTo3" runat="server"></asp:Label>
                                                        </div>
                                                        <div style="white-space: nowrap; direction: rtl; padding-bottom: 10px; font-weight: bold;">
                                                            <asp:Label ID="Label19" runat="server" Text="از طرف:"></asp:Label>
                                                            <asp:Label ID="lblFrom3" runat="server"></asp:Label>
                                                        </div>
                                                        <div style="text-align: right; width: 100%; direction: rtl;">
                                                            <div style="padding: 7px;">
                                                                <asp:Label ID="lblComment3" runat="server"></asp:Label></div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div style="text-align: right;">
                                        <table>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:LinkButton CssClass="button" runat="server" ID="LinkButton3" Text="ویرایش" OnClick="btnEditCard_Click"></asp:LinkButton>
                                                </td>
                                                <td style="text-align: center">
                                                    <asp:LinkButton CssClass="button" runat="server" OnClientClick="SaveHTML('SendPanel3')"
                                                        ID="LinkButton4" Text="ارسال" OnClick="btnSend_Click"></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                        <div style="text-align: center; height: 35px;">
                            <asp:Label ID="lblSendMessage" runat="server"></asp:Label>
                        </div>
                        <asp:HiddenField ID="hfSendHtml" runat="server" />
                        <%--</ContentTemplate>
                        </asp:UpdatePanel>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>    
</asp:Content>
