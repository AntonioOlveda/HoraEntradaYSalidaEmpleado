<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABCEmpleado.aspx.cs" Inherits="HoraEntradaYSalidaEmpleado.ABC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Alta de empleado</h1>
        </div>
        Nombre completo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txBoxNombre" runat="server" Width="340px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        IDDepartamento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txBoxIDD" runat="server" Width="337px"></asp:TextBox>
        <p style="margin-left: 320px">
            <asp:Button ID="buttonGuardar" runat="server" OnClick="buttonGuardar_Click" Text="Guardar" Width="535px" />
        </p>
        <h1>
            Baja de empleado por id
        </h1>
        <p>
            IDEmpleado:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txBoxIDE" runat="server" Width="340px"></asp:TextBox>
        </p>
        <p style="margin-left: 320px">
            <asp:Button ID="buttonEliminar" runat="server" Text="Eliminar" Width="531px" OnClick="buttonEliminar_Click" />
        </p>
        <h1>
            Consulta
        </h1>
        <p>
            <asp:Button ID="buttonConsulta" runat="server" OnClick="buttonConsulta_Click" Text="Consulta" Width="529px" />
        </p>
        <p>
            &nbsp;</p>
        
        <asp:GridView ID="GridView1" runat="server" Width="529px">
        </asp:GridView>
    </form>
</body>
</html>
