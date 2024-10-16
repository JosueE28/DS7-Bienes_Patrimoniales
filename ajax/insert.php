<?php
    include '../conexion.php';  

    
    $codigo = $_POST['codigo'];
    $descripcion = $_POST['descripcion'];
    $fecha = $_POST['fecha'];
    $placa = $_POST['placa'];
    $serie = $_POST['serie'];
    $departamento = $_POST['departamento'];
    $proveedor = $_POST['proveedor'];
    $precio = $_POST['precio'];

    if ($est) {
        
        $sql = "INSERT INTO bienes_patrimoniales ( Descripcion, Serie, Placa, fecha) 
        VALUES ('$descripcion', '$serie', '$placa', '$fecha')";


        if (mysqli_query($est, $sql)) {
            echo "Datos insertados correctamente";
        } else {
            echo "Error al insertar datos: " . mysqli_error($est);  
        }
    } else {
        echo "Error en la conexión con la base de datos.";
    }

    
?>
