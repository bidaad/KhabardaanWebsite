<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_Default" Title="جستجوی کاربران" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UserTools.ascx" TagName="UserTools" TagPrefix="UTL" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <UCUserMenu:UserMenu ID="UserMenu1" runat="server" />
    </div>
    <div class="WinRadiusGray">
        <div class="Marginer1">

            <div class="UserSearchCont">
                <div class="row">
                    <div class="col-md-6 text-right">
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="txtFirstName">نام</label>
                                <AKP:ExTextBox runat="server" CssClass="form-control" Width="200" ClientIDMode="Static" ID="txtFirstName"></AKP:ExTextBox>
                            </div>
                        </div>
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="txtLastName">نام خانوادگی</label>
                                <AKP:ExTextBox runat="server" CssClass="form-control" Width="200" ClientIDMode="Static" ID="txtLastName"></AKP:ExTextBox>
                            </div>
                        </div>
                        <div class="form-inline">


                            <div class="form-group">
                                <label for="cboHCGenderCode">جنسیت</label>

                                <AKP:Combo jas="1" ID="cboHCGenderCode" CssClass="form-control" BaseID="HCGenders" ClientIDMode="Static" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 text-left">
                        <div class="form-inline">
                        <div class="form-group">
                            <label for="cboHCMarritalStatusCode">وضعیت تاهل</label>

                            <AKP:Combo jas="1" ID="cboHCMarritalStatusCode" CssClass="form-control" ClientIDMode="Static" BaseID="HCMarritalStatuses" runat="server" />
                        </div>
                            </div>
                        <div class="form-inline">
                        <div class="form-group">
                            <label for="cboHCSmokeCode">سیگار</label>

                            <AKP:Combo jas="1" ID="cboHCSmokeCode" CssClass="form-control" BaseID="HCSmokes" ClientIDMode="Static" AllowNull="true" runat="server" />
                        </div>
                            </div>
                        <div class="form-inline">
                        <div class="form-group">
                            <label for="cboHCEducationCode">تحصیلات</label>

                            <AKP:Combo jas="1" ID="cboHCEducationCode" CssClass="form-control" ClientIDMode="Static" BaseID="HCEducations" AllowNull="true"
                                runat="server" />
                        </div>
                            </div>

                    </div>

                </div>


                <div class="form-inline">

                    <div class="checkbox">

                        <label>
                            <AKP:ExCheckBox ID="chkHavePic" ClientIDMode="Static" runat="server" />
                            فقط کاربران دارای عکس 
                        </label>
                    </div>
                </div>

                <div class="pull-right">
                    <asp:LinkButton ID="btnSearchUsers" Text="جستجو" CssClass="btn btn-info" runat="server"
                        OnClick="btnSearchUsers_Click"></asp:LinkButton>
                </div>
                <div class="clearfix"></div>
            </div>
            <div>
                <table style="width: 95%; direction: ltr !important;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="WinThem1Corner1">&nbsp;
                        </td>
                        <td class="WinThem1Mid">برخی کاربران
                        </td>
                        <td class="WinThem1Corner2">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="WinThem1Left">&nbsp;
                        </td>
                        <td style="direction: rtl; padding: 6px;">
                            <div class="Padder2">
                                <asp:Repeater ID="dtlUsers"
                                    runat="server">
                                    <HeaderTemplate>
                                        <ul class="tblRandUsers">
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <div>
                                                <asp:HyperLink ID="hplUserImage" CssClass="cUserImage1" BorderColor="Black" BorderWidth="1"
                                                    NavigateUrl='<%#"~/Users/Profile.aspx?ID=" + Eval("ID") %>'
                                                    runat="server">
                                                            <%#ShowPic(DataBinder.Eval(Container.DataItem, "SmallPicFile"), DataBinder.Eval(Container.DataItem, "HCGenderCode"))%>
                                                </asp:HyperLink>
                                            </div>
                                            <div>
                                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"http://www.parset.com/Users/Profile.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                                    runat="server"><%#DataBinder.Eval(Container.DataItem, "FirstName")%>
                                                </asp:HyperLink>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </td>
                        <td class="WinThem1Right">&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="WinThem1Corner3">&nbsp;
                        </td>
                        <td class="WinThem1Bot">&nbsp;
                        </td>
                        <td class="WinThem1Corner4">&nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
