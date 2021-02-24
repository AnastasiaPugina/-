<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="Deanery.Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 168px">
    <form id="form1" runat="server">
        <div style="height: 260px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Создать элемент"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Создать элемент"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Создать элемент"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div style="height: 358px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Title" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" SortExpression="Title" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="Specialty" HeaderText="Specialty" SortExpression="Specialty" />
                    <asp:BoundField DataField="Curator" HeaderText="Curator" SortExpression="Curator" />
                    <asp:BoundField DataField="Elder" HeaderText="Elder" SortExpression="Elder" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString %>" DeleteCommand="DELETE FROM [Groups] WHERE [Title] = @Title" InsertCommand="INSERT INTO [Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (@Title, @Course, @Specialty, @Curator, @Elder)" SelectCommand="SELECT * FROM [Groups]" UpdateCommand="UPDATE [Groups] SET [Course] = @Course, [Specialty] = @Specialty, [Curator] = @Curator, [Elder] = @Elder WHERE [Title] = @Title">
                <DeleteParameters>
                    <asp:Parameter Name="Title" Type="String" />
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
                    <asp:Parameter Name="Title" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
