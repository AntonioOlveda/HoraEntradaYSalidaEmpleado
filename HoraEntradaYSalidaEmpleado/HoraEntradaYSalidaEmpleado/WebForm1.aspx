<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HoraEntradaYSalidaEmpleado.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{
            padding:0px;
            margin:0px;
        }

        #header{
            margin:auto;
            width:1000px;
            font-family:Arial;
        }

        ul, ol {
            list-style:none;
        }

        .nav li a {
            background-color:#000;
            color:#fff;
            text-decoration:none;
            padding:10px 15px;
            display:block;
        }

        .nav li a:hover {
            background-color:#434343;
        }
        
        .nav > li {
            float:left;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <ul class="nav">
                <li><a href="ABCEmpleado.aspx">ABC empleados</a></li>
                <li><a href="ABCDepartamento.aspx">ABC departamentos</a></li>
                <li><a href="FHEyFHS.aspx">Log fecha y hora de salida de empleado</a></li>
                <li><a href="Reporte.aspx">Reporte</a></li>
            </ul>
        </div>
    </form>
</body>
</html>
