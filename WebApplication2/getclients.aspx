<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getclients.aspx.cs" Inherits="WebApplication2.getclients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CUSTOMERID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" ReadOnly="True" SortExpression="CUSTOMERID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                <asp:BoundField DataField="ZIPCODE" HeaderText="ZIPCODE" SortExpression="ZIPCODE" />
            </Columns>
        </asp:GridView>
        mnbckjdbc<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringtest %>" DeleteCommand="DELETE FROM &quot;CLIENTS&quot; WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID" InsertCommand="INSERT INTO &quot;CLIENTS&quot; (&quot;CUSTOMERID&quot;, &quot;NAME&quot;, &quot;STREET&quot;, &quot;CITY&quot;, &quot;STATE&quot;, &quot;ZIPCODE&quot;) VALUES (:CUSTOMERID, :NAME, :STREET, :CITY, :STATE, :ZIPCODE)" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionStringtest.ProviderName %>" SelectCommand="SELECT * FROM &quot;CLIENTS&quot;" UpdateCommand="UPDATE &quot;CLIENTS&quot; SET &quot;NAME&quot; = :NAME, &quot;STREET&quot; = :STREET, &quot;CITY&quot; = :CITY, &quot;STATE&quot; = :STATE, &quot;ZIPCODE&quot; = :ZIPCODE WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID">
            <DeleteParameters>
                <asp:Parameter Name="CUSTOMERID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CUSTOMERID" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STATE" Type="String" />
                <asp:Parameter Name="ZIPCODE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STATE" Type="String" />
                <asp:Parameter Name="ZIPCODE" Type="String" />
                <asp:Parameter Name="CUSTOMERID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
