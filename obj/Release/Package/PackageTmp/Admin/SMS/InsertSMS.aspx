<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" StylesheetTheme="Edit" CodeBehind="InsertSMS.aspx.cs" Inherits="Parset.Admin.SMS.InsertSMS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlHCSMSCatCode" DataValueField="Code" DataTextField="Name" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    گروه
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSMSBody" onclick="this.value=''" TextMode="MultiLine" Width="600" Height="200" runat="server"></asp:TextBox>
                </td>
                <td>
                    متن
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                </td>
            </tr>
        </table>

        <table style="background-color:Gray;">
            <tr>
                <td>
                    <asp:TextBox ID="txtPattern" Width="300" runat="server"></asp:TextBox>
                </td>
                <td>
                    Regular Expression
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlHCSMSCatCode2" DataValueField="Code" DataTextField="Name" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    گروه
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtRegText"  TextMode="MultiLine" Width="600" Height="200" runat="server"></asp:TextBox>
                </td>
                <td>
                    متن
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="lblResult" runat="server" ></asp:Label>
                </td>
                <td style="vertical-align:top;" >
                    <asp:Button ID="btnTest" runat="server" Text="Test" onclick="btnTest_Click" />
                    <asp:Button ID="btnBew" runat="server" Text="New" onclick="btnBew_Click" />
                    <asp:Button ID="btnRemovetags" runat="server" Text="Remove Tags" onclick="btnRemovetags_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
