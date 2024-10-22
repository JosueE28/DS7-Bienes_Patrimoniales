<?php
include '../conexion.php';
    




    $iddepartamento = $_POST['iddepartamento'];
    

    $departamento=null;
    $sql_depa= "SELECT * FROM departamentos where ID_Departamento = '$iddepartamento'";
    $sql_querydepa = mysqli_query($est, $sql_depa);
    while($rowdepa = mysqli_fetch_assoc($sql_querydepa)){
        $departamento = $rowdepa['Nombre_Departamento'];
    }

   

    $sql = "SELECT * FROM bienes_patrimoniales where Departamento_ID = '$iddepartamento' ";
    $sql_query = mysqli_query($est, $sql);
    if ($sql_query && mysqli_num_rows($sql_query) > 0) {
        $response = '';
        while ($row = mysqli_fetch_assoc($sql_query)) {
            $codigo = $row['ID_Bien']; 
            $descripcion = $row['Descripcion']; 
            $marca = $row['Marca']; 
            $modelo = $row['Modelo']; 
            $serie = $row['Serie'];
            $placa = $row['Placa'];
            $fecha = $row['fecha'];
            $idproveedor = $row['Proveedor_ID'];


            $proveedor=null;
            $sql_prov= "SELECT * FROM proveedores where ID_Proveedor = '$idproveedor'";
            $sql_queryprov = mysqli_query($est, $sql_prov);
            while($rowprov = mysqli_fetch_assoc($sql_queryprov)){
                $proveedor = $rowprov['Nombre_Proveedor'];
            }
        
            $depreciacion = $row['Depreciacion']; 
            $departamento = $departamento;
            $response .= "
                <tr>
                    <td>{$codigo}</td>
                    <td>{$proveedor}</td>
                    <td>{$departamento}</td>
                    <td>{$descripcion}</td>
                    <td>{$marca}</td>
                    <td>{$modelo}</td>
                    <td>{$serie}</td>
                    <td>{$placa}</td>
                    <td>{$depreciacion}</td>
                    <td>{$fecha}</td> 
                   
                    
                </tr>
            ";
        }
        echo $response; 
    } else {
        echo '0'; 
    }







?>