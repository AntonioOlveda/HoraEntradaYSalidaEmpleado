<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABCDepartamento.aspx.cs" Inherits="HoraEntradaYSalidaEmpleado.ABCDepartamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Alta de departamentos</h1>
        </div>

        Nombre departamento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txBoxNombre" runat="server" Width="361px"></asp:TextBox>
        <p>
            <asp:Button ID="buttonGuardar" runat="server" OnClick="buttonGuardar_Click" Text="Guardar" Width="651px" />
        </p>

        <div>
            <h1>Eliminar departamento</h1>
        </div>
        id departemento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txBoxIDD" runat="server" Width="360px"></asp:TextBox>
        <p>
            <asp:Button ID="buttonEliminar" runat="server" OnClick="buttonEliminar_Click" Text="Eliminar" Width="650px" />
        </p>
        <asp:Button ID="buttonConsulta" runat="server" OnClick="buttonConsulta_Click" Text="Consulta" Width="646px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    </form>
</body>
</html>
