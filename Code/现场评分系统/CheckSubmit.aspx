<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckSubmit.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>提交查看</title>
</head>
<body background="Image/背景（长） - 副本.png">
    <form id="form1" runat="server">
    <div>
    <center>
        <br />
        <br />
        <br />
        <asp:Label ID="lbltitle" runat="server" Text="用 户 提 交 查 看 界 面" 
            style="font-family: 黑体; font-weight: 700; font-size: xx-large"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblGROUP" runat="server" Text="当 前 组 次" 
            style="font-size: x-large; font-weight: 700; font-family: 黑体"></asp:Label>
         &nbsp;<asp:TextBox ID="txtGROUP" runat="server" Height="28px" 
            style="background-color: #CCCCCC" Width="146px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lbl1" runat="server" Text="当前提交数量" 
            style="font-weight: 700; font-size: x-large; font-family: 黑体"></asp:Label>
         &nbsp;<asp:TextBox ID="txtsubcoun" runat="server" Height="25px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
&nbsp;<asp:Label ID="lbl2" runat="server" Text="评 委 数 量" 
            style="font-size: x-large; font-weight: 700; font-family: 黑体;"></asp:Label>
        &nbsp;<asp:TextBox ID="txtCIDcoun" runat="server" Height="20px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnclear" runat="server" Text="刷新" 
            
            style="font-size: x-large; color: #FF0000; font-weight: 700; background-color: #CCCCCC" 
            onclick="btnclear_Click" />
        &nbsp; &nbsp; &nbsp; 
        <asp:Button ID="btndegroup" runat="server" Text="分组" 
            
            style="font-size: x-large; color: #FF0000; font-weight: 700; background-color: #CCCCCC" 
            onclick="btndegroup_Click" />
        <br />
        <br />
    </center>
    
    </div>
    </form>
</body>
</html>
