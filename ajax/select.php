<?php
include '../conexion.php';
    
    $departamento = $_POST['departamento'];
   $series = $_POST['serie'];

    $sql = "SELECT * FROM bienes_patrimoniales where serie = '$series' ";
    $sql_query = mysqli_query($est, $sql);
    if ($sql_query && mysqli_num_rows($sql_query) > 0) {
        $response = '';
        while ($row = mysqli_fetch_assoc($sql_query)) {
            $codigo = $row['ID_Bien']; 
            $descripcion = $row['Descripcion']; 
            $marca = 'Marca aquí'; 
            $modelo = 'Modelo aquí'; 
            $serie = $row['Serie'];
            $placa = $row['Placa'];
            $proveedor = $row['Proveedor_ID']; 
            $departamento = 'depa';
            $response .= "
                <tr>
                    <td>{$codigo}</td>
                    <td>{$_POST['fecha']}</td> <!-- Asume que la fecha se recibe desde el formulario -->
                    <td>{$descripcion}</td>
                    <td>{$marca}</td>
                    <td>{$modelo}</td>
                    <td>{$serie}</td>
                    <td>{$placa}</td>
                    <td>{$proveedor}</td>
                    <td>{$departamento}</td>
                </tr>
            ";
        }
        echo $response; 
    } else {
        echo '0'; 
    }







?>