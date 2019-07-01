<%@ Page Language="C#" StylesheetTheme="Edit" MasterPageFile="~/Admin/Main.master"
    AutoEventWireup="true" Inherits="Greetings_EditGreetings"
    Title="Greetings" CodeBehind="EditGreetings.aspx.cs" %>

<asp:Content runat="server" ID="content1" ContentPlaceHolderID="cphMain">

    <div style="text-align: center">
        <div >
            <table class="cTblEdit" bordercolor="#697077" border="1" align="center" cellpadding="0"
                cellspacing="0">
                <tr>
                    <th>
                        <div>

                            <div style="width: 700px; float: right; text-align: right; color: White;">
                                <asp:Label runat="server" ID="lblSysName"></asp:Label>
                            </div>
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
                                                                                                <AKP:ExTextBox ID="txtTitle" jas="1"
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
                                                                                                <AKP:Combo ID="cboHCCatCode" jas="1" BaseID="HCGreetingsCats" runat="server" />
                                                                                            </td>
                                                                                            <td class="cLabel">
                                                                                                <asp:Label ID="lblHCCatCode" runat="server" Text="گروه:"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div>
                                                                        <table class="cTblOneRow">
                                                                            <tr>
                                                                                <td class="cFieldLeft"></td>
                                                                                <td class="cFieldRight">
                                                                                    <fieldset>
                                                                                        <legend>
                                                                                            <asp:Label ID="lblPic" runat="server" Text="عکس بزرگ:"></asp:Label>
                                                                                        </legend>
                                                                                        <table class="cTblField">
                                                                                            <tr>
                                                                                                <td class="cCtrl">
                                                                                                    <AKP:ExRadUpload jas="1" ID="uplPic" TargetFolder="~/Pics/Greetings/" runat="server"
                                                                                                        Skin="Vista" MaxFileSize="20971520" ControlObjectsVisibility="None" />
                                                                                                    <br />
                                                                                                    <asp:HyperLink ID="hplPic" runat="server"></asp:HyperLink>
                                                                                                    <AKP:ExCheckBox ID="chkDeletePic" runat="server" Text="حذف فایل" />
                                                                                                </td>

                                                                                            </tr>
                                                                                        </table>

                                                                                    </fieldset>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div>
                                                                        <table class="cTblOneRow">
                                                                            <tr>
                                                                                <td class="cFieldLeft"></td>
                                                                                <td class="cFieldRight">
                                                                                    <fieldset>
                                                                                        <legend>
                                                                                            <asp:Label ID="Label1" runat="server" Text="عکس کوچک:"></asp:Label>
                                                                                        </legend>
                                                                                        <table class="cTblField">
                                                                                            <tr>
                                                                                                <td class="cCtrl">
                                                                                                    <AKP:ExRadUpload jas="1" ID="uplSmallPic" TargetFolder="~/Pics/Greetings/" runat="server"
                                                                                                        Skin="Vista" MaxFileSize="20971520" ControlObjectsVisibility="None" />
                                                                                                    <br />
                                                                                                    <asp:HyperLink ID="hplSmallPic" runat="server"></asp:HyperLink>
                                                                                                    <AKP:ExCheckBox ID="chkSmallPic" runat="server" Text="حذف فایل" />
                                                                                                </td>

                                                                                            </tr>
                                                                                        </table>

                                                                                    </fieldset>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>

                                                                    <div>
                                                                        <table class="cTblOneRow">
                                                                            <tr>
                                                                                <td class="cFieldLeft">
                                                                                    <table class="cTblField">
                                                                                        <tr>
                                                                                            <td class="cCtrl">
                                                                                                <AKP:FarsiDate ID="dteGDate" jas="1" runat="server" />
                                                                                            </td>
                                                                                            <td class="cLabel">
                                                                                                <asp:Label ID="lblGDate" runat="server" Text="تاریخ:"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="cFieldRight">
                                                                                    <table class="cTblField">
                                                                                        <tr>
                                                                                            <td class="cCtrl">
                                                                                                <AKP:ExTextBox ID="txtSource" jas="1" MaxLength="50" runat="server" />
                                                                                            </td>
                                                                                            <td class="cLabel">
                                                                                                <asp:Label ID="lblSource" runat="server" Text="منبع:"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div>
                                                                        <table class="cTblOneRow">
                                                                            <tr>
                                                                                <td class="cFieldLeft">
                                                                                    <table class="cTblField">
                                                                                        <tr>
                                                                                            <td class="cCtrl">
                                                                                                <asp:Label ID="lblSendNum" runat="server" />
                                                                                            </td>
                                                                                            <td class="cLabel">
                                                                                                <asp:Label ID="lblSendNumLabel" runat="server" Text="تعداد دفعات ارسال:"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td class="cFieldRight">
                                                                                    <table class="cTblField">
                                                                                        <tr>
                                                                                            <td class="cCtrl">
                                                                                                <asp:Label ID="lblID" MaxLength="50" runat="server" />
                                                                                            </td>
                                                                                            <td class="cLabel">
                                                                                                <asp:Label ID="lblIDView" runat="server" Text="ID:"></asp:Label>
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
                                    <div style="text-align: left">
                                        <table class="tblEditButtons" cellpadding="2" cellspacing="4">
                                            <tr>
                                                <td>
                                                    <asp:ImageButton ID="imgBtnBack" Text=" بازگشت " SkinID="BackButton" OnClick="GoToList"
                                                        runat="server" />
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="imgBtnSave" Text=" ذخیره " SkinID="SaveButton" OnClick="DoSave"
                                                        runat="server" />
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
