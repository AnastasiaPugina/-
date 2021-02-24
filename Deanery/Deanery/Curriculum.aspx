<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Curriculum.aspx.cs" Inherits="Deanery.Curriculum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 280px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Результаты сессии"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div style="height: 417px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_plan" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_plan" HeaderText="Id_plan" ReadOnly="True" SortExpression="Id_plan" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" SortExpression="Id_sub" />
                    <asp:CheckBoxField DataField="Offset" HeaderText="Offset" SortExpression="Offset" />
                    <asp:CheckBoxField DataField="Exam" HeaderText="Exam" SortExpression="Exam" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:CheckBoxField DataField="Course_work" HeaderText="Course_work" SortExpression="Course_work" />
                    <asp:CheckBoxField DataField="Course_project" HeaderText="Course_project" SortExpression="Course_project" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString %>" SelectCommand="SELECT * FROM [Curriculum]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
