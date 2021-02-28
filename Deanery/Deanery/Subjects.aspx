<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="Deanery.Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 130px">
    <form id="form1" runat="server">
        <div style="height: 130px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Menu.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Группы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Предметы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Результаты сессии"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Procedures.aspx" Text="Работа с процедурами" Value="Работа с процедурами"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Admin.aspx" Text="Администрирование" Value="Администрирование"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Reports.aspx" Text="Отчеты" Value="Отчеты"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="Id_sub" DataSourceID="SqlDataSource1" HorizontalAlign="Center" style="margin-top: 20px" Width="90%">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Title_sub" HeaderText="Title_sub" SortExpression="Title_sub" />
                    <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" ReadOnly="True" SortExpression="Id_sub" />
                    <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString %>" DeleteCommand="DELETE FROM [Subjects] WHERE [Id_sub] = @original_Id_sub AND [Title_sub] = @original_Title_sub AND [Professor] = @original_Professor" InsertCommand="INSERT INTO [Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (@Title_sub, @Id_sub, @Professor)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Subjects]" UpdateCommand="UPDATE [Subjects] SET [Title_sub] = @Title_sub, [Professor] = @Professor WHERE [Id_sub] = @original_Id_sub AND [Title_sub] = @original_Title_sub AND [Professor] = @original_Professor">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Title_sub" Type="String" />
                    <asp:Parameter Name="original_Professor" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title_sub" Type="String" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                    <asp:Parameter Name="Professor" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title_sub" Type="String" />
                    <asp:Parameter Name="Professor" Type="String" />
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Title_sub" Type="String" />
                    <asp:Parameter Name="original_Professor" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id_sub" DataSourceID="SqlDataSource1" Height="61px" style="margin-top: 50px" Width="137px" CellPadding="5" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="Title_sub" HeaderText="Title_sub" SortExpression="Title_sub" />
                <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" ReadOnly="True" SortExpression="Id_sub" />
                <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <RowStyle HorizontalAlign="Center" />
        </asp:DetailsView>
    </form>
</body>
</html>
