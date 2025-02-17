﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khabardaan
{
    public partial class KeywordsFolder : System.Web.UI.Page
    {
        public string strPageNo;
        int PageNo = 1;
        int _pageSize = 200;
        string ConcatUrl;

        protected void Page_Load(object sender, EventArgs e)
        {
            strPageNo = Request["PageNo"];
            try
            {

                PageNo = Convert.ToInt32(strPageNo);
                if (PageNo == 0)
                    PageNo = 1;

                Page.Title = ltrHeader.Text = "فهرست تمام کلیده واژه ها صفحه  " + Tools.ChangeEnc( PageNo);

                BOLKeywords KeywordsBOL = new BOLKeywords();
                rptKeywords.DataSource = KeywordsBOL.GetKeywords(_pageSize, PageNo);
                rptKeywords.DataBind();

                int ResultCount = KeywordsBOL.GetKeywordCount();
                int PageCount = (int)ResultCount / _pageSize;
                if (ResultCount % _pageSize > 0)
                    PageCount++;

                pgrToolbar.PageNo = PageNo;
                pgrToolbar.PageCount = PageCount;
                pgrToolbar.ConcatUrl = ConcatUrl;
                pgrToolbar.PageBind();

            }
            catch
            {

            }
        }
    }
}