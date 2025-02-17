﻿using System;
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


public partial class UserADSs_EditUserADSs : EditForm<UserADSs>
{
    private string BaseID = "UserADSs";
    IBaseBOL<UserADSs> BaseBOL;



    protected void Page_Load(object sender, EventArgs e)
    {
        #region Tab Pages
        //if (!NewMode)
        //     ShowDetails();
        //else
        //{
        //     RadMultiPage1.SelectedIndex = 0;
        //     tsUserADSs.Tabs[0].Selected = true;
        //}
        #endregion
        BOLClass = new BOLUserADSs();
        lblSysName.Text = BOLClass.PageLable;

        if ((Code == null) && (!NewMode)) return;
        if (!Page.IsPostBack)
        {
            //if (!NewMode) ShowDetails();


            #region Fill Combo

            #endregion
            if (!NewMode)
            {
                LoadData((int)Code);
            }
        }


    }

    protected void DoSave(object sender, EventArgs e)
    {
        try
        {
            int ReturnCode = SaveControls("~/Main/Default.aspx?BaseID=" + BaseID);
            if (NewMode && ReturnCode != -1)
            {
                NewMode = false;
                Code = ReturnCode;
                ShowDetails();
            }
        }
        catch
        {
        }
    }
    private void ShowDetails()
    {
        //string Tab1Click = "BrowseObj1.ShowDetail('CenterBoss', '" + Code
        //      + "', true,'BrowseObj1');BrowseObj2.ShowDetail('CenterResearchSectionManagers', '" + Code
        //      + "', true,'BrowseObj2');BrowseObj3.ShowDetail('CenterExecutiveManagers', '" + Code
        //      + "', true,'BrowseObj3')";


        //Tab1.Attributes.Add("onclick", Tab1Click);
        //Tools.SetClientScript(this, "ActiveTab1", Tab1Click);

        //#region HanldeSelectedTab
        //if (Request["SelectedTab"] != null)
        //{
        //    RadMultiPage1.SelectedIndex = Int32.Parse(Request["SelectedTab"]);
        //    SelectedTabIndex = Int32.Parse(Request["SelectedTab"]);
        //    switch (Int32.Parse(Request["SelectedTab"]))
        //    {
        //        case 0:
        //            Tools.SetClientScript(Page, "ClickTab", Tab1Click);
        //            RadMultiPage1.SelectedIndex = 0;
        //            tsUserADSs.SelectedIndex = 0;
        //            break;
        //        default:
        //            break;
        //    }
        //    tsUserADSs.Tabs[Int32.Parse(Request["SelectedTab"])].Selected = true;
        //}
        //else
        //{
        //    RadMultiPage1.SelectedIndex = 0;
        //    tsUserADSs.Tabs[0].Selected = true;
        // }
        //#endregion
    }
}
