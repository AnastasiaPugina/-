<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Deanery.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 100px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Menu.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id_stud" DataSourceID="SqlDataSource1" HorizontalAlign="Center" style="margin-top: 20px" Width="90%" CellPadding="5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" EditText="Изменить" ShowEditButton="True" />
                    <asp:BoundField DataField="Id_stud" HeaderText="Id_stud" ReadOnly="True" SortExpression="Id_stud" />
                    <asp:BoundField DataField="FIO" HeaderText="FIO" SortExpression="FIO" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                    <asp:BoundField DataField="Date_birth" HeaderText="Date_birth" SortExpression="Date_birth" />
                </Columns>
                <EditRowStyle HorizontalAlign="Center" />
                <EmptyDataRowStyle HorizontalAlign="Center" />
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                <PagerStyle HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id_stud" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" style="margin-top: 50px" Width="200px" CellPadding="5" DefaultMode="Insert">
                <Fields>
                    <asp:BoundField DataField="Id_stud" HeaderText="Id_stud" ReadOnly="True" SortExpression="Id_stud" />
                    <asp:BoundField DataField="FIO" HeaderText="FIO" SortExpression="FIO" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                    <asp:BoundField DataField="Date_birth" HeaderText="Date_birth" SortExpression="Date_birth" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <RowStyle HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Id_stud] = @original_Id_stud AND [FIO] = @original_FIO AND [Title] = @original_Title AND [Addres] = @original_Addres AND [Tel] = @original_Tel AND [Date_birth] = @original_Date_birth" InsertCommand="INSERT INTO [Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (@Id_stud, @FIO, @Title, @Addres, @Tel, @Date_birth)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FIO] = @FIO, [Title] = @Title, [Addres] = @Addres, [Tel] = @Tel, [Date_birth] = @Date_birth WHERE [Id_stud] = @original_Id_stud AND [FIO] = @original_FIO AND [Title] = @original_Title AND [Addres] = @original_Addres AND [Tel] = @original_Tel AND [Date_birth] = @original_Date_birth">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_stud" Type="Int32" />
                    <asp:Parameter Name="original_FIO" Type="String" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Addres" Type="String" />
                    <asp:Parameter Name="original_Tel" Type="Int64" />
                    <asp:Parameter Name="original_Date_birth" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_stud" Type="Int32" />
                    <asp:Parameter Name="FIO" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Addres" Type="String" />
                    <asp:Parameter Name="Tel" Type="Int64" />
                    <asp:Parameter Name="Date_birth" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FIO" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Addres" Type="String" />
                    <asp:Parameter Name="Tel" Type="Int64" />
                    <asp:Parameter Name="Date_birth" Type="DateTime" />
                    <asp:Parameter Name="original_Id_stud" Type="Int32" />
                    <asp:Parameter Name="original_FIO" Type="String" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Addres" Type="String" />
                    <asp:Parameter Name="original_Tel" Type="Int64" />
                    <asp:Parameter Name="original_Date_birth" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <h2>Title</h2>
            Enter a Title
            <asp:QueryExtender ID="QueryExtender1" runat="server">
            </asp:QueryExtender>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="" DefaultContainerName="" EntitySetName="" EntityTypeFilter="" Select="" Where="">
            </asp:EntityDataSource>
            <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="SearchButton" runat="server" Text="Search" />
        </div>
    </form>
</body>
</html>
