<%@ Page Language="C#" MasterPageFile="~/Admin/Main.master" AutoEventWireup="true" Inherits="Admin_Orders_OrderList" Title="Untitled Page" Codebehind="OrderList.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="Server">
    <asp:Repeater ID="rptOrders" OnItemCommand="HandleRepeaterCommand" runat="server">
        <HeaderTemplate>
            <table class="tblOrders">
                <tr>
                <td></td>
                <td>
                    مجموع
                </td>
                <td>
                    قیمت ارسال
                </td>
                <td>
                    قیمت محصول
                </td>
                <td >
                   خریدار
                </td>
                <td>
                    نام محصول
                </td>
                <td>
                    شناسه
                </td>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:LinkButton ID="btnToggleExpand" CommandName="ToggleExpand" OrderCode=<%#DataBinder.Eval(Container.DataItem, "Code")%> runat="server">نمایش</asp:LinkButton>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem, "TotalPrice")%>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem, "SendPrice")%>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem, "ProductPrice")%>
                </td>
                <td >
                    <%#DataBinder.Eval(Container.DataItem, "LastName") %>&nbsp;
                    <%#DataBinder.Eval(Container.DataItem, "FirstName") %>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem, "ProductTitle")%>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem, "ProductID") %>
                </td>
            </tr>
            <tr>
                <td colspan="7">
                    <asp:Panel runat="server" ID="pnlOrderInfo" Visible="false">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lblProvince" runat="server" ></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="استان"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblCity" runat="server" ></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="شهر"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblJobTel" runat="server" ></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="تلفن محل کار"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblHomeTel" runat="server" ></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text="تلفن منزل"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblCellPhone" runat="server" ></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="موبایل"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblAddress" runat="server" ></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="آدرس"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblDescription" runat="server" ></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="توضیحات"></asp:Label></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            
        </ItemTemplate>
        <FooterTemplate>
            </table></FooterTemplate>
    </asp:Repeater>
</asp:Content>
