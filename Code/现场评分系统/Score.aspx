<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Score.aspx.cs" Inherits="Score" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>评委评分</title>
    <style type="text/css">
        .style1
        {
            font-family: 黑体;
            font-size: x-large;
            color: #3366FF;
        }
    </style>
</head>
<body background="Image/背景（长） - 副本.png">
    <form id="form1" runat="server">
    <div style="height: 169px"; id="header">
    <br />
     <center>
    <span class="style1">
            <asp:Label ID="lblSc" runat="server" Text="评 委 评 分 界 面" 
                style="color: #000000; font-size: x-large"></asp:Label>
    </span>
        <br />
        <br />     
            <asp:Label ID="lblSc2" runat="server" Text="（本次评分采用“百分制”）" 
                style="font-size: large"></asp:Label>
            <br />
            <br />
           
                  <asp:Label ID="lblCNO" runat="server" Text="评委" 
                style="color: #FF0000; font-weight: 700; font-size: large"></asp:Label>
                &nbsp;<asp:TextBox ID="txtCNO" runat="server" Height="27px"></asp:TextBox>
                &nbsp;   &nbsp; <asp:TextBox ID="txtteacher" runat="server" Width="0px" Height="0px" 
                style="background-color: #FFCCFF"></asp:TextBox>
               <asp:TextBox ID="txtstudent" runat="server" Width="0px" Height="0px" 
                style="background-color: #FFCCFF"></asp:TextBox>
            <asp:Label ID="lblgroup" runat="server" Text="当前组次" 
                style="color: #000000; font-size: large;"></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="txtgroup" runat="server" Height="30px" 
                Width="66px" ontextchanged="txtgroup_TextChanged"></asp:TextBox>                   
        &nbsp;                   
        &nbsp;<asp:Label ID="lblPjName" runat="server" Text="项目名称" 
                style="color: #000000; font-size: large"></asp:Label>
&nbsp;
              <asp:TextBox ID="txtPjName" runat="server" Height="30px" 
                ontextchanged="TextBox1_TextChanged" Width="327px"></asp:TextBox>
        <br />
        </center>
        </div>

            
            <div style="text-align: left; float:left">
            <center>
                <div style="margin-left:300px">
                <asp:GridView ID="GVindex" 
                    runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PID" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                Width="282px" Height="276px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="PID" HeaderText="编码" ReadOnly="True" 
                        SortExpression="PID" />
                    <asp:BoundField DataField="Itemize" HeaderText="指标名称" 
                        SortExpression="Itemize" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Site scoreConnectionString %>" 
                    DeleteCommand="DELETE FROM [评分项目表] WHERE [PID] = @PID" 
                    InsertCommand="INSERT INTO [评分项目表] ([PID], [Itemize]) VALUES (@PID, @Itemize)" 
                    SelectCommand="SELECT [PID], [Itemize] FROM [评分项目表]" 
                    UpdateCommand="UPDATE [评分项目表] SET [Itemize] = @Itemize WHERE [PID] = @PID">
                    <DeleteParameters>
                        <asp:Parameter Name="PID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PID" Type="String" />
                        <asp:Parameter Name="Itemize" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Itemize" Type="String" />
                        <asp:Parameter Name="PID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </center>
                </div>
            <div class="right" style=" text-align:right; width: 539px; float:left; height: 290px;">
            <div style="float:left;margin-left:100px;padding-top:60px;background:#fff">
                <asp:TextBox ID="txtitem1score" runat="server" Height="28px" Width="149px"></asp:TextBox>
                <span class="style1">（20分）</span>
                <asp:RangeValidator ID="RVItem1" runat="server" 
                ErrorMessage="请输入正确分数区间" ControlToValidate="txtitem1score" MaximumValue="20" MinimumValue="0"
                style="color: #000000; font-size: 20px">
                </asp:RangeValidator>
                <br />

                <asp:TextBox ID="txtitem2score" runat="server" Height="29px" Width="147px"></asp:TextBox>          
                <span class="style1">（30分）</span>
                <asp:RangeValidator ID="RVItem2" runat="server" 
                ErrorMessage="请输入正确分数区间" ControlToValidate="txtitem2score" 
                MaximumValue="30" MinimumValue="0" style="color: #000000; font-size:20px">
                </asp:RangeValidator>
                <br />

                <asp:TextBox ID="txtitem3score" runat="server" Height="28px" Width="147px"></asp:TextBox>
                <span class="style1">（30分）</span>
                <asp:RangeValidator ID="RVItem3" runat="server" 
                ErrorMessage="请输入正确分数区间" ControlToValidate="txtitem3score" 
                MaximumValue="30" MinimumValue="0" style="color: #000000; font-size: 20px">
                </asp:RangeValidator>
                <br />

                <asp:TextBox ID="txtitem4score" runat="server" Height="31px" Width="145px"></asp:TextBox>
                <span class="style1">（20分）</span>
                <asp:RangeValidator ID="RVItem4" runat="server" 
                ErrorMessage="请输入正确分数区间" ControlToValidate="txtitem4score" 
                MaximumValue="20" MinimumValue="0" style="color: #000000; font-size:20px">
                </asp:RangeValidator>
        </div>
           </div>
           <div style="margin-top:320px">
           <center>
              <div style="clear:both;">
                <asp:Button 
                ID="submit2" runat="server" Height="39px"  Font-Size="X-Large"
                Text="查看全部成绩" Width="151px" onclick="submit2_Click" 
                style="font-size: large; font-weight: 700; background-color: #CCCCCC;" />
                <asp:Button ID="submit1" runat="server" Text="提交当前评分" Height="39px"  Width="151px" onclick="submit1_Click" 
                style="font-size: large; font-weight: 700; background-color: #CCCCCC;" />
                <asp:Button ID="btnlook" runat="server" Text="查看当前组成绩" Height="39px"  Width="185px"
                  style="font-size: large; font-weight: 700; background-color: #CCCCCC; color: #000000;" 
                  onclick="btnlook_Click" />
                <asp:Button ID="btnScoreAgain" runat="server" Height="39px" 
                Width="196px" Text="进入下一组评分" onclick="btnScoreAgain_Click" 
                
                      style="font-size: large; font-weight: 700; color: #000000; background-color: #CCCCCC" />
                <asp:Button ID="btnReturn" runat="server" Text="退出评分" style="font-size: large;
                    font-weight: 700; color: #000000; background-color: #CCCCCC" 
                    Height="40px" onclick="btnReturn_Click" />   
             </div>
    </center>
    </div>
    </form>
</body>
</html>
