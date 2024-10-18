<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activos Fijos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #001b48;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Bienes Patrimoniales</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contabilidad</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">RRHH</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Compras</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5"> 
        <!-- Formulario de Activos Fijos -->
        <form action="ajax/insert.php" method="POST" class="mt-4">
            <div class="container mt-5 depre">
                <h1 class="text-center titulo" style="font-family: 'Poppins', sans-serif; color: black;">Registro de Activos Fijos</h1>
                <div class="row">
                    <!-- Código -->
                    <div class="col-md-4 mb-3">
                        <label for="codigo" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Código</label>
                        <input type="text" class="form-control" id="codigo" name="codigo">
                    </div>
                    <div class="col-md-2 mb-3 codigobtn">
                        <button type="button" class="btn" id="botoncodigo" style=" color: #fff; font-family: 'Roboto', sans-serif;">buscar</button>
                    </div>   
                    <!-- Fecha -->
                    <div class="col-md-6 mb-3">
                        <label for="fecha" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Fecha</label>
                        <input type="date" class="form-control" id="fecha" name="fecha">
                    </div>
                </div>

                <div class="row">
                    <!-- Descripción -->
                    <div class="col-md-12 mb-3">
                        <label for="descripcion" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Descripción</label>
                        <textarea class="form-control" id="descripcion" name="descripcion" rows="3"></textarea>
                    </div>
                </div>

                <div class="row">
                    <!-- Precio -->
                    <div class="col-md-4 mb-3 custom-gap">
                        <label for="precio" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Precio</label>
                        <input type="number" class="form-control" id="precio" name="precio">
                    </div>

                    <!-- Serie -->
                    <div class="col-md-4 mb-3 custom-gap">
                        <label for="serie" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Serie</label>
                        <input type="text" class="form-control" id="serie" name="serie">
                    </div>

                    <!-- Placa -->
                    <div class="col-md-4 mb-3 custom-gap">
                        <label for="placa" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Placa</label>
                        <input type="text" class="form-control" id="placa" name="placa">
                    </div>
                </div>

                <div class="row">
                    <!-- Código -->
                    <div class="col-md-6 mb-3">
                        <label for="codigo" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Modelo</label>
                        <input type="text" class="form-control" id="modelo" name="modelo">
                    </div>

                    <!-- Fecha -->
                    <div class="col-md-6 mb-3">
                        <label for="fecha" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Marca</label>
                        <input type="text" class="form-control" id="marca" name="marca">
                    </div>
                </div>

                <div class="row">
                    <!-- Proveedor -->
                    <div class="col-md-6 mb-3">
                        <label for="proveedor" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Proveedor</label>
                        <select class="form-control" id="proveedor" name="proveedor">
            
                        <?php include 'conexion.php';
                            $sqlselectdep = "SELECT * FROM proveedores";
                            $sql_query_dep_select = mysqli_query($est, $sqlselectdep);

                            while($row=mysqli_fetch_assoc($sql_query_dep_select)){
                                $iddepa = $row['ID_Proveedor'];
                                $depaname = $row['Nombre_Proveedor'];
                                echo"<option value='$iddepa'>$depaname</option>";

                            }
                        
                        ?>
                        </select>
                    </div>

                    <!-- Departamento -->
                    <div class="col-md-6 mb-3">
                        <label for="departamento" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Departamento</label>
                        <select class="form-control" id="departamento" name="departamento">
            
                            <?php include 'conexion.php';
                                $sqlselectdep = "SELECT * FROM departamentos";
                                $sql_query_dep_select = mysqli_query($est, $sqlselectdep);

                                while($row=mysqli_fetch_assoc($sql_query_dep_select)){
                                    $iddepa = $row['ID_Departamento'];
                                    $depaname = $row['Nombre_Departamento'];
                                    echo"<option value='$iddepa'>$depaname</option>";

                                }
                            
                            ?>
                        </select>
                    </div>
                </div>

                <!-- Botones -->
                <div class="row">
                    <div class="text-center mt-4">
                        <button type="button" class="btn" id="btn1" style=" color: #fff; font-family: 'Roboto', sans-serif;">Guardar</button>
                        <button type="button" class="btn" id="btn2" style=" color: #fff; font-family: 'Roboto', sans-serif;">Consultar</button>
                    </div>
                </div>

                <!-- Tabla -->
                <table class="table mt-5">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Fecha de Compra</th>
                            <th>Descripción</th>
                            <th>Marca</th>
                            <th>Modelo</th>
                            <th>Serie</th>
                            <th>Placa</th>
                            <th>Proveedor</th>
                            <th>Departamento</th>
                        </tr>
                    </thead> 
                    <tbody>
                        <tr>
                            
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        // Solo permitir letras y símbolos
        function soloLetrasYSimbolos(e) {
            e.target.value = e.target.value
                .split('')
                .filter(char => isNaN(char) && char.toLowerCase() !== char.toUpperCase() || ' !@#$%^&*()_+-=[]{}|;:\'",.<>?/'.includes(char))
                .join('');
        }

        // Solo permitir números
        function soloNumeros(e) {
            const regex = /^[0-9]+$/;
            e.target.value = e.target.value.replace(/[^0-9]+/g, '');
        }

        document.addEventListener('DOMContentLoaded', () => {
            // Asignar eventos para los campos que solo aceptan letras y símbolos especiales
            document.getElementById('descripcion').addEventListener('input', soloLetrasYSimbolos);
            document.getElementById('proveedor').addEventListener('input', soloLetrasYSimbolos);

            // Asignar eventos para los campos que solo aceptan números
            document.getElementById('codigo').addEventListener('input', soloNumeros);
            document.getElementById('precio').addEventListener('input', soloNumeros);
        });

        document.addEventListener('DOMContentLoaded', function() {
    const btn2 = document.querySelector('#btn2');
    if (btn2) {
        btn2.addEventListener('click', () => {
            const tablaBody = document.querySelector('table tbody');

            const parametro = {
                "codigo": document.getElementById('codigo').value,
                "descripcion": document.getElementById('descripcion').value,
                "proveedor": document.getElementById('proveedor').value,
                "fecha": document.getElementById('fecha').value,
                "serie": document.getElementById('serie').value,
                "placa": document.getElementById('placa').value,
                "departamento": document.getElementById('departamento').value
            };

            $.ajax({
                data: parametro,
                type: 'POST',
                url: 'ajax/select.php',

                success: function(response) {
                    if (response.trim() === '0') {
                        alert('No se encontraron registros.');
                    } else {
                        tablaBody.innerHTML += response; 
                        alert('Registros agregados correctamente.');

                        document.getElementById('codigo').value = '';
                        document.getElementById('descripcion').value = '';
                        document.getElementById('proveedor').value = '';
                        document.getElementById('departamento').value = '';
                        document.getElementById('precio').value = '';
                        document.getElementById('serie').value = '';
                        document.getElementById('placa').value = '';
                        document.getElementById('fecha').value = '';
                    }
                },
                error: function() {
                    alert('Error en la conexión.');
                }
            });
        });
    }
});
                
                let btnbuscar = document.querySelector('#botoncodigo');
                btnbuscar.addEventListener('click', () =>{

                    let codigo1 = document.getElementById('codigo').value;

                    parametrobuscar ={
                        "codigo": codigo1
                    }
                    $.ajax({
                    data: parametrobuscar,
                    type: 'POST',
                    url: 'ajax/insert.php',
                    success: function(mensaje_mostrar) {
                        console.log(mensaje_mostrar);
                    const respuesta = JSON.parse(mensaje_mostrar);

                    if (respuesta.cantidad !== null) {
                        document.getElementById('precio').value = respuesta.cantidad;
                        document.getElementById('departamento').value = respuesta.iddepartamento;
                        document.getElementById('proveedor').value = respuesta.idproveedor;
                        document.getElementById('descripcion').value = respuesta.descripcion;
                        document.getElementById('precio').value = respuesta.precio;
                        document.getElementById('marca').value = respuesta.marca;
                        document.getElementById('modelo').value = respuesta.modelo;
                        document.getElementById('placa').value = respuesta.placa;
                        document.getElementById('serie').value = respuesta.serie;


                    } else {
                        alert('No se encontró la cantidad para el producto.');
                    }
                    }         
                });
                });



                let btn = document.querySelector('#btn1');
                 btn1.addEventListener('click', () =>{
                let codigo = document.getElementById('codigo').value;
                let descripcion = document.getElementById('descripcion').value;
                let fecha = document.getElementById('fecha').value;
                let proveedor = document.getElementById('proveedor').value;
                let departamento = document.getElementById('departamento').value;
                let precio = document.getElementById('precio').value;
                let marca = document.getElementById('marca').value;
                let modelo = document.getElementById('modelo').value;
                let placa = document.getElementById('placa').value;
                let serie = document.getElementById('serie').value;
               
                if (!codigo || !descripcion || !proveedor || !departamento || !precio || !serie || !placa || !fecha) {
                    Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Llene todos los campos",
                    });                 
                    return;
                }
               
               
                parametro ={
                    "codigo": codigo,
                    "descripcion": descripcion,
                    "proveedor":  proveedor,
                    "fecha":  fecha,
                    "marca":  marca,
                    "modelo":  modelo,
                    "precio":  precio,
                    "departamento": departamento
                }

                $.ajax({
                    data: parametro,
                    type: 'POST',
                    url: 'ajax/insert.php',

                    success: function(mensaje_mostrar){
                        if(mensaje_mostrar.success){
                            Swal.fire({
                            icon: "success",
                            title: "Your work has been saved",
                            showConfirmButton: false,
                            timer: 1500
                            });
                            document.getElementById('codigo').value = '';
                            document.getElementById('descripcion').value = '';
                            document.getElementById('proveedor').value = '';
                            document.getElementById('departamento').value = '';
                            document.getElementById('precio').value = '';
                            document.getElementById('marca').value = '';
                            document.getElementById('modelo').value = '';
                            document.getElementById('placa').value = '';
                            document.getElementById('serie').value = '';

                            }else{
                                Swal.fire({
                                icon: "success",
                                title: "Datos guardados",
                                showConfirmButton: false,
                                timer: 1500
                                });
                            document.getElementById('codigo').value = '';
                            document.getElementById('descripcion').value = '';
                            document.getElementById('proveedor').value = '';
                            document.getElementById('departamento').value = '';
                            document.getElementById('precio').value = '';
                            document.getElementById('marca').value = '';
                            document.getElementById('modelo').value = '';
                            document.getElementById('placa').value = '';
                            document.getElementById('serie').value = '';
                            document.getElementById('fecha').value = '';
                            
                         
                        }
                    }
                });
            });
        
    </script>

</body>
</html>
