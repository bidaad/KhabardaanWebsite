<%@ Page Language="C#" MasterPageFile="~/WallpaperMP.master" AutoEventWireup="true" Inherits="DownloadWallpaper" Title="" Codebehind="DownloadWallpaper.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="Server">
    <div style="text-align: center;width:100%">
        <div>
            <asp:Image ID="imgPic" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" runat="server" />
        </div>
        <div style="text-align: center">

            <script type="text/javascript"><!--
google_ad_client = "pub-6197927614283991";
/* 468x60, created 12/16/08 */
google_ad_slot = "7018931862";
google_ad_width = 468;
google_ad_height = 60;
//-->
            </script>

            <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
            </script>

        </div>
        <div class="cCarSelectorContainer">
            <table class="ctblCarAndType">
                <tr>
                    <td>
                        <div class="cCarSelector">
                            <div style="height: 45px;">
                            </div>
                            <div>
                                <table cellspacing="5" style="width: 180px;">
                                    <tr>
                                        <td>
                                            Image Width:
                                        </td>
                                        <td>
                                            <%=FileWidth %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Image Height:
                                        </td>
                                        <td>
                                            <%=FileHeight %>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div style="text-align: center">
                                <a href="../CustomWall/<%=FileWidth %>/<%= FilePath%>/<%=FileName %>" target="_blank">
                                    <img src="../images/downloadgreen.gif" style="border-style: none" />
                                </a>
                            </div>
                            <div>
                                Download in Original Size</div>
                        </div>
                    </td>

                    <script type="text/javascript">
                    var ImageWidth = <%=FileWidth %>;
                    var ImageHeight = <%=FileHeight %>;
                    var FilePath = '<%= FilePath%>';
                    var FileName  = '<%=FileName%>'
                    
                    var FinalWidth='<%= FilePath%>';
                    var FinalHeight  = '<%=FileName%>'
                    
                    function Calc(DimType, objTextBox)
                    {
                        if(isNaN(objTextBox.value))
                            return;
                        if(DimType == 'w')
                        {
                            NewWidth = parseInt( objTextBox.value);
                            NewHeight = parseInt( NewWidth * ImageHeight / ImageWidth);
                            document.getElementById('txtnewHeight').value = NewHeight;
                        }
                        if(DimType == 'h')
                        {
                            NewHeight = parseInt( objTextBox.value);
                            NewWidth = parseInt( NewHeight * ImageWidth / ImageHeight);
                            document.getElementById('txtNewWidth').value = NewWidth;
                        }  
                        FinalWidth = NewWidth;
                        FinalHeight = NewHeight;
                          

                          
                        document.getElementById('CustomizeLink').href = "../CustomWall/" + FinalWidth + "/" + FilePath + "/" + FileName;                 
                        
                    }
                    </script>

                    <td>
                        <div class="cCarTypeContainer">
                            <div style="text-align: left; vertical-align: top;">
                                Customize wallpaper size:
                            </div>
                            <div style="height: 180px;">
                                <br />
                                <table cellspacing="5">
                                    <tr>
                                        <td>
                                            New Width:
                                        </td>
                                        <td>
                                            <input type="text" value="<%=FileWidth %>" onkeyup="Calc('w', this)" id="txtNewWidth" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            New Height:
                                        </td>
                                        <td>
                                            <input type="text" value="<%=FileHeight %>" onkeyup="Calc('h', this)" id="txtnewHeight" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div>
                                <a target="_blank" id="CustomizeLink" href="../CustomWall/<%=FileWidth %>/<%= FilePath%>/<%=FileName %>">
                                    <img style="border-style: none" src="../images/download_button.gif" width="300" height="136" />
                                </a>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
