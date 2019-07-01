<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="True"
    Inherits="Users_Settings" Title="تنظیمات پروفایل" CodeBehind="Settings.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <script type="text/javascript">
        function CheckBirthdate(source, clientside_arguments) {
            MonthVal = document.getElementById('<%= ddlBDMonth.ClientID%>').value
            DayVal = document.getElementById('<%= ddlBDDay.ClientID%>').value
            YearVal = document.getElementById('<%= ddlBDYear.ClientID%>').value

            if (MonthVal != '' && DayVal != '' && YearVal != '') {
                clientside_arguments.IsValid = true;
            }
            else {
                clientside_arguments.IsValid = false
            };
        }
    </script>
    <div class="WinRadiusGray">
            <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
        </div>
    <div class="WinRadiusGray">
        
        <div class="Marginer1">
            <div id="MenuTabs">
                <div style="direction: rtl; text-align: right;">
                    <telerik:RadTabStrip CssClass="TabTitles" ID="tsNews" dir="rtl" runat="server" MultiPageID="RadMultiPage1"
                        SelectedIndex="0" Skin="Vista" skinspath="~/RadControls/TabStrip/Skins">
                        <Tabs>
                            <telerik:RadTab ID="Tab1" Font-Names="Tahoma" runat="server" CssClass="TabTitle"
                                Text="مشخصات فردی">
                            </telerik:RadTab>
                            <telerik:RadTab ID="Tab2" Font-Names="Tahoma" runat="server" CssClass="TabTitle"
                                Text="مشخصات مکانی">
                            </telerik:RadTab>
                            <telerik:RadTab ID="Tab3" Font-Names="Tahoma" runat="server" CssClass="TabTitle"
                                Text="هشدارها">
                            </telerik:RadTab>
                        </Tabs>
                    </telerik:RadTabStrip>
                </div>
                <div class="cTabWrapper">
                    <telerik:RadMultiPage ID="RadMultiPage1" SelectedIndex="0" runat="server">
                        <telerik:RadPageView ID="PageView1" runat="server">
                            <div class="Marginer2">
                                <div>
                                    <div style="height: 23px;">
                                    </div>
                                    <div class="BlueHeader">
                                        <asp:Label ID="Label14" runat="server" Text="اطلاعات اصلی:"></asp:Label>
                                    </div>
                                    <asp:Panel ID="pnlFirstName" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label34" runat="server" Text=":نام"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlLastName" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label35" runat="server" Text=":نام خانوادگی"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlPassword" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ValidationGroup="ChangeSettingTab1" ID="RFV3" CssClass="cRFV"
                                                runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="لطفا کلمه عبور را وارد کنید"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ValidationGroup="ChangeSettingTab1" ID="RFV6" CssClass="cRFV"
                                                runat="server" ControlToValidate="txtPassword" ValidationExpression="\S{6,40}"
                                                Display="Dynamic" ErrorMessage="Your password must be 6 - 20 characters" />
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label36" runat="server" Text=":کلمه عبور"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlSex" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <AKP:Combo jas="1" ID="cboHCGenderCode" BaseID="HCGenders" AllowNull="false" runat="server" />
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label15" runat="server" Text=":جنسیت"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlBirthDate" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol" style="direction: rtl;">
                                            <table style="float: right">
                                                <tr>
                                                    <td>
                                                        <asp:DropDownList ID="ddlBDYear" runat="server">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlBDMonth" runat="server">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlBDDay" runat="server">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="RightCol">
                                            <div class="CalendarContainer">
                                                <asp:Label ID="Label16" runat="server" Text=":روز تولد"></asp:Label>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlEmail" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <asp:TextBox ID="txtEmail" SkinID="English" Width="200" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label17" runat="server" Text=":ایمیل"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <div class="BlueHeader">
                                        <asp:Label ID="Label18" runat="server" Text="اطلاعات تکمیلی"></asp:Label>
                                    </div>
                                    <div class="Combos">
                                        <asp:Panel ID="pnlMaritalStaus" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCMarritalStatusCode" BaseID="HCMarritalStatuses" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label20" runat="server" Text=":وضعیت تاهل"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlEducation" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCEducationCode" BaseID="HCEducations" AllowNull="true"
                                                    runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label22" runat="server" Text=":تحصیلات"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCRelationTypeCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCRelationTypeCode" BaseID="HCRelationTypes" AllowNull="true"
                                                    runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label3" runat="server" Text=":نوع رابطه"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCHairColorCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCHairColorCode" BaseID="HCHairColors" AllowNull="true"
                                                    runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label4" runat="server" Text=":رنگ مو"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCEyeColorCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCEyeColorCode" BaseID="HCEyeColorCodes" AllowNull="true"
                                                    runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label5" runat="server" Text=":رنگ چشم"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCBodyTypeCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCBodyTypeCode" BaseID="HCBodyTypes" AllowNull="true" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label6" runat="server" Text=":نوع جثه"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCReligionCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCReligionCode" BaseID="HCReligions" AllowNull="true" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label7" runat="server" Text=":مذهب"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCSmokeCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCSmokeCode" BaseID="HCSmokes" AllowNull="true" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label8" runat="server" Text=":سیگار"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCHumorCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCHumorCode" BaseID="HCHumors" AllowNull="true" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label11" runat="server" Text=":مشرب"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCKidNoCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCKidNoCode" BaseID="HCKidNos" AllowNull="true" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label13" runat="server" Text="تعداد فرزندان:"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCWantKidCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCWantKidCode" BaseID="HCWantKids" AllowNull="true" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label28" runat="server" Text=":علاقمند به داشتن فرزند"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCProfessionCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCProfessionCode" BaseID="HCProfessions" AllowNull="true"
                                                    runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label32" runat="server" Text=":حرفه"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlHCIncomeCode" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <AKP:Combo jas="1" ID="cboHCIncomeCode" BaseID="HCIncomes" AllowNull="true" runat="server" />
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label33" runat="server" Text=":درآمد"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <div class="BlueHeader">
                                            <asp:Label ID="Label21" runat="server" Text="اطلاعات تماس"></asp:Label>
                                        </div>
                                        <asp:Panel ID="pnlMobileNumber" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <asp:TextBox ID="txtMobileNumber" SkinID="Numeric" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label25" runat="server" Text=":شماره موبایل"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlTel" CssClass="Col2Small" runat="server">
                                            <div class="LeftCol">
                                                <asp:TextBox ID="txtTel" SkinID="Numeric" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="RightCol">
                                                <asp:Label ID="Label30" runat="server" Text=":تلفن"></asp:Label>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="PageView2" runat="server">
                            <div class="Marginer2">
                                <div>
                                    <asp:Panel ID="pnlComment" Style="height: 100px;" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <asp:TextBox ID="txtComment" TextMode="MultiLine" Columns="120" Width="230" Height="90"
                                                runat="server"></asp:TextBox>
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label55" runat="server" Text=":توضیحات"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlCountry" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <AKP:Combo jas="1" ID="cboCountryCode" Width="240" BaseID="Countries" AllowNull="true"
                                                runat="server" />
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label1" runat="server" Text=":کشور"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlLocation" CssClass="Col2Small" runat="server">
                                        <div class="LeftCol">
                                            <asp:TextBox ID="txtLocation" Width="236" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="RightCol">
                                            <asp:Label ID="Label19" runat="server" Text=":محل"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="PageView3" runat="server">
                            <div class="Marginer2">
                                <div>
                                    <div>
                                        <div class="BlueHeader">
                                            <span>به آدرس ایمیل من
                                                <asp:Literal ID="ltrNotificationEmail" runat="server"></asp:Literal>
                                                پیام بدهید وقتی کسی ...:</span>
                                        </div>
                                    </div>
                                    <div class="Col3A">
                                        <table>
                                            <tr>
                                                <td style="width: 400px;">
                                                </td>
                                                <td style="width: 65px; text-align: center">
                                                    فعال
                                                </td>
                                                <td style="width: 60px; text-align: center;">
                                                    غیر فعال
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <asp:Panel ID="pnlISendMessage" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label38" runat="server" Text="برایم پیغام میفرستد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblISendMessage" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIAddMeAsFriend" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label37" runat="server" Text="من را به عنوان دوست خود اضافه میکند:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIAddMeAsFriend" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIConfirmFriendshipReq" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label40" runat="server" Text="درخواست دوستی من را تایید میکند:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIConfirmFriendshipReq" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIPostMeGlobalMessage" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label41" runat="server" Text="برای من یک پیغام عمومی میفرستد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIPostMeGlobalMessage" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIPostMePrivateMessage" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label42" runat="server" Text="برای من یک پیغام خصوصی میفرستد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIPostMePrivateMessage" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlISuggestsFriends" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label43" runat="server" Text="فردی را به عنوان دوست به من پیشنهاد میکند:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblISuggestsFriends" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIAcceptFriendISuggested" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label44" runat="server" Text="فردی را که من بعنوان دوست پیشنهاد داده بودم تایید میکند:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIAcceptFriendISuggested" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlITagsMeOnPhoto" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label45" runat="server" Text="من را در یک عکس علامت گذاری میکند:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblITagsMeOnPhoto" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlICommentOnMyPhoto" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label46" runat="server" Text="روی عکس من توضیح میگذارد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblICommentOnMyPhoto" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIInviteMeToJoinGroup" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label47" runat="server" Text="به من پیشنهاد عضویت در یک گروه را میدهد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIInviteMeToJoinGroup" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIRequestToJoinMyGroup" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label48" runat="server" Text="درخواست عضویت در گروهی مه من مدیر آن هستم میدهد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIRequestToJoinMyGroup" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIInviteMeAnEvent" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label49" runat="server" Text="من را به یک رویداد دعوت میکند:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIInviteMeAnEvent" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlIChangeMyEventDate" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label50" runat="server" Text="زمان رویدادی که من قصد شرکت در آن دارم تغییر میکند:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblIChangeMyEventDate" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlICommentMyLink" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label52" runat="server" Text="روی لینک من توضیح میگذارد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblICommentMyLink" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlICommentAfterMeInLink" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label53" runat="server" Text="بعد از لینکی که من توضیح گذاشته ام توضیح میگذارد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblICommentAfterMeInLink" CssClass="tblRadios" RepeatDirection="Horizontal"
                                                runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlICommentAfterMeOnGeneralMessage" CssClass="Col3A" runat="server">
                                        <div class="Col3A1">
                                            <asp:Label ID="Label54" runat="server" Text="بعد از توضیح من روی یک پیغام عمومی توضیح میگذارد:"></asp:Label></div>
                                        <div class="Col3A2">
                                            <asp:RadioButtonList ID="rblICommentAfterMeOnGeneralMessage" CssClass="tblRadios"
                                                RepeatDirection="Horizontal" runat="server">
                                                <asp:ListItem Value="0" Text="     "></asp:ListItem>
                                                <asp:ListItem Value="1" Text="     "></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>
                        </telerik:RadPageView>
                    </telerik:RadMultiPage>
                </div>
                <div>
                    <table>
                        <tr>
                            <td>
                                <asp:CustomValidator ValidationGroup="ChangeSettingTab1" Display="Dynamic" ID="CustomValidator1"
                                    ClientValidationFunction="CheckBirthdate" CssClass="cRFV" ErrorMessage="لطفا تاریخ تولد را وارد کنید"
                                    runat="server"></asp:CustomValidator>
                                <AKP:MsgBox runat="server" ID="msg" />
                            </td>
                            <td>
                                <div class="ButtonContainer">
                                    <asp:LinkButton ID="btnSave" Text=" ذخیره " ValidationGroup="ChangeSettingTab1" CssClass="button2"
                                        runat="server" OnClick="btnSave_Click"></asp:LinkButton>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
        <br />
        <br />
        <br />
    </div>
    <asp:HiddenField ID="hfPassword" runat="server" />
</asp:Content>
