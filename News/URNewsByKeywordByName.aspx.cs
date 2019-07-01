using Khabardaan.Code.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khabardaan.News
{
    public partial class URNewsByKeywordByName : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                string Keyword = Request["Keyword"];
                BOLNews NewsBOL = new BOLNews();

                Keyword = Keyword.Replace("_", " ");
                BOLKeywords KeywordsBOL = new BOLKeywords();
                Keywords CurKeyword = KeywordsBOL.GetDataByKeyword(Keyword);
                if (CurKeyword != null)
                {
                    lblTitle.Text = "خبرهای مرتبط با " + CurKeyword.Name;
                    Page.Title = "خبرهای مرتبط با " + CurKeyword.Name + " - خبردان";

                    Tools.SetLink("lnkCanonical", "https://www.khabardaan.ir/" + "/K/" + Tools.ReplaceSpaceWithUnderline(CurKeyword.Name) + ".html");

                    Tools.SetMeta("keywords", CurKeyword.Name);
                    Tools.SetMeta("description", CurKeyword.Name);
                    Tools.SetMeta("twittercard", CurKeyword.Name);
                    Tools.SetMeta("twittertitle", CurKeyword.Name);
                    Tools.SetMeta("twitterdescription", CurKeyword.Name);
                    Tools.SetMeta("ogtitle", CurKeyword.Name);
                    Tools.SetMeta("ogurl", "https://www.khabardaan.ir/" + "/K/" + Tools.ReplaceSpaceWithUnderline(CurKeyword.Name) + ".html");
                    Tools.SetMeta("twitterimagesrc", "");
                    Tools.SetMeta("ogimage", "");
                    Tools.SetMeta("ogdescription", CurKeyword.Name);


                    NewsList1.ShowNewsByKeywordCode(CurKeyword.Code);

                    dtlOtherKeywords.DataSource = KeywordsBOL.GetKeywordsStartsWith(CurKeyword.Name);
                    dtlOtherKeywords.DataBind();
                }
                else
                {
                    Response.Write("این کلمه از فهرست حذف شده است.");
                }
            }
            catch (Exception err)
            {
                Response.Write("این کلمه از فهرست حذف شده است.");
                //string MailBody = "Page: " + Request.FilePath + " Exception: " + err.Message;
                //Tools tools = new Tools();
                //bool SendResult = tools.SendEmail(MailBody, "پارست ::Error ", "bidaad@gmail.com", "", "", "");
            }
        }
    }
}