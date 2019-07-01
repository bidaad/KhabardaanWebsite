﻿<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="True" Inherits="Reg_Default"
    Title="عضویت در سایت" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="panel panel-default Marginer20">
    <div class="panel-heading ListTitle">
        <h3 class="panel-title BulletList text-center">
            عضویت در پارست</h3>
    </div>
    <div class="Padder20">
        <AKP:MsgBox runat="server" ID="msgMessage">
        </AKP:MsgBox>
        <div class="RegformCont form-horizontal">
            <div class="form-group RegField">
               
                <asp:DropDownList ID="cboHCGenderCode" DataTextField="Name" DataValueField="Code" 
                    CssClass="form-control col-sm-9 col-md-9 col-xs-9" runat="server">
                </asp:DropDownList>
            </div>
            <div class="form-group RegField">
                <asp:TextBox runat="server" ID="txtFirstName" placeholder="نام" CssClass="form-control" />
            </div>
            <div class="form-group RegField">
                <asp:TextBox ID="txtLastName" runat="server" placeholder="نام خانوادگی" CssClass="form-control" />
            </div>
            <div class="form-group RegField">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="ایمیل" CssClass="form-control LTR" />
            </div>
            <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="cReq"
                    ValidationGroup="ValidateRegister" Display="Dynamic" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ErrorMessage="ایمیل معتبر نیست"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group RegField">
                <asp:TextBox ID="txtPassword" runat="server" SkinID="English" TextMode="Password"
                    placeholder="کلمه عبور" CssClass="form-control LTR" />
            </div>
            <div class="form-group RegField Relative">
                <asp:TextBox ID="txtConfirmPassword" runat="server" SkinID="English" TextMode="Password"
                    placeholder="تکرار کلمه عبور" CssClass="form-control LTR" />
                <span onmouseup="hidePass($(this))" onmousedown="showPass($(this))" class="viewpass">
                    <img src="../images/viewpassword.png"></span>
            </div>
            <div style="margin-right: 0px;">
                <asp:Button ID="btnSubmit" CssClass="btn btn-primary" ValidationGroup="ValidateRegister"
                    runat="server" Text="ارسال" OnClick="btnSubmit_Click" />
            </div>
           
        </div>
        <div class="clear">
        </div>
    </div>
</div>    
    <div class="Clear">
    </div>
    <asp:HiddenField ID="hfPrePage" runat="server" />
</asp:Content>
