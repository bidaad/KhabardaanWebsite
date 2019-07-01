<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCRandContent.ascx.cs"
    Inherits="Parset.UserControls.UCRandContent" %>


<div class="WinRadiusGray">
    <div class="ContentCatMore">
        <asp:HyperLink ID="hplMore" runat="server">بیشتر  »</asp:HyperLink>
    </div>
    <div class="CatHeaderCont">
        <h3 class="CatHeader">
            <asp:Label ID="lblCatTitle" runat="server"></asp:Label>
        </h3>
    </div>
    <div class="clear"></div>
    <div class="row">
        <div class="col-md-5">
            <div class="ContentHeadImg">
                <asp:HyperLink ID="hplRandImg" runat="server"></asp:HyperLink>
            </div>
            <div class="Farsi Padder10">
                <asp:HyperLink ID="hplRandTitle" Target="_blank" CssClass="ACont" runat="server"></asp:HyperLink>
            </div>
            <div class="ContText">
                <asp:Label ID="lblContentText" runat="server"></asp:Label>
            </div>
        </div>
        <div class="col-md-7 ">
            <div class="Padder10">
            <ul class="RandContentItems">

                <asp:Repeater ID="rptContents" runat="server" EnableViewState="false">
                    <ItemTemplate>
                        <li class="InnerContentCols">
                            <div class="row ">
                                <div class="col-md-3">
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>' Target="_blank" runat="server"><asp:image ID="Image1" runat="server" ImageUrl='<%#"http://static.parset.com/Files/Content/60/" +Eval("PicName") %>' /></asp:HyperLink>
                                </div>
                                <div class="col-md-9">
                                    <asp:HyperLink CssClass="ACont" Target="_blank" NavigateUrl='<%#"http://www.parset.com/C" + Eval("Code") + "_" + Tools.ReplaceSpaceWithUnderline(Eval("Title")) +".html" %>' ToolTip='<%#Eval("Title") %>' runat="server"><%#Eval("Title") %></asp:HyperLink>
                                </div>
                                
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>

            </ul>
                </div>
        </div>

    </div>
    <div class="clear">
    </div>
</div>
