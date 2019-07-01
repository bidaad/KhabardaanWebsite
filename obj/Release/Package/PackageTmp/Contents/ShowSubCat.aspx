<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root1.master" CodeBehind="ShowSubCat.aspx.cs"
    Inherits="Parset.Contents.ShowSubCat" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/RandomProduct.ascx" TagName="RandomProduct" TagPrefix="RandPro" %>
<%@ Register Src="~/UserControls/RandUsers.ascx" TagName="RandUsers" TagPrefix="RND" %>
<%@ Register Src="~/UserControls/UCRandContent.ascx" TagName="UCRandContent" TagPrefix="UCRC" %>
<%@ Register Src="~/UserControls/PagerToolbar.ascx" TagName="PagerToolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="WinRadiusGray">
        <UCRC:UCRandContent ID="UCContentCurCat" runat="server" />
    </div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner5" runat="server" PositionCode="31" />
    </div>
    <div class="WinRadiusGray">
        <div class="Clear">
            <div class="ListHeader">
                <div id="divHeader">
                    <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                </div>
            </div>
        </div>
        <asp:Repeater ID="rptItems" EnableViewState="false" runat="server">
            <ItemTemplate>
                <div class="ContentListItem">
                    <div class="ContentCols">
                        <div class="ContentLeft">
                            <div>
                                <asp:HyperLink CssClass="ACont" Target="_blank" NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>' runat="server"><%#Eval("Title") %></asp:HyperLink>
                            </div>
                            <div><%#ShowBrief(Eval("ContentText")) %>&nbsp;<asp:HyperLink ID="hplMore" CssClass="More" Target="_blank" NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>' runat="server">ادامه  »</asp:HyperLink></div>
                        </div>
                        <div class="ContentRight">
                            <asp:HyperLink Target="_blank" CssClass="ContentHeadImg" ToolTip='<%#Eval("Title") %>' NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>' runat="server">
                                <asp:Image ImageUrl='<%#"http://static.parset.com/Files/Content/180/" + Eval("PicName") %>' ToolTip='<%#Eval("Title") %>' runat="server"></asp:Image>

                            </asp:HyperLink>


                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="clear"></div>
    </div>
    <Tlb:PagerToolbar runat="server" ID="pgrToolbar" />
    <div class="clear"></div>
    <div class="WinRadiusGray">
        <UCBanner:Banner ID="Banner1" runat="server" PositionCode="12" />
    </div>
    <div class="Clear">
    </div>
</asp:Content>
