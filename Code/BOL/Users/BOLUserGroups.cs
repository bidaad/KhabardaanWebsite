﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.SessionState;
using Khabardaan.Code.DAL;
using System.Collections.Generic;
using System.Reflection;
using System.Collections;

public class BOLUserGroups : BaseBOLUserGroups, IBaseBOL<UserGroups>
{
    public BOLUserGroups(params int[] MCodes): base(MCodes)
    {

    }
    public IList CheckBusinessRules()
    {
        var messages = new List<string>();
        //Business rules here

        if (false)
            messages.Add("");

        return messages;
    }

}
