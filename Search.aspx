<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Search.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            Search By Name : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="Search" />
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:perfConnectionString %>" SelectCommand="SELECT * FROM [perfm] WHERE ([Name] LIKE '%' + @Name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" DefaultValue ="%" />
                    </SelectParameters>
                </asp:SqlDataSource>
</center>

        </div>
    </form>
</body>
</html>
