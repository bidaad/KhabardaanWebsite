<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RootBulk.Master" CodeBehind="URShowExternalNews.aspx.cs" Inherits="Parset.News.URShowExternalNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <AKP:MsgBox ID="msgText" runat="server" />
    <iframe class="resize-to-window" scrolling="auto" frameborder="0" id="iframe" src="<%=NewsUrl %>"
        allowtransparency="true" style="width: 100%; height: 100%;"></iframe>
    <%--<div class="SideBar" id="SideBar">
        <div class="CloseBox" style="margin:5px;" onclick="CloseSideBar()"></div>
        <div class="NewsLogo">
            <asp:HyperLink ID="HyperLink1" Width="200" Height="77" ImageUrl="~/images/spacer.gif"
                NavigateUrl="~/News" runat="server"></asp:HyperLink>
        </div>
        <div class="Marginer1">
            <div class="WinRadiusGray">
                <div class="CatHeaderCont">
                    <h3 class="CatHeader">
                        <asp:HyperLink ID="hplMostVisitedNews" Text="پر بیننده ترین خبرها" runat="server"></asp:HyperLink>
                    </h3>
                </div>
                <div class="TextNewsList">
                    <asp:Repeater ID="rptMostVisitedNews" EnableViewState="false" runat="server">
                        <ItemTemplate>
                            <div>
                                <asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                    NavigateUrl='<%#"http://www.parset.com/N" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".html" %>'><%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 90)%></asp:HyperLink>&nbsp;
                                    
                                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="Clear">
                </div>
            </div>
            <div class="WinRadiusGray">
                <div class="CatHeaderCont">
                    <h3 class="CatHeader">
                        <asp:HyperLink ID="hplCatName" runat="server"></asp:HyperLink>
                    </h3>
                </div>
                <div class="TextNewsList">
                    <asp:Repeater ID="rptCatNews" EnableViewState="false" runat="server">
                        <ItemTemplate>
                            <div>
                                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                    NavigateUrl='<%#"http://www.parset.com/N" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".html" %>'><%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 90)%></asp:HyperLink>&nbsp;
                                    <span class="cResource"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#"http://www.parset.com/NR" + Eval("ResourceSiteCode") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) + ".html"%>'><%#DataBinder.Eval(Container.DataItem, "ResourceName")%></asp:HyperLink></span>
                                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="Clear">
                </div>
            </div>
            <asp:Panel ID="pnlRelatedNews" runat="server" CssClass="WinRadiusGray">
                <div class="CatHeaderCont">
                    <h3 class="CatHeader">
                        <asp:HyperLink ID="hplRelatedNews" Text="خبرهای مرتبط" runat="server"></asp:HyperLink>
                    </h3>
                </div>
                <div class="TextNewsList">
                    <asp:Repeater ID="rptRelatedNews" EnableViewState="false" runat="server">
                        <ItemTemplate>
                            <div>
                                <asp:HyperLink runat="server" CssClass="cTitle" Target="_blank" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                    NavigateUrl='<%#"http://www.parset.com/News/" +DataBinder.Eval(Container.DataItem, "Code")  + ".htm"%>'><%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"), 90)%></asp:HyperLink>&nbsp;</div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="Clear">
                </div>
            </asp:Panel>
            <div class="WinRadiusGray">
                <div class="CatHeaderCont">
                    <h3 class="CatHeader">
                        <asp:Label ID="Label2" Text="کلید واژه ها" runat="server"></asp:Label>
                    </h3>
                </div>
                <div class="clear"></div>
                <div class="Farsi" >
                    <asp:Repeater ID="rptKeywords" EnableViewState="false" runat="server">
                        <ItemTemplate>&nbsp;<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%#"http://www.parset.com/NK" + Eval("KeywordCode") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Name")) +".html"%>'><%#DataBinder.Eval(Container.DataItem, "Name")%></asp:HyperLink>&nbsp;</ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="Clear">
                </div>
            </div>
        </div>
    </div>--%>
    <div class="Clear">
    </div>
    <script type="text/javascript">
        function CloseSideBar() {
            objSideBar = document.getElementById('SideBar');
            if (objSideBar != null) {
                objSideBar.style.display = 'none';
                var windowWidth = $(window).width();
                $('.resize-to-window').width(windowWidth);
            }


        }
        function resizeToWindow() {
            var windowHeight = $(window).height();
            var windowWidth = $(window).width();

            if ($('.recomended-form')) {
                $('.resize-to-window').height(windowHeight - 105);
                $('.resize-to-window').width(windowWidth - 240);
            }
            else {
                $('.resize-to-window').height(windowHeight - 105);
                $('.resize-to-window').width(windowWidth - 240);
            }

            if ($('.SideBar'))
                $('.SideBar').height(windowHeight - 105);

        }

        //change height when document is ready
        $(function () {
            resizeToWindow();

            //change iframe height whene browser is resize
            $(window).resize(function () {
                resizeToWindow();
            });
        });
        resizeToWindow();

    </script>
</asp:Content>
