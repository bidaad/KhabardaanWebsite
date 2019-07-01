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
using Khabardaan.Code.DAL;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                BOLNews NewsBOL = new BOLNews();
                //rptHeadlines.DataSource = NewsBOL.GetHeadlines(5);
                //rptHeadlines.DataBind();

                WorldNews.ShowNewsByCatCode(8, 5);
                BusinessNews.ShowNewsByCatCode(2, 5);
                SportsNews.ShowNewsByCatCode(4, 5);
                TechnologyNews.ShowNewsByCatCode(5, 5);
                //EntertainmentNews.ShowNewsByCatCode(7, 5);
                HealthNews.ShowNewsByCatCode(9, 5);
                ScienceNews.ShowNewsByCatCode(1, 5);


                Tools.SetLink("lnkCanonical", "https://www.khabardaan.ir/" );

                Tools.SetMeta("keywords", "اخباراجتماعی,اخباراقتصادی,اخبار سياسي,اخبار ورزشی,اخبار علمی,اخبار فرهنگی,اخبار ادب و هنر,اخبار بین‌الملل");
                Tools.SetMeta("description", "خبردان یک موتور جستجوی هوشمند خبری است که اخبار را از منابع خبری معرفی شده جمع آوری و ارائه میکند");
                Tools.SetMeta("twittercard", "خبردان");
                Tools.SetMeta("twittertitle", "خبردان");
                Tools.SetMeta("twitterdescription", "خبردان یک موتور جستجوی هوشمند خبری است که اخبار را از منابع خبری معرفی شده جمع آوری و ارائه میکند");
                Tools.SetMeta("ogtitle", "خبردان");
                Tools.SetMeta("ogurl", "https://www.khabardaan.ir/" );
                Tools.SetMeta("twitterimagesrc", "");
                Tools.SetMeta("ogdescription", "خبردان یک موتور جستجوی هوشمند خبری است که اخبار را از منابع خبری معرفی شده جمع آوری و ارائه میکند");

            }
            catch (Exception err)
            {

                //Response.Write(err.Message);
                BOLErrorLogs ErrorLogsBOL = new BOLErrorLogs();
                ErrorLogsBOL.Insert(err.Message, DateTime.Now, Request.Url.AbsolutePath, "DefaultPage::Load");
            }

        }
    }

    protected int GetRandNum(int Rang)
    {
        Random RandomNumber = new Random();
        double dblRandRowIndex = RandomNumber.NextDouble() * Rang;
        int RandRowIndex = Convert.ToInt32(dblRandRowIndex);
        if (RandRowIndex > 0)
            RandRowIndex--;
        return RandRowIndex;

    }
   

    public string FormatEvent(string str)
    {
        try
        {
            return Tools.ConvertToUnicode(str.Replace("/services/dayhistory/", "").Replace("Default.asp", "").Replace("monthstrrefferer", "m").Replace("daystrrefferer", "d"));
        }
        catch (Exception err)
        {
            return "";
        }
    }
   

    protected void rptHeadlines_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        BOLNews NewsBOL = new BOLNews();
        if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            HyperLink hplRelatedNews = (HyperLink)e.Item.FindControl("hplRelatedNews");
            int NewsCode = Convert.ToInt32(hplRelatedNews.Attributes["Code"]);

            Image imgNews = (Image)e.Item.FindControl("imgNews");
            string PicName = imgNews.Attributes["PicName"];
            if (string.IsNullOrEmpty(PicName))
                imgNews.Visible = false;


            //int RelatedNewsCount = NewsBOL.GetRelatedNewsCount(NewsCode);
            //if (RelatedNewsCount > 0)
            //{
            //    hplRelatedNews.Text = "مشاهده " + Tools.ChangeEnc( NewsBOL.GetRelatedNewsCount(NewsCode).ToString()) + " خبر مرتبط";
            //    hplRelatedNews.NavigateUrl = "~/News/RelatedNews.aspx?Code=" + NewsCode;
            //}
            //else
                hplRelatedNews.Visible = false;


        }
    }
}
