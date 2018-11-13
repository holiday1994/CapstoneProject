﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Program : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pageName = this.Request.Url.Segments.Last();

        if (pageName.Contains("AddLiveProgram.aspx"))
        {
            //btnOnlineProgram.CssClass = "btn btn-default";
            //btnLiveProgram.CssClass = "btn btn-primary";
            btnViewProgram.CssClass = "btn btn-default";
            programHeader.InnerHtml = "<i class=\"fa fa-calendar icons\"></i> New Live Program";

        } else if (pageName.Contains("AddOnlineProgram.aspx"))
        {
            //btnOnlineProgram.CssClass = "btn btn-primary";
            //btnLiveProgram.CssClass = "btn btn-default";
            btnViewProgram.CssClass = "btn btn-default";
            //lblProgramHeader.InnerHtml = "< div class=\"row\"> <div class=\"col - lg - 12 >< h2 class=\"page-header\"><i class=\"fa fa-calendar icons\"></i> Add Online Program</h2> </div> </div>";
            programHeader.InnerHtml = "<i class=\"fa fa-calendar icons\"></i> New Online Program";

        }
        else if (pageName.Contains("ViewProgram.aspx"))
        {
            //btnLiveProgram.CssClass = "btn btn-default";
            //btnOnlineProgram.CssClass = "btn btn-default";
            btnViewProgram.CssClass = "btn btn-primary";
            //lblProgramHeader.InnerHtml = "<div class=\"row\"> <div class=\"col - lg - 12 >< h2 class=\"page-header\"><i class=\"fa fa-calendar icons\"></i> Programs</h2> </div> </div>";
            //btnGroupDrop1.CssClass = "btn btn-default";
            programHeader.InnerHtml = "<i class=\"fa fa-calendar icons\"></i> Programs";

        }
    }

    protected void btnLiveProgram_Click(object sender, EventArgs e)
    {

    }

    protected void btnOvewview_Click(object sender, EventArgs e)
    {
      
    }
}
