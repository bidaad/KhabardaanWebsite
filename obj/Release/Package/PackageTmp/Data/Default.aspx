<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Data_Default"
    Title="آدرسهای عمومی" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
<div class="WinRadiusGray">
    <div class="InnerBarWrap">
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnSearch" Text="جستجو" CssClass="btnSearch" runat="server" OnClick="btnSearch_Click" />
                </td>
                <td>
                    <asp:DropDownList ID="ddlStates" DataTextField="State" DataValueField="Code" runat="server">
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
                    <asp:Label ID="Label1" runat="server" Text="جستجو در اطلاعات: "></asp:Label>
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
                <div class="Box3">
                    <div>
                        <div>
                            <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="آدرس مکانهای عمومی"></asp:Label>
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="Marginer1">
                            <div class="Farsi">
                                دسترسي به شماره تلفن ، آدرس پستي ، وب سايت ، پست الكترونيك ، و خدمات اشخاص ، سازمانها
                                ، وزارت خانه ها ، ارگانها ، شركتها ، و موسسات خصوصي ايران با استفاده از انواع جستجو
                                دستيابي به تلفن و آدرس فرهنگسراها ، سينماها ، موزه ها، كتابخانه ها ، دانشگاه ها
                                ، هتل ها ، مراكز ديدني و تفريحي ايران ، مراكز فوريتهاي پزشكي ، مراكز آتش نشاني و
                                خدمات ايمني و ده ها مورد ديگر<br />
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: right">
                        <asp:DataList ID="dlStates" EnableViewState="false" RepeatColumns="8" RepeatDirection="Horizontal"
                            CssClass="tblListItems" runat="server">
                            <ItemTemplate>
                                <a href="ShowData/?StateCode=<%#DataBinder.Eval(Container.DataItem, "Code")%>">
                                    <%#DataBinder.Eval(Container.DataItem, "State")%></a></ItemTemplate>
                        </asp:DataList>
                    </div>
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
