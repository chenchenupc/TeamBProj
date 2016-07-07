using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String Transport2 = Request.Params.Get("B");
        txtGROUP.Text = Transport2;   
        string sqljud = "select count (*) AS JUD1 from 用户表 where URID= 1 or URID=2";
        DataTable DT1 = DBOper.execQueryBySQLText(sqljud);
        txtCIDcoun.Text = DT1.Rows[0]["JUD1"].ToString();

        string sqljud2 = "select count (*) AS JUD2 from 评分表 where 评分表.DID =" + Transport2;
        DataTable DT2 = DBOper.execQueryBySQLText(sqljud2);
        txtsubcoun.Text= DT2.Rows[0]["JUD2"].ToString();
    }
    protected void btndegroup_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("DesGroup.aspx?C=" + txtGROUP.Text);
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("CheckSubmit.aspx?B=" + txtGROUP.Text);
    }
}