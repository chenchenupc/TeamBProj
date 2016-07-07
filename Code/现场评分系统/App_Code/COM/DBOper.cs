using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Collections;
using System.Data.SqlTypes;

/// <summary>
///DBOper 的摘要说明
/// </summary>
public class DBOper
{
    public DBOper()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    public static SqlCommand CreateCommandDBCon()
    {
        //Integrated Security=True;
        string connectionString = "Data Source=192.168.1.100;User Id=sa;password=sa;initial catalog=Site Score";
        //string connectionString = "Data Source=192.168.1.104\\SQL2008;initial catalog=ScoreDB;User Id=sa;password=chen";
        SqlConnection conn = new SqlConnection(connectionString);
        return conn.CreateCommand();
    }
    /// <summary>
    /// 执行SQLText脚本，返回影响行数
    /// </summary>
    /// <param name="strSQLText"></param>
    /// <returns></returns>
    public static int execNonQueryBySQLText(string strSQLText)
    {
        SqlCommand comm = DBOper.CreateCommandDBCon();
        comm.CommandType = CommandType.Text;
        comm.CommandText = strSQLText;
        int affectedRows = -1;
        try
        {
            comm.Connection.Open();
            affectedRows = comm.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            comm.Connection.Close();
        }
        return affectedRows;
    }
    /// <summary>
    /// 执行SQL文本，返回DataTable
    /// </summary>
    /// <param name="strSQLText">SQL文本</param>
    /// <returns>DataTable</returns>
    public static DataTable execQueryBySQLText(string strSQLText)
    {
        SqlCommand comm = DBOper.CreateCommandDBCon();
        comm.CommandType = CommandType.Text;
        comm.CommandText = strSQLText;

        DataTable table = null;
        try
        {
            comm.Connection.Open();
            SqlDataReader reader = comm.ExecuteReader();
            table = new DataTable();
            table.Load(reader);
            reader.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }

        finally
        {
            comm.Connection.Close();
        }
        return table;
    }

}
