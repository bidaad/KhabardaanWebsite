<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserTransList.aspx.cs"
    MasterPageFile="~/RootCol1.Master" Inherits="Parset.UsersFolder.UserTransList" %>

<%@ Register Src="~/UserControls/UserMenu.ascx" TagName="UserMenu" TagPrefix="UCUM" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CP1">
<div class="WinRadiusGray">
<UCUM:UserMenu runat="server" ID="UserMenu1" />
</div>
<div class="WinRadiusGray">
                <div class="CatHeaderCont">
            <h3 class="CatHeader">
                <asp:Label ID="lblCatTitle" Text=" تراکنش های مالی من"
                    runat="server"></asp:Label>
            </h3>
        </div>
        <div class="clear">
        </div>

    
        
        <div>
            <div class="Marginer1">
            <div class="Box1" style="margin-top: 10px;">
                
                <div class="PayPanel">
                    <div>
                        <AKP:MsgBox runat="server" ID="msg">
                        </AKP:MsgBox>
                    </div>
                    <div>
                        <asp:Repeater ID="rptTransList" runat="server">
                            <HeaderTemplate>
                                <table class="tblThem1">
                                    <tr>
                                        
                                        <th>
                                            وضعیت
                                        </th>
                                        <th>
                                            مبلغ
                                        </th>
                                        <th>
                                            تاریخ
                                        </th>
                                        <th>
                                            نحوه پرداخت
                                        </th>
                                        <th>
                                            مورد پرداختی
                                        </th>
                                        <th>
                                            شماره فیش
                                        </th>
                                        <th>
                                            نوع
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr class="<%#ShowClass(Eval("Amount")) %>">
                                   
                                    <td class="Them1Cell">
                                        <%#Eval("TransStatus")%>
                                    </td>
                                    <td class="Them1Cell">
                                        <%#ShowAmount(Eval("Amount")) %>
                                    </td>
                                    <td class="Them1Cell">
                                        <%#Tools.ChangeEnc(Eval("ChrgDate"))%>
                                    </td>
                                    <td class="Them1Cell">
                                        <%#Eval("PayMethod") %>
                                    </td>
                                    <td class="Them1Cell">
                                        <%#Eval("PayReason") %>
                                    </td>
                                     <td class="Them1Cell">
                                        <%#Eval("FishNo") %>
                                    </td>
                                    <td class="Them1Cell">
                                        <%#ShowPayDirection(Eval("Amount")) %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <tr class="<%#ShowClass(Eval("Amount")) %>">
                                    
                                    <td class="Them1CellAlt">
                                        <%#Eval("TransStatus")%>
                                    </td>
                                    <td class="Them1CellAlt">
                                        <%#ShowAmount(Eval("Amount")) %>
                                    </td>
                                    <td class="Them1CellAlt">
                                        <%#Tools.ChangeEnc(Eval("ChrgDate"))%>
                                    </td>
                                    <td class="Them1CellAlt">
                                        <%#Eval("PayMethod") %>
                                    </td>
                                    <td class="Them1CellAlt">
                                        <%#Eval("PayReason") %>
                                    </td>
                                    <td class="Them1CellAlt">
                                        <%#Eval("FishNo") %>
                                    </td>
                                    <td class="Them1CellAlt">
                                        <%#ShowPayDirection(Eval("Amount")) %>
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                    <%--<div>
                        <asp:ImageButton ID="btnPrint" ImageUrl="~/images/buttons/btn_print.gif" runat="server"
                            OnClick="btnPrint_Click" />
                    </div>--%>
                </div>
            </div>
            </div>
        </div>
    
</div>
</asp:Content>
