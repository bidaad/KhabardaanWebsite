<%@ Page Language="C#" StylesheetTheme="Edit" MasterPageFile="~/Admin/Main.master" AutoEventWireup="true" Inherits="Votes_EditVotes" Title="Votes" Codebehind="EditVotes.aspx.cs" %>










<asp:Content runat="server" ID="content1" ContentPlaceHolderID="cphMain">

    <script language="javascript" type="text/javascript">
        var SelTab = <%=SelectedTabIndex%>;
        function ClientTabSelectedHandler(sender, eventArgs)
        {
          var tabStrip = sender;
          SelTab = tabStrip.SelectedIndex
        }
        function GoToPage()
        {
            window.location.href = 'EditVotes.aspx?SelectedTab=' + SelTab + '&Code=<%=Code%>'
        }
    </script>

    <div style="text-align: center">
        <div >
            <table class="cTblEdit" bordercolor="#697077" border="1" align="center" cellpadding="0"
                cellspacing="0">
                <tr>
                    <th>
                        <div >
                            <div style="width: 180px; float: left;">
                                <table align="left" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="hplHelp" runat="server" ImageUrl="~/images/Help.gif" NavigateUrl="~/Help/Votes/" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="cSysName">
                                <asp:HyperLink runat="server" ID="hplSysName"></asp:HyperLink></div>
                        </div>
                    </th>
                </tr>
                <tr>
                    <td class="cTDEdit">
                        <table cellpadding="2" cellspacing="0" width="100%">
                            <tr>
                                
                                <td class="cEditRight">
                                    <table class="cEditMain" width="100%">
                                        <tr>
                                            <td style="vertical-align: top;">
                                                <div class="cHeaderEditMain">
                                                    <table align="left" width="150" dir="ltr">
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="imgBtnDeleteTop" runat="server" ImageUrl="~/images/Delete.gif"
                                                                    ToolTip="حذف" />
                                                            </td>
                                                            <td class="cSepVer">
                                                            </td>
                                                            <td>
                                                                <asp:HyperLink ID="hplView" runat="server" onclick="GoToPage()" ImageUrl="~/images/View.gif"
                                                                    ToolTip="(F6) حالت نمایش" />
                                                            </td>
                                                            <td class="cSepVer">
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgBtnPrint" runat="server" ImageUrl="~/images/Print.gif" ToolTip="چاپ" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="cEditMainData">
                                                    <table align="center" width="100%">
                                                        <tr>
                                                            <td>
                                                                <div>
                                                                    <div>
                                                                        <AKP:MsgBox ID="msgBox" runat="server" CssClass="cError" />
                                                                    </div>
                                                                    <div>
                                                                        <table class="cTblOneRow">
                                                                            <tr>
                                                                                <td class="cFieldLeft">
                                                                                    <table class="cTblField">
                                                                                        <tr>
                                                                                            <td class="cCtrl">
                                                                                                <AKP:ExTextBox ID="txtTitle" jas="1" CssClass="cMultiLine" TextMode="MultiLine"
                                                                                                    MaxLength="500" runat="server" />
                                                                                            </td>
                                                                                            <td class="cLabel">
                                                                                                <asp:Label ID="lblTitle" runat="server" Text="عنوان:"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="cFieldRight">
                                                                                    <table class="cTblField">
                                                                                        <tr>
                                                                                            <td class="cCtrl">
                                                                                                <AKP:FarsiDate ID="dteVoteStartDate" jas="1" runat="server" />
                                                                                            </td>
                                                                                            <td class="cLabel">
                                                                                                <asp:Label ID="lblVoteStartDate" runat="server" Text="تاريخ شروع:"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="cHorSep">
                                    </div>
                                    <table class="cEditTabs" width="100%">
                                        <tr>
                                            <td>
                                                <div>
                                                    <telerik:RadTabStrip Style="margin-right: 8px;" dir="rtl" ID="tsNews" runat="server"
                                                        MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Vista" SkinsPath="~/RadControls/TabStrip/Skins">
                                                        <Tabs>
                                                            <telerik:RadTab ID="Tab1" runat="server" Text="اطلاعات اصلی">
                                                            </telerik:RadTab>
                                                            
                                                        </Tabs>
                                                    </telerik:RadTabStrip>
                                                    <div class="cTabWrapper">
                                                        <telerik:RadMultiPage ID="RadMultiPage1" runat="server">
                                                            <telerik:RadPageView ID="PageView1" runat="server">
                                                                <div class="cDivSep">
                                                                </div>
                                                                <div class="cBrowseArea" id="VoteAnswers">
                                                                </div>
                                                                <div class="cDivSep">
                                                                </div>
                                                            </telerik:RadPageView>
                                                            
                                                        </telerik:RadMultiPage>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="cHorSep">
                                    </div>
                                    <div style="text-align: left">
                                        <table cellpadding="2" cellspacing="4">
                                            <tr>
                                                <td>
                                                    <a id="imgBtnDeleteDown" href='#' onclick="DeleteFromEditForm('<%=BaseID %>','<%=Code %>')"><img alt='(F3) حذف' class="cDelRec" src='../images/spacer.gif' /></a>
                                                </td>
                                                <td class="cVerBar1">
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="imgBtnBack" SkinID="BackButton" OnClick="GoToList" runat="server" />
                                                </td>
                                                <td class="cVerBar1">
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="imgBtnSave" SkinID="SaveButton" OnClick="DoSave" runat="server" />
                                                </td>
                                                <td class="cVerBar1">
                                                </td>
                                                <td>
                                                        <a id="imgBtnLang" href='#' onclick='ChangeLang()'><img alt="(F5) تغییر زبان" name="langimg" border="0" src="../images/Farsibtn.gif" class="cBtnImage2" width="16" height="16" /></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
