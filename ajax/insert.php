<?php
    include '../conexion.php';  

   


    $codigo = $_POST['codigo'];
    $sqlc = "SELECT * FROM productos where Codigo = '$codigo'";
    $sql_queryc = mysqli_query($est, $sqlc);
    if(mysqli_num_rows($sql_queryc)>0){

        

        $cantidad = null;
        $idproveedor = null;
        $iddepartamento = null;

        $nombreproducto = null;
        $marca = $_POST['marca'];
        $modelo = $_POST['modelo'];
        $descripcion = null;
        $precio = null;
        $contrnd = 0;
        $random = 0;
        $placa = null;
        $sql_productos = "SELECT * FROM productos where Codigo = '$codigo'";
        $sql_queryproducts = mysqli_query($est, $sql_productos);

        while($rowproducts = mysqli_fetch_assoc($sql_queryproducts)){
            
            $descripcion = $rowproducts['Descripcion_Producto'];
            $precio = $rowproducts['Precio_Producto'];
        }
            $sql ="SELECT 
                    compra_productos.Cantidad_Producto AS cantidad, 
                    compra_productos.Proveedor_ID AS idproveedor, 
                    compra_productos.Departamento_ID AS iddepartamento, 
                    productos.Descripcion_Producto AS descripcion, 
                    productos.Precio_Producto AS precio 
                FROM compra_productos
                INNER JOIN productos ON compra_productos.Precio_Producto = productos.Precio_Producto
                WHERE compra_productos.Precio_Producto = '$precio'";

        $sql_query = mysqli_query($est, $sql);
        while($row = mysqli_fetch_assoc($sql_query)){
            $cantidad = $row['cantidad'];
            $idproveedor = $row['idproveedor'];
            $iddepartamento = $row['iddepartamento'];
        }
    

        
        $departamento=null;
        $sql_depa= "SELECT * FROM departamentos where ID_departamento = '$iddepartamento'";
        $sql_querydepa = mysqli_query($est, $sql_depa);
        while($rowdepa = mysqli_fetch_assoc($sql_querydepa)){
            $departamento = $rowdepa['Nombre_Departamento'];
        }


        $initialsplaca =  substr($iddepartamento, 0, 3);
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
                'success' => true,
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
            $precio = $_POST['precio'];
            $cantidad = $_POST['cantidad'];

            $marca = $_POST['marca'];
            $modelo = $_POST['modelo'];
            $depreciacion = $_POST['depreciacion'];
            $total_unidades = $_POST['total_unidades'];
            $unidades_producidas = $_POST['unidades_producidas'];
            $contrnd2 = 0;
            $departamento1=null;
            $sql_depa= "SELECT * FROM departamentos where ID_departamento = '$iddepartamento'";
            $sql_querydepa = mysqli_query($est, $sql_depa);
            while($rowdepa = mysqli_fetch_assoc($sql_querydepa)){
                $departamento1 = $rowdepa['Nombre_Departamento'];
            }
            
        

            $sql_depre2 = "SELECT * FROM bienes_patrimoniales WHERE Codigo_Producto = '$codigo'";
            $sql_querydepre2 = mysqli_query($est, $sql_depre2);
            

                $vidautil = 6;  
                $sumadeanos = 0;  
                $depreciacionAnual = 0;  
                $contt = 0;  
                $iddepreciacion = $_POST['iddepreciacion'];  
                $depreciacionanterior = $depreciacion;  
                $fecha_registro = $_POST['fecha']; 
                $dateTime = DateTime::createFromFormat('Y-m-d', $fecha_registro);
                $anio_registro = (int)$dateTime->format('Y'); 
                
                
                $anio_actual = (int)date('Y'); 
                $anios_transcurridos = intval($anio_actual - $anio_registro);            
                $vida_util_restante = $vidautil - $anios_transcurridos;
                if ($vida_util_restante <= 0) {
                    $vida_util_restante = 0; 
                    $precio = 0;
                } else {
                    if ($iddepreciacion == 3) { 
                        $unidadsalvamento = 100;
                        $sumadeanos = ($vidautil * ($vidautil + 1)) / 2; 
                        $vida_util_actual = $vida_util_restante;
                
                            $depreciacionAnual = ($vida_util_actual / $sumadeanos) * ($precio - $unidadsalvamento);
                            if($depreciacionAnual<0){
                                $precio += $depreciacionAnual; 
                                }else{
                                    $precio -= $depreciacionAnual;   
                                }l;
                
                            
                            if ($precio < 0) {
                                $precio = 0; 
                            }
                    
                
                    } else if ($iddepreciacion == 2) { 
                        $totalUnidades = $_POST['total_unidades']; 
                        $unidadesProducidas = $_POST['unidades_producidas']; 
                        $costoPorUnidad = ($precio - 100) / $totalUnidades;
                
                        $depreciacionAnual = $costoPorUnidad * $unidadesProducidas;
                        if($depreciacionAnual<0){
                            $precio += $depreciacionAnual; 
                            }else{
                                $precio -= $depreciacionAnual;   
                            }
                
                        if ($precio < 0) {
                            $precio = 0; 
                        }
                
                    } else if ($iddepreciacion == 1) {
                            $depreciacionAnual = ($precio - 100) / $vida_util_restante;
                            if($depreciacionAnual<0){
                            $precio += $depreciacionAnual; 
                            }else{
                                $precio -= $depreciacionAnual;   
                            }
                        
                            if ($precio < 0) {
                                $precio = 0; 
                            }
                
                        
                    }
                }
                $i=0;
                while($i<$cantidad){
            $i++;
            $contrnd=0;
            $serie1=null;
            $placa1=null;
        $initialsplaca =  substr($iddepartamento, 0, 3);
        while($contrnd < 1){
            $random = rand(10000, 99999);
            $serie1 = rand(10000, 99999);
            $placa1 = $initialsplaca.$random;

            $sql_placa_serie= "SELECT * FROM bienes_patrimoniales";
            $sql_queryps = mysqli_query($est, $sql_placa_serie);

            while($row_ps = mysqli_fetch_assoc($sql_queryps)){
                if($placa1 == $row_ps['Placa'] && $serie1 == $row_sps['Serie']){
                    
                }else{
                    $contrnd+=1;
                }
            }
        }
                

        if (mysqli_num_rows($sql_querydepre2) >0) {
                
                $sql_update = "UPDATE bienes_patrimoniales SET  
                    Depreciacion = '$precio'
                WHERE Codigo_Producto = '$codigo'";
                mysqli_query($est, $sql_update);

                $sql_insert = "INSERT INTO bienes_patrimoniales (Codigo_Producto, Proveedor_ID, Departamento_ID, Depreciacion, Descripcion, Serie, Placa, Marca, Modelo, fecha) 
                    VALUES ('$codigo', '$proveedor', '$iddepartamento', '$precio', '$descripcion', '$serie1', '$placa1', '$marca', '$modelo', '$fecha')";
                    mysqli_query($est, $sql_insert);
                }else{
                if (mysqli_num_rows($sql_querydepre2) == 0) {
                    $sql_insert = "INSERT INTO bienes_patrimoniales (Codigo_Producto, Proveedor_ID, Departamento_ID, Depreciacion, Descripcion, Serie, Placa, Marca, Modelo, fecha) 
                    VALUES ('$codigo', '$proveedor', '$iddepartamento', '$precio', '$descripcion', '$serie1', '$placa1', '$marca', '$modelo', '$fecha')";
                    mysqli_query($est, $sql_insert);
                }
                else {
                    echo json_encode(['success' => true]);
                }
                
                if (mysqli_query($est, $sql)) {
                    echo json_encode(['success' => true]);
                } else {
                    echo "Error al insertar datos: " . mysqli_error($est);  
                }
            
            }
                
        }
        } 
    }else{
        echo json_encode(['success' => false]);

    }
    
?>
