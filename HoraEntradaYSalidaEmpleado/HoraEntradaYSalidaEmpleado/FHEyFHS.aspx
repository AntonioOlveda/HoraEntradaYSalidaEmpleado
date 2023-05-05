<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FHEyFHS.aspx.cs" Inherits="HoraEntradaYSalidaEmpleado.FHEyFHS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registro de horas de entrada y salida de empleados</h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="id del empleado:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txBoxIDE" runat="server" Width="459px"></asp:TextBox>
        <p>
            <asp:Button ID="buttonGHE" runat="server" OnClick="buttonGHE_Click" Text="Guardar hora de entrada" Width="301px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="buttonGHS" runat="server" OnClick="buttonGHS_Click" Text="Guardar hora de salida" Width="318px" />
        </p>
        <asp:Button ID="buttonConsulta" runat="server" OnClick="buttonConsulta_Click" Text="Consulta" Width="694px" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
