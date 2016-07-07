<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户登录</title>
    <style type="text/css">
       body
       {
           background-repeat:no-repeat;
       }
       
        .style1
        {
            color: #FF9900;
            font-family: 黑体;
        }
       
    </style>
</head>

<body background="Image/背景.png">
    
    <form id="form1" runat="server">
<p style="text-align:center; font-size:45px;" 
        class="style1">&nbsp;&nbsp;&nbsp; 现场评分及结果统计系统</p>
    
    &nbsp;<br />   
  
     <div style="font-size:30px;color:Red;font-weight:bold; width: 1200px;">  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <center>
              &nbsp;&nbsp;<br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblUserName" runat="server" Text="学/工号"></asp:Label>
     &nbsp;  <asp:TextBox ID="txtUserName"  BorderColor="Red" Width="150px" runat="server" Height="28px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br/>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPwd" runat="server" Text="密  码"></asp:Label>
       
       &nbsp;  <asp:TextBox ID="txtPwd"  BorderColor="Red" TextMode="Password" Width="150px" runat="server" 
             Height="29px"></asp:TextBox>
        &nbsp; &nbsp;
     
&nbsp; 
&nbsp; 
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Button ID="btnSubmit" Text="登录" Font-Bold="true" Font-Size="30px" 
                  ForeColor="Green" ValidationGroup="UserLogin" OnClick="btnSubmit_Click" 
                  runat="server" 
                  style="background-color: #CCCCCC; color: #000000; font-size: large;" 
                  Height="32px" Width="100px" />
&nbsp;&nbsp;<asp:Button ID="btnRegist" runat="server" Text="注册" Font-Bold="true" 
                  Font-Size="30px"  ForeColor="Green" ValidationGroup="UserLogin" 
                  OnClick="btnRegist_Click" 
                  style="background-color: #CCCCCC; color: #000000; font-size: large;" 
                  Height="32px" Width="100px" />
&nbsp;&nbsp;<asp:Button ID="btnforpwd" runat="server" Text="忘记密码"  Font-Bold="true"
  Font-Size="30px"  ForeColor="Green" ValidationGroup="UserLogin" 
                  OnClick="btnRegist_Click" 
                  style="background-color: #CCCCCC; color: #000000; font-size: large;" 
                  Height="32px" Width="94px" />

&nbsp;&nbsp;<asp:Button ID="Admin" runat="server" 
        Text="管理员登录" Height="32px" onclick="Admin_Click" 
        style="color: #000000; font-size: large; font-weight: 700; background-color: #CCCCFF" 
        Width="111px" />

    <br />
    </center>
 </div> 
 </form>
</body>
</html>
