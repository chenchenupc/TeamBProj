<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>成绩汇总</title>
</head>
<body background="Image/背景（长） - 副本2.0.png">
    <form id="form1" runat="server">
     <center>
     <div>   
            <asp:Label ID="lblsumscore" runat="server" Text="成 绩 汇 总 表" 
            style="text-align: center; font-size: xx-large; font-family: 黑体;"></asp:Label>
    </div>
    <br />
    <br />
         <asp:Label ID="tip" runat="server" 
             Text="注：本次评分成绩为“总成绩”的30%，其中教师评委权重为0.2，学生评委权重为0.1" 
             style="color: #FF0000; font-weight: 700"></asp:Label>
         <br />
    <br />
    <br />
    <asp:GridView ID="GVSS" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="SID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="290px" Width="590px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="序号" InsertVisible="False" 
                ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="DID" HeaderText="组次" SortExpression="DID" />
            <asp:BoundField DataField="SValue" HeaderText="学生评分" SortExpression="SValue" />
            <asp:BoundField DataField="TValue" HeaderText="教师评分" SortExpression="TValue" />
            <asp:BoundField DataField="SUValue" HeaderText="总成绩" SortExpression="SUValue" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Site scoreConnectionString %>" 
        DeleteCommand="DELETE FROM [汇总表] WHERE [SID] = @SID" 
        InsertCommand="INSERT INTO [汇总表] ([DID], [SValue], [TValue], [SUValue]) VALUES (@DID, @SValue, @TValue, @SUValue)" 
        SelectCommand="SELECT [SID], [DID], [SValue], [TValue], [SUValue] FROM [汇总表]" 
        UpdateCommand="UPDATE [汇总表] SET [DID] = @DID, [SValue] = @SValue, [TValue] = @TValue, [SUValue] = @SUValue WHERE [SID] = @SID">
        <DeleteParameters>
            <asp:Parameter Name="SID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DID" Type="String" />
            <asp:Parameter Name="SValue" Type="Single" />
            <asp:Parameter Name="TValue" Type="Single" />
            <asp:Parameter Name="SUValue" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DID" Type="String" />
            <asp:Parameter Name="SValue" Type="Single" />
            <asp:Parameter Name="TValue" Type="Single" />
            <asp:Parameter Name="SUValue" Type="Single" />
            <asp:Parameter Name="SID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </center>
    </form>
</body>
</html>
