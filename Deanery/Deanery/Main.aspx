<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Deanery.Working_with_tables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 192px">
            <asp:Menu ID="Menu1" runat="server" StaticSubMenuIndent="16px" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Students"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Groups"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Subjects"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Curriculum"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Result_Session"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
