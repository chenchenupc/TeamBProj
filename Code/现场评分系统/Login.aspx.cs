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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text.Trim() == "" || txtPwd.Text.Trim() == "")
            {
                ComTool.Alert("请输入学/工号或密码！");
            }
            else 
            {
                bool blRet=false;
                string strSQL = "select * from 用户表 where CID='" + txtUserName.Text + "'"
                    + " and pwd='" + txtPwd.Text + "'";

                DataTable 用户表 = DBOper.execQueryBySQLText(strSQL);
                try
                {
                    if (用户表.Rows.Count > 0)
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
                    ComTool.Redirect("Score.aspx?A=" + txtUserName.Text);//明文参数传值，不安全。
                    

                }                
                else
                {
                    ComTool.Alert("学/工号或密码错误！");
                }
                    
            }        
    }
    protected void btnRegist_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("UserRegist.aspx");
    } 
    protected void txtPwd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Admin_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("AdminLogin.aspx");
    }
}