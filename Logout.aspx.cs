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

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cookies["Khabardaan"].Expires = DateTime.Now;
        Response.Cookies["Khabardaan"]["KhabardaanUser"] = "";
        Response.Cookies["Khabardaan"].Expires = DateTime.Now;
        Response.Cookies["Khabardaan"]["KhabardaanPass"] = "";


        Session.Abandon();
        Response.Redirect("~/");

    }
}
