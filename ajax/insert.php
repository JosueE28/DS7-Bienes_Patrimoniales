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

    $depreciacion=null;
    $depreciacionAnual =0;

    $sql_depre= "SELECT * FROM bienes_patrimoniales WHERE Codigo_Producto = '$codigo'";
        $sql_querydepre = mysqli_query($est, $sql_depre);

        if (mysqli_num_rows($sql_querydepre) > 0) {
            while($rowdepre = mysqli_fetch_assoc($sql_querydepre)){
                $depreciacionAnual = $rowdepre['Depreciacion'];
                if ($depreciacionAnual == null) {
                    $depreciacionAnual = 0;
                }
            }
        } else {
            $depreciacionAnual = 0;
        }

    $vidautil = 6;
    $sumadeanos=0;
    $contt = 0;
    $iddepreciacion = $_POST['iddepreciacion'];
    

   
    
    echo json_encode(
        [
            'depreciacionanual' => $depreciacionAnual,  
            'cantidad' => $cantidad,
            'idproveedor' => $idproveedor,
            'iddepartamento' => $iddepartamento,
            'marca' =>$marca,
            'modelo' => $modelo,
            'descripcion' => $descripcion,
            'precio' => $precio,
            'placa' => $placa,
            'depreciacion' => $depreciacion,
            'serie' => $serie


        ]
    );




    if ($est && isset($_POST['descripcion'] )) {
        
        $codigo = $_POST['codigo'];
        $descripcion = $_POST['descripcion'];
        $fecha = $_POST['fecha'];
        $serie = $_POST['serie'];;
        $placa = $_POST['placa'];;
        $iddepartamento = $_POST['departamento'];
        $proveedor = $_POST['proveedor'];
        $marca = $_POST['marca'];
        $modelo = $_POST['modelo'];
        $precio = $_POST['precio'];
        $depreciacion = $_POST['depreciacion'];
        $total_unidades = $_POST['total_unidades'];
        $unidades_producidas = $_POST['unidades_producidas'];
        $contrnd2 = 0;
        echo $fecha;
        $departamento1=null;
        $sql_depa= "SELECT * FROM departamentos where ID_departamento = '$iddepartamento'";
        $sql_querydepa = mysqli_query($est, $sql_depa);
        while($rowdepa = mysqli_fetch_assoc($sql_querydepa)){
            $departamento1 = $rowdepa['Nombre_Departamento'];
        }
        
     

        $sql_depre2 = "SELECT * FROM bienes_patrimoniales WHERE Codigo_Producto = '$codigo'";
        $sql_querydepre2 = mysqli_query($est, $sql_depre2);
        
        if (mysqli_num_rows($sql_querydepre2) > 0) {
            // Si existe un registro, actualiza los valores

            $vidautil = 6;  
            $sumadeanos = 0;  
            $depreciacionAnual = 0;  
            $contt = 0;  
            $iddepreciacion = $_POST['iddepreciacion'];  
            $depreciacionanterior = $depreciacion;  
            $precioanterior = $precio; 
            $precio;

            
            
            if ($iddepreciacion == 3) {
                $unidadsalvamento = 100;
                
                for ($i = 0; $i < 6; $i++) {
                    $sumadeanos += $vidautil;
                    $vidautil -= 1;
                }
                $vidautil = 6;  
            
                while ($contt < 1) {
                    $depreciacionAnual = ($vidautil / $sumadeanos) * ($precio - $unidadsalvamento);
            
                    $precio -= $depreciacionAnual;
            
                    if ($precio < $precioanterior) {
                        $precioanterior = $precio;
                        $contt = 1;
                    } else {
                        $vidautil -= 1;
                    }
            
                    if ($vidautil <= 0) {
                        $contt = 1; 
                    }
                }
            }else if ($iddepreciacion == 2) { 
                    $totalUnidades = $_POST['total_unidades']; 
                    $unidadesProducidas = $_POST['unidades_producidas']; 
                    $costoPorUnidad = ($precio - 100) / $totalUnidades;
            
                    $depreciacionAnual = $costoPorUnidad * $unidadesProducidas;
                    $precio -= $depreciacionAnual;
            
                    if ($precio < 0) {
                        $precio = 0;
                    }
                }
            
             else if ($iddepreciacion == 1) {
                while ($contt < 1) {
                    $depreciacionAnual = ($precio - 100) / $vidautil;
            
                    $precio -= $depreciacionAnual;
            
                    if ($precio < $precioanterior) {
                        $precioanterior = $precio;
                        $contt = 1; 
                    }
            
                    if ($precio < 0) {
                        $precio = 0;
                    }
            
                    $vidautil -= 1;
            
                    if ($vidautil <= 0) {
                        $contt = 1; 
                    }
                }
            }
            $i = 0;
            while($i<$cantidad){
                $i++;
            $initialsplaca =  substr($iddepartamento, 0, 3);
            $contrnd2=0;
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
            
           
                
                    while($rowdepre2 = mysqli_fetch_assoc($sql_querydepre2)){
                        $depreciacion = $rowdepre2['Depreciacion'];
                        
                        if ($depreciacion == null) {
                            $depreciacion = 0;
                        }
                
                            $sql_update = "UPDATE bienes_patrimoniales SET  
                                Depreciacion = '$precio'
                            WHERE Codigo_Producto = '$codigo'";
                            
                            mysqli_query($est, $sql_update);
                        }

                        $sql_insert = "INSERT INTO bienes_patrimoniales (Codigo_Producto, Proveedor_ID, Departamento_ID, Depreciacion, Descripcion, Serie, Placa, Marca, Modelo, fecha) 
                        VALUES ('$codigo', '$proveedor', '$iddepartamento', '$precio', '$descripcion', '$serie1', '$placa1', '$marca', '$modelo', '$fecha')";
            
            mysqli_query($est, $sql_insert);

                    }
        } else {
            // Si no existe el registro, realiza la inserción
            $sql_insert = "INSERT INTO bienes_patrimoniales (Codigo_Producto, Proveedor_ID, Departamento_ID, Depreciacion, Descripcion, Serie, Placa, Marca, Modelo, fecha) 
            VALUES ('$codigo', '$proveedor', '$iddepartamento', '$depreciacionAnual', '$descripcion', '$serie1', '$placa1', '$marca', '$modelo', '$fecha')";
            
            mysqli_query($est, $sql_insert);
        }
    
        
    
       

        if (mysqli_query($est, $sql)) {
            echo json_encode(['success' => true]);
            
        } else {
            echo "Error al insertar datos: " . mysqli_error($est);  
        }
    } else {
        
    }
    

    
?>
