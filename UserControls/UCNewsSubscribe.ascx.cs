using Khabardaan.Code.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khabardaan.UserControls
{
    public partial class UCNewsSubscribe : System.Web.UI.UserControl
    {
        protected void btnSendToFriend_Click(object sender, EventArgs e)
        {

            //string Referer = Page.Request.ServerVariables["http_referer"];
            //if (!Referer.StartsWith("https://www.khabardaan.ir/") && !Referer.StartsWith("http://Khabardaan.ir/"))
            //    return;


            //string ToEmail = txtEmail.Text;
            //if (ToEmail.Trim() == "")
            //    return;

            //BOLNews NewsBOL = new BOLNews();
            //string SenderIP = Request.UserHostAddress;
            //string ID = NewsBOL.InsertEmail(ToEmail, SenderIP);

            //UtilDataContext dcUtil = new UtilDataContext();

            //EmailTemplates CurTemplate = dcUtil.EmailTemplates.SingleOrDefault(p => p.Title.Equals("NewsActivation"));
            //if (CurTemplate != null)
            //{
            //    string MsgBody = CurTemplate.Template;

            //    DateTimeMethods dtm = new DateTimeMethods();
            //    MsgBody = CurTemplate.Template;
            //    MsgBody = MsgBody.Replace("[ActivationLink]", "https://www.khabardaan.ir/News/Activate.aspx?Act=1&ID="+ ID);

            //    Tools tools = new Tools();
            //    bool SendResult = tools.SendEmail(MsgBody, "عضویت در خبرنامه پارست ", "noreply@Khabardaan.ir", ToEmail, "", "");
            //    if (SendResult)
            //    {
            //        pnlSendInvitation.Visible = false;
            //        lblInvSent.Visible = true;
            //    }
            //}
        }
    }
}