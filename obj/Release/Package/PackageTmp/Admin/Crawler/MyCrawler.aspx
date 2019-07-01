<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyCrawler.aspx.cs" Inherits="Parset.Admin.Crawler.MyCrawler" %>

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
                    <asp:Label ID="Label1" runat="server" Text="Url"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtUrl" runat="server">http://www.beytoote.com/fun/astronomy/</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="CatCode"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtCatCode" runat="server">2</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnRun" Enabled="false" runat="server" Text="Run" onclick="btnRun_Click" />
                    
                    <asp:Button ID="btnSavePics" runat="server" Text="SavePics" 
                        onclick="btnSavePics_Click" />
                    
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="CurrentCrawl" onclick="CurrentCrawl_Click" />
                    
                    
                    
                    </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
