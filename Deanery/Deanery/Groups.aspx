<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Groups.aspx.cs" Inherits="Deanery.Groups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 130px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Menu.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Группы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="Title" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="90%">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" SortExpression="Title" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="Specialty" HeaderText="Specialty" SortExpression="Specialty" />
                    <asp:BoundField DataField="Curator" HeaderText="Curator" SortExpression="Curator" />
                    <asp:BoundField DataField="Elder" HeaderText="Elder" SortExpression="Elder" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString %>" DeleteCommand="DELETE FROM [Groups] WHERE [Title] = @original_Title AND [Course] = @original_Course AND [Specialty] = @original_Specialty AND [Curator] = @original_Curator AND [Elder] = @original_Elder" InsertCommand="INSERT INTO [Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (@Title, @Course, @Specialty, @Curator, @Elder)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Groups]" UpdateCommand="UPDATE [Groups] SET [Course] = @Course, [Specialty] = @Specialty, [Curator] = @Curator, [Elder] = @Elder WHERE [Title] = @original_Title AND [Course] = @original_Course AND [Specialty] = @original_Specialty AND [Curator] = @original_Curator AND [Elder] = @original_Elder">
                <DeleteParameters>
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Course" Type="Int32" />
                    <asp:Parameter Name="original_Specialty" Type="String" />
                    <asp:Parameter Name="original_Curator" Type="String" />
                    <asp:Parameter Name="original_Elder" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Course" Type="Int32" />
                    <asp:Parameter Name="Specialty" Type="String" />
                    <asp:Parameter Name="Curator" Type="String" />
                    <asp:Parameter Name="Elder" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Course" Type="Int32" />
                    <asp:Parameter Name="Specialty" Type="String" />
                    <asp:Parameter Name="Curator" Type="String" />
                    <asp:Parameter Name="Elder" Type="String" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Course" Type="Int32" />
                    <asp:Parameter Name="original_Specialty" Type="String" />
                    <asp:Parameter Name="original_Curator" Type="String" />
                    <asp:Parameter Name="original_Elder" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="5" DataKeyNames="Title" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" style="margin-top: 50px" Width="142px">
            <Fields>
                <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" SortExpression="Title" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Specialty" HeaderText="Specialty" SortExpression="Specialty" />
                <asp:BoundField DataField="Curator" HeaderText="Curator" SortExpression="Curator" />
                <asp:BoundField DataField="Elder" HeaderText="Elder" SortExpression="Elder" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <RowStyle HorizontalAlign="Center" />
        </asp:DetailsView>
    </form>
</body>
</html>
