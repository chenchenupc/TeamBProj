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
        String Transport2 = Request.Params.Get("C");
        txtkong.Text = Transport2;

        if (!IsPostBack)
        {
            binddata();
        }
    }
    private void binddata()
    {
        string strSQL = "select * from 分组表";
        DataTable dt = DBOper.execQueryBySQLText(strSQL);
        GVAdmin.DataSource = dt;
        GVAdmin.DataBind();
    }
   
        //string strSQL = "insert into 分组表 (DID,Project) values (1,'ProjeceName1')";
        //if (DBOper.execNonQueryBySQLText(strSQL) == 1)//调用公共类
        //{
        //    ;
        //}
        //ComTool.Redirect("score.aspx?id=");
   
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void butCreat_Click(object sender, EventArgs e)
    {
        //int A,B;
        //string sqljud = "select count (*) AS JUD1 from 用户表 where URID= 1 or URID=2";
        //DataTable DT1 = DBOper.execQueryBySQLText(sqljud);
        //A = int.Parse(DT1.Rows[0]["JUD1"].ToString());

        //string sqljud2 = "select count (*) AS JUD2 from 评分表 ";
        //    DataTable DT2 = DBOper.execQueryBySQLText(sqljud2);
        //    B = int.Parse(DT2.Rows[0]["JUD2"].ToString());                      判断评委是否提交：方案二

        //        if (A == B)
        //        {
                    
                    string strsqlDE = "delete from 传值表";
                    if (DBOper.execNonQueryBySQLText(strsqlDE) == 1)
                    {
                        ;
                    }
                    string strSQL = "insert into 分组表(DID,Project) values('" + txtCreatDID.Text + "','" + txtCreatProject.Text + "')";
                    if (DBOper.execNonQueryBySQLText(strSQL) == 1)//调用公共类
                    {
                        ;
                    }
                    string strsql = "insert into 传值表(TransID,TransProName) values('" + txtCreatDID.Text + "','" + txtCreatProject.Text + "')";
                    if (DBOper.execNonQueryBySQLText(strsql) == 1)//调用公共类
                    {
                        ;
                    }
                //}
                //else
                //{
                //    ComTool.Alert("存在评委未提交当前评分,请提示:");
                //}        
    }
    protected void btnChangeIndex_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("ChangeIndex.aspx");
    }
    protected void btncalculate_Click(object sender, EventArgs e)
    {
        float Num, Num2, WeigTea, WeigStu;
        float SUMScore, Number1, Number2;
        string strCount = "select count(*) AS COUNT1 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 1";
        DataTable DTC = DBOper.execQueryBySQLText(strCount);
        if (DTC.Rows.Count > 0)
        {

            Num = float.Parse(DTC.Rows[0]["COUNT1"].ToString());
            string strSti = "select SUM (Value1+Value2+Value3+Value4) AS SumScore1 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 1";
            DataTable DTT = DBOper.execQueryBySQLText(strSti);
            if (DTT.Rows.Count > 0)
            {
                Number1 = float.Parse(DTT.Rows[0]["SumScore1"].ToString()) / Num;
                txtScoreTeacher.Text = Number1.ToString();
                string strCOUNT = "select count(*) AS COUNT2 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 2";
                DataTable DTCS = DBOper.execQueryBySQLText(strCOUNT);
                if (DTCS.Rows.Count > 0)
                {

                    Num2 = float.Parse(DTCS.Rows[0]["COUNT2"].ToString());
                    string strStiSUM = "select SUM (Value1+Value2+Value3+Value4) AS SumScore2 from 评分表 where ( 评分表.DID = (select 传值表.TransID from 传值表)) and (select 用户表.urid from 用户表 where 用户表.cid = 评分表.cid) = 2";
                    DataTable DTTSUM = DBOper.execQueryBySQLText(strStiSUM);
                    if (DTT.Rows.Count > 0)
                    {
                        Number2 = float.Parse(DTTSUM.Rows[0]["SumScore2"].ToString()) / Num2;
                        txtScoreStudent.Text = Number2.ToString();
                        string sqlweight1 = "select UWeight from 用户权重表 where URID = 1";
                        DataTable DTW1 = DBOper.execQueryBySQLText(sqlweight1);
                        if (DTCS.Rows.Count > 0)
                        {
                            WeigTea = float.Parse(DTW1.Rows[0]["UWeight"].ToString());
                            string sqlweight2 = "select UWeight from 用户权重表 where URID = 2";
                            DataTable DTW2 = DBOper.execQueryBySQLText(sqlweight2);
                            if (DTCS.Rows.Count > 0)
                            {
                                WeigStu = float.Parse(DTW2.Rows[0]["UWeight"].ToString());
                                SUMScore = Number1 * WeigTea + Number2 * WeigStu; //计算总成绩
                                txtSummaryScore.Text = SUMScore.ToString();
                                string sqlsummary = "insert into 汇总表 (DID,SValue,TValue,SUValue) values('" + txtkong.Text + "','" + txtScoreStudent.Text + "','" + txtScoreTeacher.Text + "','" + txtSummaryScore.Text + "')";
                                DataTable DTSum = DBOper.execQueryBySQLText(sqlsummary);
                                if (DTSum.Rows.Count > 0)
                                {
                                    ;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    protected void btnjump_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("CheckSubmit.aspx?B=" + txtCreatDID.Text );
    }
    protected void btnreturn_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("AdminLogin.aspx");
    }
}