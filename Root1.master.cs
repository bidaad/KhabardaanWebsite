using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using Khabardaan.Code.DAL;
using System.Text.RegularExpressions;

public partial class Root1 : System.Web.UI.MasterPage
{
    public string strKeyword = "";

    int Counter = -1;


    protected void Page_Load(object sender, EventArgs e)
    {
        BOLLogs LogsBOL = new BOLLogs();
        LogsBOL.LogRequest();

        string CurUrl = Request.Url.ToString();

        CurUrl = CurUrl.Replace("http://", "");
        //if(CurUrl.IndexOf("//") != -1)
        //{
        //    Response.Redirect("http://" + CurUrl.Replace("//", "/"));
        //}


        if (!Page.IsPostBack)
        {
            string UserCode = "";
            try
            {
                BOLKeywords NewsKeywords = new BOLKeywords();
                rptMostImportantKeywords.DataSource = NewsKeywords.GetMostImportantKeywords(10);
                rptMostImportantKeywords.DataBind();

            }
            catch
            {

            }

            try
            {
                BOLNews NewsBOL = new BOLNews();
                rptImages.DataSource = NewsBOL.GetPicNews(null, null, 40);
                rptImages.DataBind();
            }
            catch
            {

            }

        }
        #region Load Scripts
        //HtmlGenericControl script0 = new HtmlGenericControl("script");
        //script0.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/jquery-1.11.3.min.js"));
        //script0.Attributes.Add("type", "text/javascript");
        //script0.Attributes.Add("", "");
        //Page.Header.Controls.Add(script0);

        //HtmlGenericControl scriptBootStrap = new HtmlGenericControl("script");
        //scriptBootStrap.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/bootstrap.min.js"));
        //scriptBootStrap.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(scriptBootStrap);

        //HtmlGenericControl script23 = new HtmlGenericControl("script");
        //script23.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/jquery.cycle.all.js"));
        //script23.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script23);

        //HtmlGenericControl script1 = new HtmlGenericControl("script");
        //script1.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/jquery-ui.js"));
        //script1.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script1);

        //HtmlGenericControl script10 = new HtmlGenericControl("script");
        //script10.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/jquery.easing.min.1.3.js"));
        //script10.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script10);

        //HtmlGenericControl script11 = new HtmlGenericControl("script");
        //script11.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/jquery.jcontent.0.8.min.js"));
        //script11.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script11);

        //HtmlGenericControl script12 = new HtmlGenericControl("script");
        //script12.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/hoverIntent.js"));
        //script12.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script12);

        //HtmlGenericControl script = new HtmlGenericControl("script");
        //script.Attributes.Add("src", this.ResolveClientUrl("~/Scripts/mainv1.2.js"));
        //script.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script);

        //HtmlGenericControl script2 = new HtmlGenericControl("script");
        //script2.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/farsi.js"));
        //script2.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script2);

        //if (fBrowserIsMobile())
        //{
        //    HtmlGenericControl scriptPopup = new HtmlGenericControl("script");
        //    scriptPopup.Attributes.Add("src", this.ResolveClientUrl("https://static.Khabardaan.ir/Scripts/Popupv8.js"));
        //    scriptPopup.Attributes.Add("type", "text/javascript");
        //    Page.Header.Controls.Add(scriptPopup);
        //}


        //HtmlGenericControl script24 = new HtmlGenericControl("script");
        //script24.Attributes.Add("src", this.ResolveClientUrl("~/Scripts/jquery.accordion.2.0.min.js"));
        //script24.Attributes.Add("type", "text/javascript");
        //Page.Header.Controls.Add(script24);
        #endregion

        #region DateTime
        DateTimeMethods dtm = new DateTimeMethods();
        DateTime IranDate = DateTime.Now;
        lblPersianDateTime.Text = Tools.ChangeEnc(dtm.GetPersianLongDate(DateTime.Now));

        #endregion

    }



 

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtKeyword.Text != "")
            Response.Redirect("~/News/SearchResults.aspx?Keyword=" + txtKeyword.Text);
    }
}
