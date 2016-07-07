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
    protected void ADSubmit_Click(object sender, EventArgs e)
    {
        if (txtADRID.Text.Trim() == "" || txtADRPwd.Text.Trim() == "" || txtADRPwdAgain.Text.Trim() == "")
        {
            ComTool.Alert("请输入全部注册信息后点击登录！");
        }
        else if (txtADRPwd.Text.Trim() != txtADRPwdAgain.Text.Trim())
        {
            ComTool.Alert("您两次输入密码不一致，请重新输入！");
        }
        else
        {
            string strSQL = "insert into 管理员表(AdminID,AdminPwd) values('" + txtADRID.Text + "','" + txtADRPwd.Text + "')";
            if (DBOper.execNonQueryBySQLText(strSQL) == 1)//调用公共类
            {
                ComTool.Redirect("AdminLogin.aspx");
            }
        }
       
    }
}