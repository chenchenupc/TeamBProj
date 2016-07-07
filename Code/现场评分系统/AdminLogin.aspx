<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员登录</title>
    <style type="text/css">
        body
        {
            background-repeat:no-repeat; 
        }
    </style>
</head>
<body background="Image/背景.png">
    <form id="form1" runat="server"  >
    <div>
    <br />
    <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center style= "height: 414px;">
        <asp:Label ID="LblAdminReg" runat="server" Text="管  理  员  登  录" 
                style="font-size: 40px; font-weight: 700"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
          
              <asp:Label ID="lblADRID" runat="server" Text="账号" 
                style="font-weight: 700; font-size: 30px; color: #000000;"></asp:Label>
              &nbsp;&nbsp;<asp:TextBox ID="txtADRID" runat="server" Height="34px" 
                Width="171px"></asp:TextBox>
           
           <br />
           &nbsp;<br />
           <br />
           <br />
          
              <asp:Label ID="lblADRPwd" runat="server" Text="密码" 
                style="font-weight: 700; font-size: 30px"></asp:Label>
              &nbsp;&nbsp;<asp:TextBox ID="txtADRPwd" runat="server" TextMode="Password" 
                Height="31px" Width="173px"></asp:TextBox>
          
           <br />
           <br />
           <br />
           <br />
         
            <asp:Button ID="btnLog" runat="server" Text="登录" style="font-size: x-large; font-weight: 700; color: #000000; background-color: #CCCCCC;" 
                onclick="btnLog_Click" Width="95px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnReg" runat="server" Text="注册" style="font-size: x-large; color: #000000; font-weight: 700; background-color: #CCCCCC;" 
                onclick="btnReg_Click" Width="99px" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnforgetPwd" runat="server" Text="忘记密码" style="font-size: x-large; font-weight: 700; color: #000000; background-color: #CCCCCC;" 
               />      
        </center>
    </div>
    </form>
</body>
</html>
