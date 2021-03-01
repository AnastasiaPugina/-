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
                    <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результат сессии" Value="Результат сессии"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами" NavigateUrl="~/Procedures.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование" NavigateUrl="~/Admin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты" NavigateUrl="~/Reports.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div style="height: 408px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Title" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="5" Height="100%" HorizontalAlign="Left" Width="70%">
                <Columns>
                    <asp:CommandField EditText="Изменить" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Title" HeaderText="Название группы" ReadOnly="True" SortExpression="Title" />
                    <asp:BoundField DataField="Course" HeaderText="Курс" SortExpression="Course" />
                    <asp:BoundField DataField="Specialty" HeaderText="Специальность" SortExpression="Specialty" />
                    <asp:BoundField DataField="Curator" HeaderText="Куратор" SortExpression="Curator" />
                    <asp:BoundField DataField="Elder" HeaderText="Староста" SortExpression="Elder" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="5" DataKeyNames="Title" DataSourceID="SqlDataSource1" Height="80%" Width="25%" DefaultMode="Insert" HorizontalAlign="Right">
                <Fields>
                    <asp:BoundField DataField="Title" HeaderText="Название группы" ReadOnly="True" SortExpression="Title" />
                    <asp:BoundField DataField="Course" HeaderText="Курс" SortExpression="Course" />
                    <asp:BoundField DataField="Specialty" HeaderText="Специальность" SortExpression="Specialty" />
                    <asp:BoundField DataField="Curator" HeaderText="Куратор" SortExpression="Curator" />
                    <asp:BoundField DataField="Elder" HeaderText="Староста" SortExpression="Elder" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <RowStyle HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString4 %>" DeleteCommand="DELETE FROM [Groups] WHERE [Title] = @original_Title AND [Course] = @original_Course AND [Specialty] = @original_Specialty AND [Curator] = @original_Curator AND [Elder] = @original_Elder" InsertCommand="INSERT INTO [Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (@Title, @Course, @Specialty, @Curator, @Elder)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Groups]" UpdateCommand="UPDATE [Groups] SET [Course] = @Course, [Specialty] = @Specialty, [Curator] = @Curator, [Elder] = @Elder WHERE [Title] = @original_Title AND [Course] = @original_Course AND [Specialty] = @original_Specialty AND [Curator] = @original_Curator AND [Elder] = @original_Elder">
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
    </form>
</body>
</html>
