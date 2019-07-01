using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khabardaan.Web.UI.UserControls
{
    public partial class KeywordList : System.Web.UI.UserControl
    {
        protected string _newsCode;
        public string NewsCode
        {
            set
            {
                ViewState["_newsCode"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int NewsCode = Convert.ToInt32(ViewState["_newsCode"]);
                BOLNewsKeywords NewsKeywordsBOL = new BOLNewsKeywords(NewsCode);
                //rptKeywords.DataSource = NewsKeywordsBOL.GetTopKeywords(NewsCode, 3);
                //rptKeywords.DataBind();

                    rptAllKeywords.DataSource = NewsKeywordsBOL.GetTopKeywords(NewsCode, null);
                    rptAllKeywords.DataBind();
            }
            catch (Exception exp)
            {
                BOLErrorLogs ErrorLogsBOL = new BOLErrorLogs();
                ErrorLogsBOL.Insert(exp.Message, DateTime.Now, Request.Url.AbsolutePath, "UCKeywordList");
            }


        }
    }
}