<%@ Page Title="" Language="C#" MasterPageFile="~/Master2Col.Master" AutoEventWireup="true"
    Inherits="News_ShowNews" CodeBehind="ShowNews.aspx.cs" %>

<%@ Register Src="~/UserControls/RelatedNews.ascx" TagName="RelatedNews" TagPrefix="RNews" %>
<%@ Register Src="~/UserControls/KeywordList.ascx" TagName="KeywordList" TagPrefix="KL" %>

<%@ Register Src="~/UserControls/UCMostVisitedNews.ascx" TagName="UCMostVisitedNews" TagPrefix="UCMVN" %>
<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/ShareTools.ascx" TagName="ShareTools" TagPrefix="UCST" %>
<%@ Register Src="~/UserControls/NewsList.ascx" TagName="NewsList" TagPrefix="NL" %>
<%@ Register Src="~/UserControls/News3Col.ascx" TagName="News3Col" TagPrefix="NL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div>
        <div class=" text-center hidden-lg hidden-md ">
            <UCBanner:Banner ID="Banner1" runat="server" PositionCode="30" />
        </div>
        <div class=" text-center hidden-lg hidden-md ">
            <UCBanner:Banner ID="Banner42" runat="server" PositionCode="42" />
        </div>
        <div class="WinRadiusGray">
            <AKP:MsgBox ID="msgText" runat="server" />
            <asp:Panel runat="server" ID="pnlShowNews" CssClass="KhabardaanList">
                <div class="Marginer1">
                    <div class="Box3">
                        <div class="Clear">
                        </div>
                        <div>
                            <div class="Toolbar">
                                <div class="NewsToolbar">
                                    <i class="fa fa-tachometer White"></i>
                                    <asp:Label ID="lblViewCount" CssClass="Viewlabel" runat="server">1</asp:Label>
                                    <i class="fa fa-calendar White"></i>
                                    <asp:Label ID="lblViewNewsDate" CssClass="Viewlabel" runat="server" />
                                    <i class="fa fa-clock-o White"></i>
                                    <asp:Label runat="server" ID="lblViewNewsTime" CssClass="Viewlabel"></asp:Label>
                                </div>
                            </div>
                            <div class="ShowItem">
                                <asp:Panel runat="server" CssClass="text-center" EnableViewState="false" ID="pnlPic">

                                    <asp:Image class="thickbox" EnableViewState="false" CssClass="img-fluid" runat="server" ID="imgPicName" />
                                </asp:Panel>
                                <div class="Title">
                                    <h2>
                                        <asp:Literal ID="lblViewTitle" runat="server" />
                                    </h2>
                                </div>
                                <div>
                                    <UCST:ShareTools ID="ShareTools1" runat="server"></UCST:ShareTools>

                                </div>
                                <div class="ShowContent">
                                    <asp:Literal ID="lblViewContents" EnableViewState="false" runat="server" />
                                    
                                </div>
                                <%--<div class="news-images-container">
                                    <asp:Repeater ID="rptNewsImages" runat="server">
                                        <ItemTemplate>
                                            <div class="w-100 text-center">
                                                <img class="img-fluid" src="<%#Eval("ImgUrl") %>" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>--%>
                                <br />
                                <div style="margin-top: 5px;">

                                    <span>کد خبر :</span>
                                    <asp:Label runat="server" ID="lblViewCode" CssClass="Viewlabel"></asp:Label>
                                    <span class="sep">&nbsp;|&nbsp;</span>
                                    <asp:HyperLink runat="server" ID="hplViewResourceName" Target="_blank" CssClass="Viewlabel"></asp:HyperLink>
                                </div>
                                <div class="view-fullnews-container">
                                        <asp:HyperLink runat="server" ID="hplMoreFull" Target="_blank" CssClass="ViewFulllabel">مشاهده متن کامل خبر</asp:HyperLink>
                                    </div>
                                <div class="Clear">
                                </div>
                                <div>
                                    <KL:KeywordList runat="server" ID="KeywordList1"></KL:KeywordList>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </asp:Panel>

        </div>

        <div class="WinRadiusGray">
            <RNews:RelatedNews ID="RelatedNews1" runat="server">
            </RNews:RelatedNews>
        </div>

        <div>
            <NL:News3Col runat="server" id="News3Col1" />
        </div>

    </div>

</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="CPH2">
    <div class="HeadWithBotBorder">آخرین عکسهای خبری</div>
    <div class="MIKeywords Padder5">
        <ul id="PicList" class="OriginPicList">
            <%--<asp:Repeater ID="rptImages" runat="server">
                <ItemTemplate>
                    <li>
                        <asp:HyperLink NavigateUrl='<%#"~/News/" + Eval("Code") + ".html" %>' Target="_blank" runat="server"><asp:Image CssClass="img-fluid" ToolTip=<%# Eval("Title") %> ImageUrl=<%# Eval("ImgUrl") %> runat="server"/></asp:HyperLink></li>
                </ItemTemplate>
            </asp:Repeater>--%>
        </ul>
    </div>

    <script>
        $(document).ready(function () {
            $.ajax({
                type: "POST",
                async: true,
                cache: false,
                dataType: "json",
                data: { i: 1, Code: <%=strNewsCode%> },
                                            url: "../Postback/Default.aspx",
                                            success: function (data) {
                                                if (data.success == "1") {
                                                    $("#PicList").html(data.result);
                                                    //alert(data.result);
                                                }

                                            },
                                            error: function () {


                                            }
            });
        });

    </script>
</asp:Content>
