<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Data_ShowData_Default"
    Title="نمایش اطلاعات" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <div class="InnerBarWrap">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnSearch" Text="جستجو" CssClass="btnSearch" runat="server" OnClick="btnSearch_Click" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlStates" DataTextField="State" DataValueField="State" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlDataTypes" DataTextField="Name" DataValueField="Code" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtKeyword" CssClass="txtKeyword" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="جستجو در شهرها: "></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="LeftCol">
            <AKP:MsgBox ID="msgText" runat="server" />
            <div class="ParsetList">
                <div class="Marginer1">
                    <div class="MidPageBanner">
                        <UCBanner:Banner ID="Banner3" PositionCode="26" runat="server" />
                    </div>
                    <div id="DataObj" class="Box2">
                        <div class="TopNav">
                            <asp:HyperLink ID="hplNav" NavigateUrl="~/Data" runat="server">بازگشت به فهرست استانها</asp:HyperLink>
                        </div>
                        <div class="ListHeader">
                            <div id="divHeader">
                                <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                            </div>
                        </div>
                        <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                            <HeaderTemplate>
                                <div class="Col4">
                                    <div class="c45" style="font-weight: bold">
                                        نام
                                    </div>
                                    <div class="c44" style="font-weight: bold">
                                        نوع
                                    </div>
                                    <div class="c43" style="font-weight: bold">
                                        آدرس
                                    </div>
                                    <div class="c42" style="font-weight: bold">
                                        تلفن
                                    </div>
                                    <div class="c41" style="font-weight: bold">
                                        استان
                                    </div>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="<%#GetClass() %>">
                                    <div class="Col4">
                                        <div class="c45">
                                            <%#DataBinder.Eval(Container.DataItem, "Name")%>
                                        </div>
                                        <div class="c44">
                                            <%#DataBinder.Eval(Container.DataItem, "DataTypeName")%>
                                        </div>
                                        <div class="c43">
                                            <%#Tools.ConvertToUnicode( DataBinder.Eval(Container.DataItem, "Address"))%>
                                        </div>
                                        <div class="c42">
                                            <%#Tools.ConvertToUnicode(DataBinder.Eval(Container.DataItem, "Tel"))%>
                                        </div>
                                        <div class="c41" style="font-weight: normal;">
                                            <%=StateName%>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="Clear">
                        </div>
                        <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
                        <div class="Box2Toolbar">
                            <Tlb:Toolbar ID="tlb1" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Clear">
    </div>
    <script type="text/javascript">
        objOnSelect = document.getElementById("DataObj");
        objOnSelect.onmouseup = doSomethingWithSelectedText;
        objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>
</asp:Content>
