<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="ABCEmpleado.aspx.cs" Inherits="HoraEntradaYSalidaEmpleado.ABC" %>

<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="titulo">
	<h3>Empleado</h3>
	<p>Altas, bajas y cambios de empleados</p>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <form id="form1" runat="server">
		<!-- Row starts -->
		<div class="row gutter">
			<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
				<div class="panel-body">
					<div class="styled-input-wrapper">
						<div class="input-icon">
							<i class="icon-user"></i>
						</div>
						<div class="styled-input">
							<div class="form-group">
								<label for="userName">Enter Your Name</label>
								<input type="text" class="form-control" id="userName" placeholder="User Name">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
				<div class="panel-body">
					<div class="styled-input-wrapper">
						<div class="input-icon">
							<i class="icon-user-check text-success"></i>
						</div>
						<div class="styled-input">
							<div class="form-group has-success">
								<label for="userNameCompleted" class="control-label">Success Input</label>
								<input type="text" class="form-control" id="userNameCompleted" placeholder="User Name" value="User Name entered">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="panel-body">
						<div class="styled-input-wrapper">
							<div class="input-icon">
								<i class="icon-remove-user text-danger"></i>
							</div>
							<div class="styled-input">
								<div class="form-group has-error">
									<label for="userNameError" class="control-label">Error Input</label>
									<input type="text" class="form-control" id="userNameError" placeholder="User Name" value="Invalid Username">
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
		<!-- Row ends -->
    </form>
</asp:Content>
<%--<html xmlns="http://www.w3.org/1999/xhtml">
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
            <HeaderStyle
        </asp:GridView>
    </form>
</body>
</html>--%>
