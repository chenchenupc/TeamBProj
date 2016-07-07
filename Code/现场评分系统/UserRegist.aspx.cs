using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtCID.Text.Trim() == "" || txtPwd.Text.Trim() == "" || txtPwdAgain.Text.Trim() == "" || txtAge.Text.Trim() == "" || rdlRole.SelectedValue.Trim() == "" || txtUserName.Text.Trim() == "")
        {
            ComTool.Alert("请输入全部注册信息后点击登录！");
        }
        else if (txtPwd.Text.Trim() != txtPwdAgain.Text.Trim())
        {
            ComTool.Alert("您两次输入密码不一致，请重新输入！");
        }
        else
        {
            string strSQL = "insert into 用户表(URID,CID,Name,Pwd) values('" + rdlRole.SelectedValue + "','"  + txtCID.Text + "','" + txtUserName.Text +"','" + txtPwd.Text + "')";
            if (DBOper.execNonQueryBySQLText(strSQL) == 1)//调用公共类
            {
                ComTool.Redirect("Login.aspx");
            }
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
}


