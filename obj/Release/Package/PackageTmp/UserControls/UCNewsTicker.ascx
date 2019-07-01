<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCNewsTicker.ascx.cs"
    Inherits="Parset.UserControls.UCNewsTicker" %>
<div id="objNewsTicker">
</div>

<div class="RSS">
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/News/RSS.aspx" CssClass="cRSS" ImageUrl="~/images/spacer.gif"
        Width="16" Height="16" runat="server"></asp:HyperLink>
</div>
<div>
    <table class="tblSearch">
        <tr>
            <td class="hidden-xs">
                <div id="newsticker">
                    <div id="ticker-wrapper" class="no-js">
                        <ul id="js-news" class="js-hidden">
                            <asp:Repeater ID="rptNews" EnableViewState="false" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="NewsTitle">
                                            <asp:HyperLink ID="HyperLink2" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                                NavigateUrl='<%#"http://www.parset.com/N" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".html" %>'
                                                Text='<%#Tools.ChangeEnc(Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"),60))%>'
                                                runat="server"></asp:HyperLink>&nbsp;<span
                                                    class="cDate"><%#Tools.GetPrettyPersianDate2(DataBinder.Eval( Container.DataItem, "NewsDate"))%></span>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </td>
            <td class="lbl">

                <asp:Label ID="lblSearch" runat="server" Text="جستجو در "></asp:Label>
                <asp:HyperLink ID="HyperLink3" NavigateUrl="~/News" runat="server">اخبار</asp:HyperLink>
                <asp:Label ID="Label1" runat="server" Text=":"></asp:Label>
            </td>
            <td>
                <input type="text" ID="txtKeyword" Class="form-control" />
            </td>
            <td>
                <input type="button" ID="btnSearch" class="btn btn-primary" onclick="SearchNews()" value="جستجو"  />
            </td>
        </tr>
    </table>
</div>
<div class="clear">
</div>
    <script type="text/javascript">
        $(document).ready(function () {
            Url = SiteDomain + "Ajax/AjaxNewsTicker.aspx"
            startTickerRequest(Url, AjaxNewsTickerResult, 'GET', null);
        });
    </script>

