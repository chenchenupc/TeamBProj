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

    }
    protected void btnLog_Click(object sender, EventArgs e)
    {
        if (txtADRID.Text.Trim() == "" || txtADRPwd.Text.Trim() == "")
        {
            ComTool.Alert("请输账号或密码！");
        }
        else
        {
            bool blRet = false;
            string strSQL = "select * from 管理员表 where AdminID='" + txtADRID.Text + "'"
                + " and AdminPwd='" + txtADRPwd.Text + "'";

            DataTable 管理员表 = DBOper.execQueryBySQLText(strSQL);
            try
            {
                if (管理员表.Rows.Count > 0)
                    blRet = true;
                else
                    blRet = false;
            }
            catch
            {
                blRet = false;
            }
            if (blRet)
            {
                    ComTool.Redirect("DesGroup.aspx");
            }
            else
            {
                ComTool.Alert("学/工号或密码错误！");
            }

        }        
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("AdminRegist.aspx");
    }
}