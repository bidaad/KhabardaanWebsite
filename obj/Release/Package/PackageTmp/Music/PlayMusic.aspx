<%@ Page Language="C#" MasterPageFile="~/EngPopup.master" AutoEventWireup="true" Inherits="Music_PlayMusic" Title="Untitled Page" Codebehind="PlayMusic.aspx.cs" %>



<%@ Register Src="~/UserControls/Toolbar.ascx" TagName="Toolbar" TagPrefix="Tlb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="Server">
    <AKP:MsgBox ID="msgText" runat="server" />
    <div class="ParsetList">
        <div class="Marginer1">
            <div style="text-align: left;">
                <div class="Box3" style="width: 500px; margin-left: 130px;">
                    <div class="MainHeader">
                    </div>
                    <div style="text-align: left; width: 100%;">
                        <asp:Label ID="lblHeader" Style="float: left; padding-left: 15px;" CssClass="Header1"
                            runat="server"></asp:Label>
                    </div>
                    <div class="Clear">
                    </div>
                    <div style="text-align: center">
                        <br />
                        <br />
                        <br />

                        <script language="JavaScript" src="../Scripts/audio-player.js"></script>

                        <asp:Repeater ID="rptTracks" EnableViewState="false" runat="server">
                            <ItemTemplate>
                                <div class="TrackObj">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" ToolTip='<%#DataBinder.Eval(Container.DataItem, "Title") %>'
                                                    Text='<%#Tools.ShowBriefText(DataBinder.Eval(Container.DataItem, "Title"),30)%>'></asp:Label>
                                            </td>
                                            <td>
                                                <object type="application/x-shockwave-flash" data="../SWF/player.swf" id="audioplayer1"
                                                    height="24" width="290">
                                                    <param name="movie" value="../SWF/player.swf">
                                                    <param id="Param1" name="FlashVars" value="playerID=1&amp;soundFile=Resources/<%#DataBinder.Eval(Container.DataItem, "Code")%>.gbn">
                                                    <param name="quality" value="high">
                                                    <param name="menu" value="false">
                                                    <param name="wmode" value="transparent">
                                                </object>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="Box3Toolbar">
                        <Tlb:Toolbar ID="tlb1" runat="server" />
                    </div>
                </div>
                <div class="Clear">
                </div>
                <div id="ads">

                    <script type="text/javascript"><!--
google_ad_client = "pub-6197927614283991";
/* 728x90, created 6/1/09 */
google_ad_slot = "4091155194";
google_ad_width = 728;
google_ad_height = 90;
//-->
                    </script>

                    <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                    </script>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
