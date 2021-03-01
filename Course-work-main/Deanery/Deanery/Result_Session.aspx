<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result_Session.aspx.cs" Inherits="Deanery.Result_Session" %>

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
                    <asp:MenuItem Text="Главная" Value="Главная" NavigateUrl="~/Main.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами" NavigateUrl="~/Procedures.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование" NavigateUrl="~/Admin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты" NavigateUrl="~/Reports.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div style="height: 375px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_stud,Id_sub" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="5" Height="100%" HorizontalAlign="Left" Width="70%">
                <Columns>
                    <asp:CommandField EditText="Изменить" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id_stud" HeaderText="ID студента" ReadOnly="True" SortExpression="Id_stud" />
                    <asp:BoundField DataField="Id_sub" HeaderText="ID предмета" ReadOnly="True" SortExpression="Id_sub" />
                    <asp:BoundField DataField="Date_exam" HeaderText="Дата экзамена" SortExpression="Date_exam" />
                    <asp:BoundField DataField="Mark" HeaderText="Оценка" SortExpression="Mark" />
                    <asp:BoundField DataField="Semester" HeaderText="Семестр" SortExpression="Semester" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="5" DataKeyNames="Id_stud,Id_sub" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="30%" HorizontalAlign="Right" Width="25%">
                <Fields>
                    <asp:BoundField DataField="Id_stud" HeaderText="ID студента" ReadOnly="True" SortExpression="Id_stud" />
                    <asp:BoundField DataField="Id_sub" HeaderText="ID предмета" ReadOnly="True" SortExpression="Id_sub" />
                    <asp:BoundField DataField="Date_exam" HeaderText="Дата экзамена" SortExpression="Date_exam" />
                    <asp:BoundField DataField="Mark" HeaderText="Оценка" SortExpression="Mark" />
                    <asp:BoundField DataField="Semester" HeaderText="Семестр" SortExpression="Semester" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <RowStyle HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString6 %>" DeleteCommand="DELETE FROM [Result_Session] WHERE [Id_stud] = @original_Id_stud AND [Id_sub] = @original_Id_sub AND [Date_exam] = @original_Date_exam AND [Mark] = @original_Mark AND [Semester] = @original_Semester" InsertCommand="INSERT INTO [Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (@Id_stud, @Id_sub, @Date_exam, @Mark, @Semester)" SelectCommand="SELECT * FROM [Result_Session]" UpdateCommand="UPDATE [Result_Session] SET [Date_exam] = @Date_exam, [Mark] = @Mark, [Semester] = @Semester WHERE [Id_stud] = @original_Id_stud AND [Id_sub] = @original_Id_sub AND [Date_exam] = @original_Date_exam AND [Mark] = @original_Mark AND [Semester] = @original_Semester" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_stud" Type="Int32" />
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Date_exam" Type="DateTime" />
                    <asp:Parameter Name="original_Mark" Type="Int32" />
                    <asp:Parameter Name="original_Semester" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_stud" Type="Int32" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                    <asp:Parameter Name="Date_exam" Type="DateTime" />
                    <asp:Parameter Name="Mark" Type="Int32" />
                    <asp:Parameter Name="Semester" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Date_exam" Type="DateTime" />
                    <asp:Parameter Name="Mark" Type="Int32" />
                    <asp:Parameter Name="Semester" Type="Int32" />
                    <asp:Parameter Name="original_Id_stud" Type="Int32" />
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Date_exam" Type="DateTime" />
                    <asp:Parameter Name="original_Mark" Type="Int32" />
                    <asp:Parameter Name="original_Semester" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
