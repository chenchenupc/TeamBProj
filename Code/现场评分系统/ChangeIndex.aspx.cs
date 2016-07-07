using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnIN_Click(object sender, EventArgs e)
    {
        string strsql = "insert into 评分项目表(PID,Itemize,PWeight) values('" + txtCreNO.Text + "','" + txtCreInd.Text + "','" + txtCreWeg.Text + "')";
        if (DBOper.execNonQueryBySQLText(strsql) == 1)//调用公共类
        {
            ;
        }
    }
    protected void returnDEgroup_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("DesGroup.aspx");
    }
}