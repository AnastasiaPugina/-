<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Deanery.Menu" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 111px">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Работа с таблицами" Value="Students">
                    <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Результаты сессии"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами" NavigateUrl="~/Procedures.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Администрирование" Value="Администрирование" NavigateUrl="~/Admin.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Отчеты" Value="Отчеты" NavigateUrl="~/Reports.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
        </div>
    </form>
    <div>
    </div>
</body>
</html>
