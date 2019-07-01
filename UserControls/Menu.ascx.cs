using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class UserControls_Menu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string ShowEngKhabardaan()
    {
        /*
        Tools tools = new Tools();
        if (!tools.IsIranianIP())
        {
            string EngKhabardaanItem = @"<li class=""NewStar""><a target-'_blank' href='http://en.Khabardaan.ir'>اخبار انگلیسی<a></li>";
            return EngKhabardaanItem;
        }
        else
            return "";
         * */
        return "";

    }
}
