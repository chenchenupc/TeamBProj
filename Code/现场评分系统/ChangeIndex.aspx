<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeIndex.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>修改指标</title>
</head>
<body background="Image/背景（长） - 副本.png">
    <form id="form1" runat="server">
    <div>
    <center>
    
        <asp:Label ID="lblIndex" runat="server" Text="评  分  指  标" 
            style="font-size: xx-large; font-weight: 700"></asp:Label>
        <br />
        <br />
        <br />
    </center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center>
          <asp:Button ID="btnIN"  runat="server" Text="新增" 
                style="font-size: large; font-weight: 700; background-color: #CCCCCC;" 
                onclick="btnIN_Click" />
       &nbsp;&nbsp;  <asp:Label ID="lblCreNO" runat="server" Text="编号" 
            style="font-size: large; font-weight: 700; color: #FF6699;"></asp:Label>
        &nbsp;<asp:TextBox ID="txtCreNO" runat="server" Height="23px" Width="88px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="lblCreInd" runat="server" Text="指标名称" 
            style="font-size: large; font-weight: 700; color: #FF6699;"></asp:Label>
        &nbsp;<asp:TextBox ID="txtCreInd" runat="server" Height="22px"></asp:TextBox>
              &nbsp;  &nbsp;<asp:Label ID="lblCreWeg" runat="server" Text="指标权重" 
                style="font-size: large; color: #FF6699; font-weight: 700"></asp:Label>
              &nbsp;<asp:TextBox ID="txtCreWeg" runat="server" Height="22px" Width="72px"></asp:TextBox>
              &nbsp;   &nbsp; <asp:Button ID="returnDEgroup" runat="server" Text="返回分组" 
                onclick="returnDEgroup_Click" 
                style="font-weight: 700; font-size: large; background-color: #CCCCCC" />
            <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GVIndex" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="PID" 
            DataSourceID="SqlDataSource" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="680px" Height="393px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PID" HeaderText="编号" ReadOnly="True" 
                    SortExpression="PID" />
                <asp:BoundField DataField="Itemize" HeaderText="指标名称" 
                    SortExpression="Itemize" />
                <asp:BoundField DataField="PWeight" HeaderText="指标权重" 
                    SortExpression="PWeight" />
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
    
        <asp:SqlDataSource ID="SqlDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Site scoreConnectionString %>" 
            DeleteCommand="DELETE FROM [评分项目表] WHERE [PID] = @PID" 
            InsertCommand="INSERT INTO [评分项目表] ([PID], [Itemize], [PWeight]) VALUES (@PID, @Itemize, @PWeight)" 
            SelectCommand="SELECT [PID], [Itemize], [PWeight] FROM [评分项目表]" 
            UpdateCommand="UPDATE [评分项目表] SET [Itemize] = @Itemize, [PWeight] = @PWeight WHERE [PID] = @PID">
            <DeleteParameters>
                <asp:Parameter Name="PID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PID" Type="String" />
                <asp:Parameter Name="Itemize" Type="String" />
                <asp:Parameter Name="PWeight" Type="Single" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Itemize" Type="String" />
                <asp:Parameter Name="PWeight" Type="Single" />
                <asp:Parameter Name="PID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
    </div>
    </form>
</body>
</html>
