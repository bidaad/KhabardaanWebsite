<%@ Page Language="C#" MasterPageFile="~/RootCol1.master" AutoEventWireup="true"
    Inherits="Users_Search" Title="جستجوی کاربران" CodeBehind="Search.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/AddFreind.ascx" TagName="AddFriend" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<%@ Register Src="~/UserControls/UserList.ascx" TagName="UserList" TagPrefix="ULST" %>
<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUserMenu" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
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
                <ULST:UserList runat="server" ID="UserList1" />
            </div>
        </div>
    </div>
</asp:Content>
