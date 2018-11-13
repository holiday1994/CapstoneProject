﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// 
///
/// 

public partial class ViewProgram : System.Web.UI.Page
{
 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ddlViewOptions.SelectedIndex = 0;
            MultiView1.ActiveViewIndex = 0;
        }

       
    }

    protected void btnClearAll_Click(object sender, EventArgs e)
    {

    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }

    protected void btnExcelExport_Click(object sender, EventArgs e)
    {

        GridView gv = new GridView();
        string filename = "";

        switch (ddlViewOptions.SelectedValue)
        {
            case "0":
                gv = LiveGridView;
                filename = "Programs";
                break;
            case "1":
                gv = OnlineGridView;
                filename = "MonthlyPrograms";
                break;
            case "2":
                gv = MonthlyGridView;
                filename = "LivePrograms";
                break;           

        }

        Response.ClearContent();

        Response.AppendHeader("content-disposition", "attachment;filename=" + filename + DateTime.Now.ToShortDateString() + ".xls");
        Response.ContentType = "application/excel";



        System.IO.StringWriter stringWrite = new System.IO.StringWriter();

        System.Web.UI.HtmlTextWriter htmlWrite =
        new HtmlTextWriter(stringWrite);

        gv.RenderControl(htmlWrite);

        Response.Write(stringWrite.ToString());

        Response.End();
    }


    protected void ddlViewOptions_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = Int32.Parse(ddlViewOptions.SelectedValue);

        if (ddlViewOptions.SelectedIndex == 1) {
            buttonsDiv.Attributes["class"] = "btn-group btn-group-justified col-lg-offset-9";
            btnInvoice.Visible = true;
        }
        else
        {
            btnInvoice.Visible = false;
            buttonsDiv.Attributes["class"] = "btn-group btn-group-justified col-lg-offset-10";

        }
    }

    protected void btnSaveInvoice_Click(object sender, EventArgs e)
    {
        int counter = 0;
        foreach (GridViewRow row in LiveGridView.Rows)
        {
            // Access the CheckBox
            CheckBox cb = (CheckBox)row.FindControl("SelectCheckBoxr");
            if (cb != null && cb.Checked)
            {
                // Associate this program with the entered information here


                // Counter that if 0 at the end displays a message "Please select at lease one program"
                counter += 1;
            }
            else
            {

            }
            
        }
        if (counter == 0)
        {
            // Display message here "Please Select At Least One Program"

        }
    }

    protected void btnClearAllModal_Click(object sender, EventArgs e)
    {
        txtInvoiceCode.Text = "";
        txtTotalCost.Text = "";
        ddlInvoicePayment.SelectedIndex = 0;
    }

    protected void btnInvoice_Click(object sender, EventArgs e)
    {
        
    }
}