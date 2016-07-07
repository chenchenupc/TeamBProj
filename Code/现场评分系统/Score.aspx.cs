using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Collections;
using System.Data.SqlTypes;

public partial class Score : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            //if (txtgroup.Text == "0")         
            //{
            //    submit1.Enabled = false;
            //    submit2.Enabled = true;
            //} 

            //string strID="";
            //try
            //{
            //    strID = Request.QueryString["id"].ToString();
            //    txtgroup.Text = strID;
            //}
            //catch
            //{

            //}
            String Transport = Request.Params.Get("A");
            txtCNO.Text = Transport;                    //获取参数传值
            string strSQL = "select TransID from 传值表";
            DataTable DDT = DBOper.execQueryBySQLText(strSQL);
            if (DDT.Rows.Count > 0)
            {
                txtgroup.Text = DDT.Rows[0]["TransID"].ToString();
            }
            submit2.Enabled = false;
            if (txtgroup.Text == "0")
            {
                btnlook.Enabled = false;
                btnScoreAgain.Enabled = false;
                submit1.Enabled = false;
                submit2.Enabled = true;
            }
            string strsql = "select TransProName from 传值表";
            DataTable DTT = DBOper.execQueryBySQLText(strsql);
            if (DTT.Rows.Count > 0)
            {
                txtPjName.Text = DTT.Rows[0]["TransProName"].ToString();
            }
        }

    }

    protected void submit1_Click(object sender, EventArgs e)
    {
        
        //Convert.ToInt32(txtgroup.Text.Trim() >= 20);字符串转换为整型
        //int.Parse(txtgroup.Text.Trim());
        if (/*txtgroup.Text.Trim() == "" || txtPjName.Text.Trim() == "" ||*/ txtitem1score.Text.Trim() == "" || txtitem2score.Text.Trim() == "" || txtitem3score.Text.Trim() == "" || txtitem4score.Text.Trim() == "")
        {
            ComTool.Alert("请输入全部信息！");
        }
        else
        {
            string strSQL = "insert into 评分表(CID,DID,ProName,Value1,Value2,Value3,Value4) values('" + txtCNO.Text + "','" + txtgroup.Text + "','" + txtPjName.Text + "','" + txtitem1score.Text + "','" + txtitem2score.Text + "','" + txtitem3score.Text + "','" + txtitem4score.Text + "')";            
            if (DBOper.execNonQueryBySQLText(strSQL) == 1)
            {
                ComTool.Redirect("Score.aspx?A=" + txtCNO.Text);
            }  
            
            //float Num, Num2, WeigTea, WeigStu;
            //float SUMScore, Number1, Number2;
            
            //{
                
            //    string strCount = "select count(*) AS COUNT1 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 1";
            //    DataTable DTC = DBOper.execQueryBySQLText(strCount);
            //    if (DTC.Rows.Count > 0)
            //    {

            //        Num = float.Parse(DTC.Rows[0]["COUNT1"].ToString());

            //        string strSti = "select SUM (Value1+Value2+Value3+Value4) AS SumScore1 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 1";
            //        DataTable DTT = DBOper.execQueryBySQLText(strSti);
            //        if (DTT.Rows.Count > 0)
            //        {
            //            Number1 = float.Parse(DTT.Rows[0]["SumScore1"].ToString()) / Num;
            //            txtScoreTeacher.Text = Number1.ToString();

                        //注释
                        // ComTool.Alert( "第" + txtgroup.Text + "组的教师评委评分为:" + txtScore.Text );
                        // ComTool.Redirect("Score.aspx?A=" + txtCNO.Text);

                        //string strsqlDE = "delete from 传值表";
                        //if (DBOper.execNonQueryBySQLText(strsqlDE) == 1)
                        //{
                        //    ComTool.Redirect("Score.aspx");
                        //}

                        //教师评委与学生评委分界:释结束

                //        string strCOUNT = "select count(*) AS COUNT2 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 2";
                //        DataTable DTCS = DBOper.execQueryBySQLText(strCOUNT);
                //        if (DTCS.Rows.Count > 0)
                //        {

                //            Num2 = float.Parse(DTCS.Rows[0]["COUNT2"].ToString());
                //            string strStiSUM = "select SUM (Value1+Value2+Value3+Value4) AS SumScore2 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 2";
                //            DataTable DTTSUM = DBOper.execQueryBySQLText(strStiSUM);
                //            if (DTT.Rows.Count > 0)
                //            {
                //                Number2 = float.Parse(DTTSUM.Rows[0]["SumScore2"].ToString()) / Num2;
                //                txtScoreStudent.Text = Number2.ToString();


                //                ComTool.Alert("第" + txtgroup.Text + "组的教师评委评分为:" + txtScoreTeacher.Text + "第" + txtgroup.Text + "组的学生评委评分为:" + txtScoreStudent.Text);

                //                string sqlweight1 = "select UWeight from 用户权重表 where URID = 1";
                //                DataTable DTW1 = DBOper.execQueryBySQLText(sqlweight1);
                //                if (DTCS.Rows.Count > 0)
                //                {
                //                    WeigTea = float.Parse(DTW1.Rows[0]["UWeight"].ToString());


                //                    string sqlweight2 = "select UWeight from 用户权重表 where URID = 2";
                //                    DataTable DTW2 = DBOper.execQueryBySQLText(sqlweight2);
                //                    if (DTCS.Rows.Count > 0)
                //                    {
                //                        WeigStu = float.Parse(DTW2.Rows[0]["UWeight"].ToString());



                //                        SUMScore = Number1 * WeigTea + Number2 * WeigStu; //计算总成绩
                //                        txtSummaryScore.Text = SUMScore.ToString();
                //                        string sqlsummary = "insert into 汇总表 (DID,SValue,TValue,SUValue) values ('" + txtgroup.Text + "','" + txtScoreStudent.Text + "','" + txtScoreTeacher.Text + "','" + txtSummaryScore.Text + "')";
                //                        if (DBOper.execNonQueryBySQLText(sqlsummary) == 1)
                //                        {
                //                            ;
                //                        }
                //                    }
                //                }
                //            }
                //        }
                //    }
                //}
        }          
    }
    protected void submit2_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("Summary.aspx");
    }


    protected void txtgroup_TextChanged(object sender, EventArgs e)
    {       
         
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void btnlook_Click(object sender, EventArgs e)
    {
        string sqllookupT = "select TValue from 汇总表";
        DataTable DTC = DBOper.execQueryBySQLText(sqllookupT);
        if (DTC.Rows.Count > 0)
        {
            txtteacher.Text = DTC.Rows[0]["TValue"].ToString();
        }
        string sqllookupS = "select SValue from 汇总表";
        DataTable DSUC = DBOper.execQueryBySQLText(sqllookupS);
        if (DSUC.Rows.Count > 0)
        {
            txtstudent.Text = DSUC.Rows[0]["SValue"].ToString();
        }
        ComTool.Alert("第" + txtgroup.Text + "组的教师评委评分为:" + txtteacher.Text + "第" + txtgroup.Text + "组的学生评委评分为:" + txtstudent.Text);
    }
    protected void btnScoreAgain_Click(object sender, EventArgs e)
    {
        string STRC="";
        string strSQL = "select TransID from 传值表";
        DataTable DDT = DBOper.execQueryBySQLText(strSQL);
        if (DDT.Rows.Count > 0)
        {

            STRC = DDT.Rows[0]["TransID"].ToString();
        }
        if (STRC == txtgroup.Text)
            ComTool.Alert("尚未创建新组，请稍后！");
        else
        {
            ComTool.Redirect("Score.aspx?A=" + txtCNO.Text);
        }
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("Login.aspx");
    }
}
  