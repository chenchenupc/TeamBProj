using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
///Users 的摘要说明
/// </summary>
public class Users
{
    public Users()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public string userid;
    public string username;
    public string userpwd;

    public static bool ifLogin(Users obj)
    {
        bool blRet = true;
        string strSQL = "select * from tbusers where username='" + obj.username + "' "
            + " and userpwd='" + obj.userpwd + "'";
        DataTable dt = DBOper.execQueryBySQLText(strSQL);
        try
        {
            if (dt.Rows.Count > 0)
            {
                blRet = true;
            }
            else
            {
                blRet = false;
            }
        }
        catch
        {
            blRet = false;
        }
        return blRet;
    }

    public static DataTable selectDataTable(Users obj)
    {
        string strSQL = "select * from tbusers where 1=1 ";
        if (obj.username != "" && obj.username != null)
            strSQL = strSQL + "and username='" + obj.username + "'";

        DataTable dt = DBOper.execQueryBySQLText(strSQL);

        return dt;
    }

    public static int insertRecord(Users obj)
    {
        string strSQL = "insert into tbusers(userid,username,userpwd) values('" + obj.userid + "','" + obj.username + "','" + obj.userpwd + "'";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
    public static int deleteRecord(Users obj)
    {
        string strSQL = "delete from tbusers where userid='" + obj.userid + "'";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
    public static int updateRecord(Users obj)
    {
        string strSQL = "update tbusers set username='" + obj.username + "' where userid='" + obj.userid + "'";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
}
