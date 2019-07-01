using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Khabardaan.Code.DAL;
using System.Text;
using System.Collections.Generic;
using System.Linq;

public partial class UserControls_Login : System.Web.UI.UserControl
{
    protected LoginModes _mode;
    public LoginModes Mode
    {
        set
        {
            _mode = value;
        }
    }


    BOLUsers BOLUsers = new BOLUsers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Page.Form.DefaultFocus = txtUsername.UniqueID;
            Page.Form.DefaultButton = imgBtnLogin.UniqueID;

            if (Request.UrlReferrer != null)
            {
                hfPrePage.Value = Request.UrlReferrer.ToString();
            }

            if (Request.Cookies["Khabardaan"] != null)
            {
                string Username = Request.Cookies["Khabardaan"]["KhabardaanUser"];
                if (Username != "")
                {
                    txtUsername.Text = Username;
                    chkRemInfo.Checked = true;
                }
                else
                    chkRemInfo.Checked = false;
            }
            if (Request.Cookies["Khabardaan"] != null)
            {
                string Password = Request.Cookies["Khabardaan"]["KhabardaanPass"];
                if (Password != "")
                {
                    txtPassword.Attributes.Add("value", Request.Cookies["Khabardaan"]["KhabardaanPass"]);
                    chkRemInfo.Checked = true;
                }
                else
                    chkRemInfo.Checked = false;
            }
        }

    }

    public static bool IsUserSessionStillValid()
    {
        //bool Result = false;
        //if (HttpContext.Current.Session["New"] != null ||
        //   HttpContext.Current.Session["Edit"] != null ||
        //   HttpContext.Current.Session["Delete"] != null ||
        //   HttpContext.Current.Session["View"] != null ||
        //   HttpContext.Current.Session["Export"] != null)
        //    Result = true;
        //return Result;
        return (HttpContext.Current.Session["UserCode"] != null);
    }
    public void LoginUser(Users User)
    {
        Session["Username"] = User.Email;
        Session["FirstName"] = User.FirstName;
        Session["LastName"] = User.LastName;
        Session["FullName"] = User.FirstName + " " + User.LastName;
        Session["UserCode"] = User.Code;
        Session["UserID"] = User.ID;
        Session["UserFullName"] = User.FirstName + " " + User.LastName;

        if(User.HCGenderCode == 1)
            Session["GenderName"] = "آقای ";
        else
            Session["GenderName"] = "خانم ";

        if (_mode == LoginModes.AdminUser)
            Response.Redirect("~/Admin/Main/Default.aspx");
        else
        {
            if(hfPrePage.Value != "" && Request["ForceLogin"] != null)
                Response.Redirect(hfPrePage.Value);
            else
                Response.Redirect("~/Users/Home.aspx");
        }

    }

    protected void imgBtnLogin_Click(object sender, EventArgs e)
    {
        string DBPassword;
        bool SuccessLogin = false;
        string Username = txtUsername.Text;
        string Password = txtPassword.Text;

        //UsersBR bolUsers = new UsersBR();


        if (chkRemInfo.Checked)
        {
            Response.Cookies["Khabardaan"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Khabardaan"]["KhabardaanUser"] = txtUsername.Text;

            Response.Cookies["Khabardaan"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Khabardaan"]["KhabardaanPass"] = txtPassword.Text;
        }
        else
        {
            Response.Cookies["Khabardaan"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Khabardaan"]["KhabardaanUser"] = "";

            Response.Cookies["Khabardaan"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Khabardaan"]["KhabardaanPass"] = "";
        }

        Users ValidUser = BOLUsers.GetDataByUsername(Username);

        if (ValidUser != null)
        {

            string HashedPass = Tools.GetHashString(txtPassword.Text);
            DBPassword = ValidUser.Password;
            if (HashedPass == DBPassword && (bool)ValidUser.Active)
            {
                BOLUsers.UpdateLastLoginTime(ValidUser.Code);
                SuccessLogin = true;
                LoginUser(ValidUser);
            }
            else
                SuccessLogin = false;
        }
        else
            SuccessLogin = false;

        if (!SuccessLogin)
            msgBox.Text = Messages.ShowMessage(MessagesEnum.InvalidLogin);

    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Reg/?RefPage=" + ViewState["Referer"]);

    }
    public enum LoginModes
    {
        RegularUser,
        AdminUser
    }
}

