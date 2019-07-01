<%@ Page Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Culture_History_Default"
    Title="تقویم تاریخ" CodeBehind="Default.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>

<%@ Register Src="~/UserControls/SmallRandPro.ascx" TagName="SmallRandPro" TagPrefix="SRP" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
            <div class="CatHeaderCont">
                <h3 class="CatHeader">
                    <asp:Label ID="lblCatTitle" Text="تقویم تاریخ"
                        runat="server"></asp:Label>
                </h3>
            </div>
            <div class="clear">
            </div>

    <div class="Head5">
        <table style="margin-left:100px;">
            <tr>
                <td>
                    <asp:DropDownList ID="ddlDays" DataTextField="Name" AutoPostBack="true" DataValueField="ID"
                        runat="server">
                        <asp:ListItem Value="01" Text="1"></asp:ListItem>
                        <asp:ListItem Value="02" Text="2"></asp:ListItem>
                        <asp:ListItem Value="03" Text="3"></asp:ListItem>
                        <asp:ListItem Value="04" Text="4"></asp:ListItem>
                        <asp:ListItem Value="05" Text="5"></asp:ListItem>
                        <asp:ListItem Value="06" Text="6"></asp:ListItem>
                        <asp:ListItem Value="07" Text="7"></asp:ListItem>
                        <asp:ListItem Value="08" Text="8"></asp:ListItem>
                        <asp:ListItem Value="09" Text="9"></asp:ListItem>
                        <asp:ListItem Value="10" Text="10"></asp:ListItem>
                        <asp:ListItem Value="11" Text="11"></asp:ListItem>
                        <asp:ListItem Value="12" Text="12"></asp:ListItem>
                        <asp:ListItem Value="13" Text="13"></asp:ListItem>
                        <asp:ListItem Value="14" Text="14"></asp:ListItem>
                        <asp:ListItem Value="15" Text="15"></asp:ListItem>
                        <asp:ListItem Value="16" Text="16"></asp:ListItem>
                        <asp:ListItem Value="17" Text="17"></asp:ListItem>
                        <asp:ListItem Value="18" Text="18"></asp:ListItem>
                        <asp:ListItem Value="19" Text="19"></asp:ListItem>
                        <asp:ListItem Value="20" Text="20"></asp:ListItem>
                        <asp:ListItem Value="21" Text="21"></asp:ListItem>
                        <asp:ListItem Value="22" Text="22"></asp:ListItem>
                        <asp:ListItem Value="23" Text="23"></asp:ListItem>
                        <asp:ListItem Value="24" Text="24"></asp:ListItem>
                        <asp:ListItem Value="25" Text="25"></asp:ListItem>
                        <asp:ListItem Value="26" Text="26"></asp:ListItem>
                        <asp:ListItem Value="27" Text="27"></asp:ListItem>
                        <asp:ListItem Value="28" Text="28"></asp:ListItem>
                        <asp:ListItem Value="29" Text="29"></asp:ListItem>
                        <asp:ListItem Value="30" Text="30"></asp:ListItem>
                        <asp:ListItem Value="31" Text="31"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="lbl">
                    <asp:Label ID="Label2" runat="server" Text="روز: "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMonths" DataTextField="Name" AutoPostBack="true" DataValueField="ID"
                        runat="server">
                        <asp:ListItem Value="01" Text="ژانویه"></asp:ListItem>
                        <asp:ListItem Value="02" Text="فوریه"></asp:ListItem>
                        <asp:ListItem Value="03" Text="مارس"></asp:ListItem>
                        <asp:ListItem Value="04" Text="آورین"></asp:ListItem>
                        <asp:ListItem Value="05" Text="می"></asp:ListItem>
                        <asp:ListItem Value="06" Text="ژوئن"></asp:ListItem>
                        <asp:ListItem Value="07" Text="جولای"></asp:ListItem>
                        <asp:ListItem Value="08" Text="آگوست"></asp:ListItem>
                        <asp:ListItem Value="09" Text="سپتامبر"></asp:ListItem>
                        <asp:ListItem Value="10" Text="اکتبر"></asp:ListItem>
                        <asp:ListItem Value="11" Text="نوامبر"></asp:ListItem>
                        <asp:ListItem Value="12" Text="دسامبر"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="lbl">
                    <asp:Label ID="Label1" runat="server" Text="ماه: "></asp:Label>
                </td>
                <td>
                    <div class="MainHeader">
                        تقویم تاریخ
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div class="LeftCol">
        <AKP:MsgBox ID="msgText" runat="server" />
        <div class="ParsetList">
            <div class="Marginer1">
                <div class="MidPageBanner">
                   <UCBanner:Banner id="Banner3" positioncode="11" runat="server" />
                </div>
                <div id="HistoryObj" class="Box3">
                    
                    <div>
                        <asp:Label ID="lblHeader" CssClass="Header1" runat="server" Text="فهرست رویدادها"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div class="ListHeader">
                        <div id="divHeader">
                            <asp:Label ID="lblHeaderText" runat="server"></asp:Label>
                        </div>
                    </div>
                    <asp:Repeater ID="rptItems" runat="server" EnableViewState="false">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="<%= GetClass()%>">
                                <div>
                                    <span class="EYear">سال&nbsp;<%#DataBinder.Eval(Container.DataItem, "EYear") %>:
                                    </span>
                                    <%#FormatEvent(Tools.FormatText(DataBinder.Eval(Container.DataItem, "Event1")))%>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="Box2Toolbar">
                        <Tlb:Toolbar ID="tlb1" runat="server" />
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    </div>
    

    <script type="text/javascript">
        objOnSelect = document.getElementById("HistoryObj");
        objOnSelect.onmouseup = doSomethingWithSelectedText;
        objOnSelect.onkeyup = doSomethingWithSelectedText;
    </script>

</asp:Content>
