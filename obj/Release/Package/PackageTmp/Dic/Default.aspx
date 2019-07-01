<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Dic_Default"
    Title="فرهنگ لغت چند زبانه" CodeBehind="Default.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <link id="Link1" href="../Styles/AjaxDic.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/AjaxFuncs.js"></script>
    <script type="text/javascript">
        function ShowMeaning(obj) {
            CorrectIndex = 0;
            if (CheckBrowser() == "FireFox")
                CorrectIndex = 1;
            else {
                if (getInternetExplorerVersion() == 9)
                    CorrectIndex = 1;

            }

            objWord = obj.childNodes[0 + CorrectIndex];
            objMeaning = obj.childNodes[1 + 2 * CorrectIndex];

            objWordArea = document.getElementById("Word");
            objMeaningArea = document.getElementById("Meaning");
            objMeaningArea.innerHTML = objMeaning.innerHTML;
            objWordArea.innerHTML = objWord.innerHTML;
        }
    </script>
    <div class="WinRadiusGray">
        <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text="دیکشنری چند زبانه"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="MidPageBanner">
                        <UCBanner:Banner ID="Banner1" PositionCode="24" runat="server" />
                    </div>
                    <div class="Marginer1">
                        <div class="CoolWin">
                            <asp:HyperLink ID="hplHelpSMS" NavigateUrl="~/Help/SMSHelp.aspx" Target="_blank" runat="server">
                        از این پس میتوانید معنی هر کلمه را مستقیما به موبایل خود اس ام اس کنید
                            </asp:HyperLink>
                        </div>
                    </div>
                    <div class="Box3">
                        <div class="MainHeader">
                            با استفاده از این صفحه میتوانید معنی هر کلمه را در بین شش زبان جستجو کنید.کافی است
                        زبان مبدا و مقصد را انتخاب کنید و دکمه ترجمه را کلیک کنید.
                        </div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فرهنگ لغت چند زبانه"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="Center1">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="Box4">
                                        <div class="Marginer2">
                                            <div>
                                                <div class="LangTools">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:RadioButtonList AutoPostBack="true" ID="rblSourceLang" CssClass="tblLangs" RepeatDirection="Horizontal"
                                                                    runat="server" OnSelectedIndexChanged="SourceLangChanged">
                                                                    <asp:ListItem Value="FA" Text="فارسی"></asp:ListItem>
                                                                    <asp:ListItem Value="EN" Selected="True" Text="انگلیسی"></asp:ListItem>
                                                                    <asp:ListItem Value="GE" Text="آلمانی"></asp:ListItem>
                                                                    <asp:ListItem Value="AR" Text="عربی"></asp:ListItem>
                                                                    <asp:ListItem Value="ES" Text="اسپانیایی"></asp:ListItem>
                                                                    <asp:ListItem Value="IT" Text="ایتالیایی"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                            <td class="DicLabel">
                                                                <asp:Label ID="Label1" runat="server" Text="از زبان"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:RadioButtonList ID="rblDestLang" CssClass="tblLangs" RepeatDirection="Horizontal"
                                                                    runat="server">
                                                                    <asp:ListItem Value="FA" Selected="True" Text="فارسی"></asp:ListItem>
                                                                    <asp:ListItem Value="EN" Text="انگلیسی"></asp:ListItem>
                                                                    <asp:ListItem Value="GE" Text="آلمانی"></asp:ListItem>
                                                                    <asp:ListItem Value="AR" Text="عربی"></asp:ListItem>
                                                                    <asp:ListItem Value="ES" Text="اسپانیایی"></asp:ListItem>
                                                                    <asp:ListItem Value="IT" Text="ایتالیایی"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                            <td class="DicLabel">
                                                                <asp:Label ID="Label2" runat="server" Text="به زبان"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:RadioButtonList ID="rblSearchType" CssClass="tblLangs" RepeatDirection="Horizontal"
                                                                    runat="server">
                                                                    <asp:ListItem Value="2" Selected="True" Text="شامل"></asp:ListItem>
                                                                    <asp:ListItem Value="1" Text="عینا"></asp:ListItem>
                                                                    <asp:ListItem Value="3" Text="با آغاز"></asp:ListItem>
                                                                    <asp:ListItem Value="4" Text="با پایان"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                            <td class="DicLabel">
                                                                <asp:Label ID="Label3" runat="server" Text="شیوه جستجو:"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <table cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                <div class="TransButton">
                                                                    <asp:LinkButton ID="btnTranslate" CssClass="btn btn-primary" ClientIDMode="Static" runat="server"
                                                                        OnClick="btnTranslate_Click">ترجمه</asp:LinkButton>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="TransButton">
                                                                <asp:TextBox ID="txtWord" AutoCompleteType="Disabled" placeholder="کلمه جستجو" onkeydown="CaptureKey(this, event, 'E2P')"
                                                                    CssClass="form-control cDicWordLTR" SkinID="English" runat="server"></asp:TextBox>
                                                                    </div>
                                                            </td>

                                                        </tr>
                                                    </table>


                                                </div>
                                                <div id="SuggestDiv">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div>
                                        <div class="Marginer1">
                                            <asp:Panel ID="pnlResult" Visible="false" runat="server">
                                                <div class="Marginer2">
                                                    <div class="MeanBox">
                                                        <div style="text-align: right;">
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <div id="Word" class="<%= GetWordClass()%>">
                                                                            <asp:Label ID="lblFirstWord" runat="server"></asp:Label>
                                                                        </div>
                                                                    </td>
                                                                    <td style="text-align: right; font-weight: bold">
                                                                        <asp:Label ID="Label5" CssClass="Farsi" runat="server" Text=":معنای"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <div id="Meaning" class="<%= GetMeaningClass()%>">
                                                            <asp:Label ID="lblFirstMeaning" runat="server"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div style="height: 10px;">
                                                    </div>
                                                    <div id="DicObj" class="MeaningDiv">
                                                        <asp:Repeater ID="dtMeanings" EnableViewState="false" runat="server">
                                                            <HeaderTemplate>
                                                                <div class="tblListItems">
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <div class="DicMean" onmousemove="ShowMeaning(this)">
                                                                    <div class="<%# GetWordClass()%>">
                                                                        <%#DataBinder.Eval(Container.DataItem, "Word")%>
                                                                    </div>
                                                                    <div class="Meaning">
                                                                        <%#DataBinder.Eval(Container.DataItem, "Meaning")%>
                                                                    </div>
                                                                </div>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                </div>
                                                            </FooterTemplate>
                                                        </asp:Repeater>
                                                    </div>
                                                    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                                                </div>

                                                <script type="text/javascript">
                                                    objOnSelect = document.getElementById("DicObj");
                                                    objOnSelect.onmouseup = doSomethingWithSelectedText;
                                                    objOnSelect.onkeyup = doSomethingWithSelectedText;
                                                </script>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pnlMessage" Visible="false" CssClass="Message">
                                                <asp:Label ID="lblMessage" CssClass="Marginer1" Text="هیچ نتیجه ای پیدا نشد" runat="server"></asp:Label>
                                            </asp:Panel>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="clear"></div>
                        <div class="Box3Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>



</asp:Content>
