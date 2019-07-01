using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khabardaan.UserControls
{
    public partial class News3Col : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LoadPicNews()
        {
            BOLNews NewsBOL = new BOLNews();
            IQueryable<Khabardaan.Code.DAL.vNews> NewList = NewsBOL.LoadPicNews(20);
            rptNews61.DataSource = NewList.Skip(0).Take(6);
            rptNews61.DataBind();

            string ReturnCodeList = "";
            foreach (var item in NewList)
            {
                if (ReturnCodeList == "")
                    ReturnCodeList = item.Code.ToString();
                else
                    ReturnCodeList += "," + item.Code.ToString();
            }


            rptNews41.DataSource = NewList.Skip(6).Take(4);
            rptNews41.DataBind();

            rptNews62.DataSource = NewList.Skip(10).Take(6);
            rptNews62.DataBind();

            rptNews42.DataSource = NewList.Skip(16).Take(4);
            rptNews42.DataBind();

        }
    }
}