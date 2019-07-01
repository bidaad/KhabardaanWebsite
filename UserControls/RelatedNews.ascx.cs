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

namespace Khabardaan.Web.UI.UserControls
{
    public partial class RelatedNews : System.Web.UI.UserControl
    {
        public string _keyword = null;

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
                BOLNews NewsBOL = new BOLNews();
                rptNews.DataSource = NewsBOL.GetRelatedNews(NewsCode, 5, 1);
                rptNews.DataBind();

                //int RelatedCount = NewsBOL.GetRelatedNewsCount(NewsCode);
                //if (RelatedCount == 0)
                //    this.Visible = false;
                //else if (RelatedCount > 3)
                //{
                    MoreLink.Text = "تمام اخبار مرتبط... ";
                    MoreLink.NavigateUrl = "~/News/RelatedNews.aspx?Code=" + NewsCode;
                //}
                //else
                //    MoreLink.Visible = false;
            }
            catch (Exception exp)
            {
                BOLErrorLogs ErrorLogsBOL = new BOLErrorLogs();
                ErrorLogsBOL.Insert(exp.Message, DateTime.Now, Request.Url.AbsolutePath, "UCRelatedNews");
            }


        }

        public string ShowText(Object obj)
        {
            int SelectLen = 180;
            try
            {

                if (obj != null)
                {
                    string str = obj.ToString();
                    try
                    {
                        ReqUtils Utils = new ReqUtils();
                        str = Utils.RemoveTags(str);
                        if (!string.IsNullOrEmpty(_keyword))
                        {
                            string FirstKeyword = _keyword;
                            if (_keyword.IndexOf(" ") != -1)
                            {
                                string[] KeywordArray = _keyword.Split(' ');
                                FirstKeyword = KeywordArray[0];
                            }
                            int FirstKeywordIndex = str.IndexOf(FirstKeyword);
                            if (FirstKeywordIndex > SelectLen)
                            {
                                int StartIndex = FirstKeywordIndex - 150;
                                int StopIndex = FirstKeywordIndex + 150;
                                if (StopIndex > str.Length)
                                    StopIndex = str.Length;
                                int CutLen = StopIndex - StartIndex;
                                str = "..." + str.Substring(StartIndex, CutLen) + "...";
                            }
                        }
                    }
                    catch
                    {
                    }

                    if (str.Length > SelectLen)
                        str = str.Substring(0, SelectLen) + "...";

                    if (!string.IsNullOrEmpty(_keyword))
                    {
                        _keyword = _keyword.Trim();
                        string[] KeywordArray = _keyword.Split(' ');
                        for (int i = 0; i < KeywordArray.Length; i++)
                        {
                            if (KeywordArray[i].Length > 1)
                                str = str.Replace(KeywordArray[i], "<span class=keyworditem>" + KeywordArray[i] + "</span>");
                        }
                        return str;
                    }
                    else
                        return str;
                }
                else
                    return "";
            }
            catch
            {
                return obj.ToString();
            }

        }

        protected void rptNewsList_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            BOLNews NewsBOL = new BOLNews();
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image imgNews = (Image)e.Item.FindControl("imgNews");
                string PicName = imgNews.Attributes["PicName"];
                if (string.IsNullOrEmpty(PicName))
                    imgNews.Visible = false;
            }
        }
    }
}