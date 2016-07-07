<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminRegist.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员注册</title>
   <style type="text/css">
       body
       {
            background-repeat:no-repeat;  
       }
       
   </style>
</head>
<body background="Image/背景.png">
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center>
        <asp:Label ID="LblAdminReg" runat="server" Text="管  理  员  注  册" 
                style="font-size: 40px; font-weight: 700;"></asp:Label>
        </center>
        <br />
        <br />
        <br />
        <br />
        <br />
       
           <center>
              <asp:Label ID="lblADRID" runat="server" Text="注册账号" 
                   style="font-size: 30px; font-weight: 700;"></asp:Label>
              &nbsp; &nbsp;<asp:TextBox ID="txtADRID" runat="server" Height="31px" 
                Width="214px"></asp:TextBox>
           </center>
          
           <br />
           <br />
           <br />
           
           <center>
              <asp:Label ID="lblADRPwd" runat="server" Text="注册密码" 
                   style="font-size: 30px; font-weight: 700;"></asp:Label>
               &nbsp; &nbsp;<asp:TextBox ID="txtADRPwd" runat="server" TextMode="Password" 
                Height="33px" Width="203px"></asp:TextBox>
           </center>
          
           <br />
           <br />
           <br />
           
              
           <center>
              <asp:Label ID="lblADRPwdAgain" runat="server" Text="重复密码" 
                style="font-size:30px; font-weight: 700;"></asp:Label>
               &nbsp; &nbsp;<asp:TextBox ID="txtADRPwdAgain" runat="server" 
                TextMode="Password" Height="33px" Width="207px" 
            style="margin-left: 0px"></asp:TextBox> 
            </center>
          
           <br />
           <br />
           <br />
           <br />
          
           <center>
              <asp:Button ID="ADSubmit" runat="server" Text="提交" 
                
                
                   style="font-size: x-large; color: #000000; font-weight: 700; background-color: #CCCCCC;" 
                   onclick="ADSubmit_Click" Height="35px" Width="102px" />
               &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<input 
                style="font-size:x-large; font-weight: 700; color: #000000; background-color: #CCCCCC; height: 37px; width: 99px;" 
                id="ADbtnreset" type="reset" value="重置" 
                onclick="return Button1_onclick()" />
           </center>
          
       
          
    </div>
    </form>
</body>
</html>
