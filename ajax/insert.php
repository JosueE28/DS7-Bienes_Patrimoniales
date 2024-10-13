<?php
include("DS7-Bienes_Patrimoniales/conexion.php");




















// Verificar si se envió el código y depreciación
if (isset($_POST['codigo']) && isset($_POST['depreciacion'])) {
    $codigo = $_POST['codigo'];
    $depreciacion = $_POST['depreciacion'];

    // Prevenir inyección SQL escapando los datos
    $codigo = $conexion->real_escape_string($codigo);
    $depreciacion = $conexion->real_escape_string($depreciacion);

    // Consulta de actualización
    $sql = "UPDATE bienes_patrimoniales SET depreciacion = '$depreciacion' WHERE codigo = '$codigo'";

    // Ejecutar la consulta
    if ($conexion->query($sql) === TRUE) {
        echo '1'; // Actualización exitosa
    } else {
        echo '0'; // Error en la actualización
    }
} else {
    echo 'Datos incompletos'; // Faltan parámetros
}




?>