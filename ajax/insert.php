<?php
    include '../conexion.php';  

   


    $codigo = $_POST['codigo'];

    $cantidad = null;
    $idproveedor = null;
    $iddepartamento = null;
    
    $sql = "SELECT * FROM compra_productos where Codigo_Producto = '$codigo'";
    $sql_query = mysqli_query($est, $sql);
    while($row = mysqli_fetch_assoc($sql_query)){
        $cantidad = $row['Cantidad_Producto'];
        $idproveedor = $row['Proveedor_ID'];
        $iddepartamento = $row['Departamento_ID'];
    }
  

    $nombreproducto = null;
    $marca = null;
    $modelo = null;
    $descripcion = null;
    $precio = null;
    $contrnd = 0;
    $random = 0;
    $placa = null;
    $sql_productos = "SELECT * FROM productos where Codigo = '$codigo'";
    $sql_queryproducts = mysqli_query($est, $sql_productos);

    while($rowproducts = mysqli_fetch_assoc($sql_queryproducts)){
        $marca = $rowproducts['Marca'];
        $modelo = $rowproducts['Modelo'];
        $descripcion = $rowproducts['Descripcion_Producto'];
        $precio = $rowproducts['Precio_Producto'];
    }

    $departamento=null;
    $sql_depa= "SELECT * FROM departamentos where ID_departamento = '$iddepartamento'";
    $sql_querydepa = mysqli_query($est, $sql_depa);
    while($rowdepa = mysqli_fetch_assoc($sql_querydepa)){
        $departamento = $rowdepa['Nombre_Departamento'];
    }


    $initialsplaca =  substr($departamento, 0, 3);
    while($contrnd < 1){
        $random = rand(10000, 99999);
        $serie = rand(10000, 99999);
        $placa = $initialsplaca.$random;

        $sql_placa_serie= "SELECT * FROM bienes_patrimoniales";
        $sql_queryps = mysqli_query($est, $sql_placa_serie);

        while($row_ps = mysqli_fetch_assoc($sql_queryps)){
            if($placa == $row_ps['Placa'] && $serie == $row_sps['Serie']){
                
            }else{
                $contrnd+=1;
            }
        }
    }

    echo json_encode(
        [
            'cantidad' => $cantidad,
            'idproveedor' => $idproveedor,
            'iddepartamento' => $iddepartamento,
            'marca' =>$marca,
            'modelo' => $modelo,
            'descripcion' => $descripcion,
            'precio' => $precio,
            'placa' => $placa,
            'serie' => $serie


        ]
    );




    if ($est && isset($_POST['descripcion'] )) {
         
        $codigo = $_POST['codigo'];
        $descripcion = $_POST['descripcion'];
        $fecha = $_POST['fecha'];
        $serie = null;
        $placa = null;
        $iddepartamento = $_POST['departamento'];
        $proveedor = $_POST['proveedor'];
        $marca = $_POST['marca'];
        $modelo = $_POST['modelo'];
        $precio = $_POST['precio'];
        $contrnd2 = 0;

        $departamento1=null;
        $sql_depa= "SELECT * FROM departamentos where ID_departamento = '$iddepartamento'";
        $sql_querydepa = mysqli_query($est, $sql_depa);
        while($rowdepa = mysqli_fetch_assoc($sql_querydepa)){
            $departamento1 = $rowdepa['Nombre_Departamento'];
        }

        $initialsplaca =  substr($departamento1, 0, 3);
        while($contrnd2 < 1){
            $random = rand(10000, 99999);
            $serie1 = rand(10000, 99999);
            $placa1 = $initialsplaca.$random;
    
            $sql_placa_serie= "SELECT * FROM bienes_patrimoniales";
            $sql_queryps = mysqli_query($est, $sql_placa_serie);
    
            while($row_ps = mysqli_fetch_assoc($sql_queryps)){
                if($placa1 == $row_ps['Placa'] && $serie1 == $row_sps['Serie']){
                    
                }else{
                    $contrnd2+=1;
                }
            }
        }

        $sql = "INSERT INTO bienes_patrimoniales (Codigo_Producto, Proveedor_ID, Departamento_ID, Descripcion, Serie, Placa, Marca, Modelo, fecha) 
        VALUES ('$codigo', '$proveedor', '$iddepartamento', '$descripcion', '$serie1', '$placa1', '$marca', '$modelo', '$fecha')";

        

        if (mysqli_query($est, $sql)) {
            echo json_encode(['success' => true]);
            
        } else {
            echo "Error al insertar datos: " . mysqli_error($est);  
        }
    } else {
        
    }

    
?>
