<%@ Page Title="" Language="C#" MasterPageFile="~/Root1.master" AutoEventWireup="true" Inherits="Users_CommunityPosts" Codebehind="CommunityPosts.aspx.cs" %>

<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<%@ Register Src="~/UserControls/Banner.ascx" TagName="Banner" TagPrefix="ADS" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="LG" %>
<%@ Register Src="~/UserControls/MessageBox.ascx" TagName="MessageBox" TagPrefix="Msg" %>
<%@ Register Src="~/UserControls/SendMessage.ascx" TagName="SendMessage" TagPrefix="FTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <div class="Col2">
        <div class="Col2Left">
            <div>
                <AKP:MsgBox runat="server" ID="msg" />
            </div>
            <div class="Box1">
                <div class="Box1Header">
                    <asp:Label ID="Label12" runat="server" Text="Communities"></asp:Label></div>
                <div>
                    <div class="lblHeaderContainer">
                        <asp:Label ID="lblCommunityName" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div>
                <fieldset>
                    <legend>
                        <asp:Literal ID="ltrPostHeader" Text="New Post" runat="server"></asp:Literal></legend>
                    <div class="Marginer1">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTitle" CssClass="NewPostTitle" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Post:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" CssClass="NewPostDesc" Columns="60" TextMode="MultiLine"
                                        Rows="20" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="ButtonsCont1">
                        <div style="float: right">
                            <table>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="btnBack" Text="Back" CssClass="button1" runat="server"
                                            OnClick="btnBack_Click"></asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnCancel" Visible="false" Text="Cancel" CssClass="button1" runat="server"
                                            OnClick="btnCancel_Click"></asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnSaveChanges" Text="Save" CssClass="button1" runat="server"
                                            OnClick="btnSaveChanges_Click"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div style="width: 580px;">
                <asp:Repeater runat="server" ID="rptPosts" OnItemCommand="HandleRepeaterCommand">
                    <ItemTemplate>
                        <div class="Padder1">
                            <div>
                                <div>
                                    &nbsp;
                                    <asp:LinkButton ID="hplTitle" CommandName="EditCommunityPost" PostID='<%#DataBinder.Eval(Container.DataItem, "ID") %>'
                                        CssClass="cCommunityPostTitle" NavigateUrl='<%#"http://www.parset.com/Communities/CommunityPosts.aspx?ID=" + DataBinder.Eval(Container.DataItem, "ID") %>'
                                        Text='<%#DataBinder.Eval(Container.DataItem, "Title") %>' runat="server" />&nbsp;
                                </div>
                                <div class="cCol2Cont1">
                                    <div class="cCol2Cont1Left">
                                        &nbsp;
                                        <%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Description"), 180) %>
                                    </div>
                                    <div class="cCol2Cont1Right">
                                        <asp:ImageButton CommandName="DeleteCommunityPost" OnClientClick="return confirm('Are you sure you want to delete this post?');"
                                            ToolTip="Delete This Post" ID="LinkButton1" ImageUrl="~/images/btnDelete1.gif"
                                            runat="server" Text="Delete This Post"></asp:ImageButton><br />
                                        <span class="DateAgo">
                                            <%#Tools.GetPrettyDate((DateTime)DataBinder.Eval(Container.DataItem, "PostDate"))%></span>&nbsp;
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="Line3">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="Col2Right">
            <div>
                <ADS:Banner ID="Banner1" PositionCode="1" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
