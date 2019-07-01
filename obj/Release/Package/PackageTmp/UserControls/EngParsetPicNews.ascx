<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EngParsetPicNews.ascx.cs"
    Inherits="Parset.UserControls.EngParsetPicNews" %>
<div class="PicNewsFirst" id="EngNews" style="display: none;">
    <div style="float: left; margin-top: 85px;">
        <asp:HyperLink NavigateUrl="~/News/PicNews.aspx" Target="_blank" runat="server">« بیشتر </asp:HyperLink>
    </div>
    <table style="float: left;">
        <tr>
            <asp:Repeater ID="rptEngPicNews" Visible="false" EnableViewState="false" runat="server">
                <ItemTemplate>
                    <td style="border: solid 1px #111111;">
                        <div class="EnPicItem">
                            <asp:HyperLink Target="_blank" runat="server" CssClass="cEngTitle" NavigateUrl='<%#"http://en.parset.com/News/" +DataBinder.Eval(Container.DataItem, "Code") + ".htm"%>'><%#ShowPic(DataBinder.Eval(Container.DataItem, "Title"),DataBinder.Eval(Container.DataItem, "PicName"))%></asp:HyperLink>
                        </div>
                    </td>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="rptParsetPicNews" Visible="false" EnableViewState="false" runat="server">
                <ItemTemplate>
                    <td>
                        <div class="EnPicItem">
                            <asp:HyperLink Target="_blank" runat="server" CssClass="cEngTitle" NavigateUrl='<%#"http://www.parset.com/News/" +DataBinder.Eval(Container.DataItem, "Code") + ".htm" %>'>
                    <asp:Image ImageUrl='<%#"http://www.parset.com/Files/News/" + Eval("PicName") %>' ToolTip='<%#Eval("Title") %>' runat="server" />
                            </asp:HyperLink>
                        </div>
                    </td>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>
    <div style="float: right;">
        <asp:HyperLink ID="hplPicNewsLogo" NavigateUrl="http://en.parset.com" Target="_blank"
            ImageUrl="~/images/EnglishNews.gif" runat="server"></asp:HyperLink>
    </div>
</div>
<script type="text/javascript">
    //    $(document).ready(function () {
    //        $("#EngNews").animate({ width: "97%" }, 2000)
    //         .animate({ borderLeftWidth: "15px" }, 1000);
    //    });


    $(document).ready(function () {
        $("#EngNews").slideDown("slow");
    });
</script>
