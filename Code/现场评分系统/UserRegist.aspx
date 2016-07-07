<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegist.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户注册</title>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {

        }

// ]]>
    </script>
    <style type="text/css">
        body
        {
            background-repeat:no-repeat;
        }
        .style1
        {
            color: #000000;
            font-family: 仿宋;
        }
        .style2
        {
            color: #666666;
            font-family: 隶书;
        }
        #form1
        {
            margin-left: 6px;
        }
    </style>
</head>
<body background="Image/背景.png">
 <form id="form1" runat="server">
<p style="text-align:center;font-size:40px" 
        class="style2">用&nbsp; 户&nbsp; 注&nbsp; 册 </p>
   
 
    <div style="height: 434px; font-size:28px; color:Maroon; width: 948px; margin-left: 274px; margin-right: 0px; margin-top: 0px">          
                       <strong>          
                       <asp:Label ID="lblRole" runat="server" Text="请选择角色" CssClass="style1"></asp:Label>
                       </strong>:&nbsp;
                       <asp:RadioButtonList ID="rdlRole" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">老师评委</asp:ListItem>
                        <asp:ListItem Value="2">学生评委</asp:ListItem>
                    </asp:RadioButtonList> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblCID" runat="server" Text="学/工号"></asp:Label>&nbsp;&nbsp; 
                       <asp:TextBox ID="txtCID" Width="195px" runat="server" 
            onblur="checkUserName()" Height="30px" style="color: #FFFFFF; background-color: #FFCCFF"></asp:TextBox>
                       <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblUserName" runat="server" Text="用户名"></asp:Label>
                       &nbsp;&nbsp; 
                       <asp:TextBox ID="txtUserName"  Width="200px" runat="server" 
            onblur="checkUserName()" Height="30px" style="background-color: #FFCCFF"></asp:TextBox>
        <span id="message" > </span>
        &nbsp;&nbsp; 
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPwd" runat="server" Text="密  码"></asp:Label>
         &nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtPwd" Width="200px" 
                           TextMode="Password" runat="server" 
            Height="31px" style="background-color: #FFCCFF"></asp:TextBox>
         &nbsp; &nbsp;&nbsp; &nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblPwdAgain" runat="server" Text="重复密码"></asp:Label>
         &nbsp;<asp:TextBox ID="txtPwdAgain" Width="200px" TextMode="Password" 
            runat="server" Height="31px" style="margin-left: 0px; background-color: #FFCCFF;"></asp:TextBox>
         &nbsp; &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="lblAge" runat="server" Text="年  龄" ></asp:Label>
         &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAge" Width="195px" runat="server" Height="33px" 
                           style="background-color: #FFCCFF"></asp:TextBox>
         &nbsp;&nbsp; 
        &nbsp;<br />
        <br />
         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                       <asp:Button ID="btnSubmit" runat="server" Text="提交" Font-Size="Large"  
                ValidationGroup="UserRegist" OnClick="btnSubmit_Click" Width="107px" 
                style="font-weight: 700; font-size: x-large; background-color: #CCCCCC;" 
                           Height="33px"/>
            &nbsp;&nbsp;&nbsp; &nbsp;<input 
                           style="font-size:x-large; font-weight: 700; width: 100px; height: 34px; background-color: #CCCCCC;" 
                           id="btnreset" type="reset" value="重置" onclick="return Button1_onclick()" />&nbsp;&nbsp;&nbsp; &nbsp;<div style="font-size:large">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; 
            &nbsp;&nbsp; &nbsp 
            <br />
        <asp:ValidationSummary ID="vsUserRegist" ShowMessageBox="true" ShowSummary="false" ValidationGroup="UserRegist" runat="server" />
        </div>
    </div>
    <br />
 
    </form>
</body>
</html>
