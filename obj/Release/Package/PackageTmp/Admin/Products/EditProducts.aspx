<%@ Page Language="C#" StylesheetTheme="Edit" ValidateRequest="false" MasterPageFile="~/Admin/Main.master"
    AutoEventWireup="true" Inherits="Products_EditProducts"
    Title="Products" Codebehind="EditProducts.aspx.cs" %>

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
            window.location.href = 'EditProducts.aspx?SelectedTab=' + SelTab + '&Code=<%=Code%>'
        }
    </script>

    <div class="EditHeader">
        <asp:Label runat="server" ID="lblSysName"></asp:Label></div>
    <div class="cEditPage">
        <div>
            <AKP:MsgBox runat="server" ID="msgBox">
            </AKP:MsgBox>
        </div>
        <div>
            <table class="cTblOneRow">
                <tr>
                    <td class="cFieldLeft">
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:ExTextBox ID="txtTitle" jas="1" MaxLength="500" Width="300" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblTitle" runat="server" Text="عنوان:"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="cFieldRight">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div class="UploaderContainer">
            <fieldset style="direction: rtl">
                <legend>&nbsp;<asp:Label runat="server" Text="عکس" ID="lblPicFile" />&nbsp;</legend>
                <table class="cTblOneRow">
                    <tr>
                        <td class="cFieldLeft">
                            <div class="cPic">
                                <AKP:ExRadUpload ID="uplPicFile" jas="1" runat="server" AllowedFileExtensions=".gif,.jpg,.jpeg,.bmp"
                                    TargetFolder="~/Files/Products/" Skin="Vista" MaxFileSize="200000" ControlObjectsVisibility="None" />
                                <br />
                                <asp:CheckBox ID="chkDeletePicFile" runat="server" Text="حذف فایل" />
                            </div>
                        </td>
                        <td class="cFieldRight">
                            <asp:HyperLink rel="lightbox" EnableViewState="false" Target="_blank" runat="server"
                                ID="hplPicFile" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
        <div>
            <table class="cTblOneRow">
                <tr>
                    <td class="cFieldLeft">
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:NumericTextBox ID="txtDiscount" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblDiscount" runat="server" Text="تخفيف:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:FarsiDate ID="dteAddDate" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblAddDate" runat="server" Text="تاريخ ايجاد:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:ExCheckBox ID="chkActive" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="Label1" runat="server" Text="فعال:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="cFieldRight">
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:NumericTextBox ID="txtPrice" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblPrice" runat="server" Text="قيمت:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:ExTextBox ID="txtInternalCode" SkinID="English" jas="1" MaxLength="50" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblInternalCode" runat="server" Text="کد داخلي:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:NumericTextBox ID="txtShowOrder" SkinID="English" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblShowOrder" runat="server" Text="ترتيب نمايش:"></asp:Label>
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
                                    <AKP:LookupTree ID="treProductCatCode" jas="1" BaseID="ProductCats" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblProductCatCode" runat="server" Text="گروه:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="cFieldRight">
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:ExTextBox ID="txtProductID" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="Label2" runat="server" Text="شناسه:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:NumericTextBox ID="txtWeight" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="Label3" runat="server" Text="وزن:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table class="cTblField">
                <tr>
                    <td class="cCtrl">
                        <AKP:ExTextBox ID="txtDescription" jas="1" Width="700" Height="300" CssClass="cMultiLine"
                            TextMode="MultiLine" runat="server" />
                    </td>
                    <td class="cLabel">
                        <asp:Label ID="lblDescription" runat="server" Text="توضيحات:"></asp:Label>
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
                                    <AKP:ExTextBox DisplayMode="ViewMode" ID="txtViewNum" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblViewNum" runat="server" Text="تعداد بازديد:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="cFieldRight">
                        <table class="cTblField">
                            <tr>
                                <td class="cCtrl">
                                    <AKP:ExTextBox DisplayMode="ViewMode" ID="txtBuyNum" jas="1" runat="server" />
                                </td>
                                <td class="cLabel">
                                    <asp:Label ID="lblBuyNum" runat="server" Text="تعداد خريد:"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div style="text-align: right">
        <table cellpadding="2" cellspacing="4">
            <tr>
                <td>
                    <a class="button2" onclick="ChangeLang()">فارسی </a>
                </td>
                <td class="cVerBar1">
                </td>
                <td>
                    <asp:ImageButton ID="imgBtnBack" Text=" بازگشت " SkinID="BackButton" OnClick="GoToList"
                        runat="server" />
                </td>
                <td class="cVerBar1">
                </td>
                <td>
                    <asp:LinkButton ID="imgBtnSave" Text=" ذخیره " SkinID="SaveButton" OnClick="DoSave"
                        runat="server" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
