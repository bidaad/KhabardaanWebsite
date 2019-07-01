<%@ Page Language="C#" AutoEventWireup="true" Inherits="Feed_Default" Codebehind="Default.aspx.cs" %>
document.write('<div style="border:solid 1px #DBE1E6;background-color:#FDFEFE;font-family:Tahoma;font-size:12px;direction:rtl;">'+
'<div style="background-image:url(http://www.parset.com/images/bgHeader1.jpg);background-repeat:repeat-x;height:32px;">'+
'    <div style="padding:6px;"><asp:label  ID="lblTitle" runat="server" ></asp:label></div>'+
'</div>'+
'<div style="line-height:150%;padding:4px;text-align:right;">'+
<asp:repeater ID="rptItems" runat="server">
    <ItemTemplate>'        <div style="padding-top:3px;"><img src="http://www.parset.com/images/Bullet1.gif" style="width:6px;height:7px;" />'+
'            <a style="text-decoration:none;" target="_blank" href="http://www.parset.com/News/<%#DataBinder.Eval(Container.DataItem, "Code") + ".htm"%>"><%#Tools.ChangeEnc(Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title").ToString().Replace("'",""), 70))%></a>&nbsp;'+
'            <span>(<%#DataBinder.Eval(Container.DataItem, "ResourceName").ToString().Replace("'", "")%>)</span>'+
'        </div>'+
</ItemTemplate>
</asp:repeater>
'</div>'+
'<div style="height:20px;padding:3px;text-align:center;background-color:#;border-top:solid 1px #C5CED7;">'+
'    <asp:hyperlink style="text-decoration:none;" NavigateUrl="http://www.parset.com/News" Target="_Blank" runat="server">موتور جستجوگر جستجوگر هوشمند خبری پارست</asp:hyperlink>'+
'</div>'+
'</div>');
