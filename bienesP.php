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
        <form action="" method="POST" class="mt-4">
            <div class="container mt-5 depre">
                <h1 class="text-center titulo" style="font-family: 'Poppins', sans-serif; color: black;">Registro de Activos Fijos</h1>
                <div class="row">
                    <!-- Código -->
                    <div class="col-md-6 mb-3">
                        <label for="codigo" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Código</label>
                        <input type="text" class="form-control" id="codigo" name="codigo">
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
                    <!-- Proveedor -->
                    <div class="col-md-6 mb-3">
                        <label for="proveedor" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Proveedor</label>
                        <input type="text" class="form-control " id="proveedor" name="proveedor">
                    </div>

                    <!-- Departamento -->
                    <div class="col-md-6 mb-3">
                        <label for="departamento" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Departamento</label>
                        <select class="form-control" id="departamento" name="departamento">
                            <option value="">Seleccione un departamento</option>
                            <option value="Recursos Humanos">Recursos Humanos</option>
                            <option value="Contabilidad">Contabilidad</option>
                            <option value="Compras">Compras</option>
                            <option value="Bienes Patrimoniales">Bienes Patrimoniales</option>
                            <option value="Tecnología">Tecnología</option>
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
                            <th>Precio</th>
                            <th>Serie</th>
                            <th>Placa</th>
                            <th>Proveedor</th>
                            <th>Departamento</th>
                        </tr>
                    </thead> 
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>2023-10-01</td>
                            <td>Computadora de oficina</td>
                            <td>$1200</td>
                            <td>S123456</td>
                            <td>P987654</td>
                            <td>Proveedor A</td>
                            <td>TI</td>
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
            document.getElementById('departamento').addEventListener('input', soloLetrasYSimbolos);

            // Asignar eventos para los campos que solo aceptan números
            document.getElementById('codigo').addEventListener('input', soloNumeros);
            document.getElementById('precio').addEventListener('input', soloNumeros);
        });

        // Función para calcular la depreciación de línea recta
        function calcularDepreciacion(precio, vidaUtil, valorSalvamento) {
            return (precio - valorSalvamento) / vidaUtil;
        }
        // Josué analiza si esto podría ser en el botón de guardar
        document.querySelector('#btn2').addEventListener('click', (event) => {
            event.preventDefault();

            let departamento = document.getElementById('departamento').value;
            let precio = document.getElementById('precio').value;
            let vidaUtil = 5; // Asumimos 5 años de vida útil
            let valorSalvamento = 100; // Asumimos un valor de salvamento de $100

            if (precio) {
                let depreciacionAnual = calcularDepreciacion(precio, vidaUtil, valorSalvamento);
                
                // Consulta para actualizar el campo depreciación en la tabla bienes_patrimoniales
                let parametro = {
                    "codigo": document.getElementById('codigo').value,
                    "depreciacion": depreciacionAnual
                };

                $.ajax({
                    data: parametro,
                    type: 'POST',
                    url: 'ajax/insert.php',
                    success: function(mensaje_mostrar){
                        console.log(mensaje_mostrar);
                        alert('Actualización exitosa con depreciación: ' + depreciacionAnual);
                    },
                    error: function() {
                        alert('Error al actualizar la depreciación');
                    }
                });
            }
        });

        document.querySelector('#btn2').addEventListener('click', (event) => {
            event.preventDefault(); 

           
            let departamento = document.getElementById('departamento').value;
            let nuevaFila = document.createElement('tr');

            let celdaCodigo = document.createElement('td');
            celdaCodigo.textContent = '';

            let celdaFecha = document.createElement('td');
            celdaFecha.textContent = '';

            let celdaDescripcion = document.createElement('td');
            celdaDescripcion.textContent = '';

            let celdaPrecio = document.createElement('td');
            celdaPrecio.textContent = '';

            let celdaProveedor = document.createElement('td');
            celdaProveedor.textContent = '';

            let celdaDepartamento = document.createElement('td');
            celdaDepartamento.textContent = departamento;

            nuevaFila.appendChild(celdaCodigo);
            nuevaFila.appendChild(celdaFecha);
            nuevaFila.appendChild(celdaDescripcion);
            nuevaFila.appendChild(celdaPrecio);
            nuevaFila.appendChild(celdaProveedor);
            nuevaFila.appendChild(celdaDepartamento);

            document.querySelector('.table tbody').appendChild(nuevaFila);

        });


                let btn = document.querySelector('#btn1');
                 btn1.addEventListener('click', () =>{
                let codigo = document.getElementById('codigo').value;
                let descripcion = document.getElementById('descripcion').value;
                let fecha = document.getElementById('fecha').value;
                let proveedor = document.getElementById('proveedor').value;
                let departamento = document.getElementById('departamento').value;
                let precio = document.getElementById('precio').value;
                let placa = document.getElementById('placa').value;
                let serie = document.getElementById('serie').value;
               
                if (!codigo || !descripcion || !proveedor || !departamento || !precio || !serie || !placa) {
                    alert("Por favor, complete todos los campos requeridos.");
                    return;
                }
               
                parametro ={
                    "codigo": codigo,
                    "descripcion": descripcion,
                    "proveedor":  proveedor,
                    "fecha":  fecha,
                    "placa":  placa,
                    "serie":  serie,
                    "departamento": departamento
                }

                $.ajax({
                    data: parametro,
                    type: 'POST',
                    url: 'ajax/insert.php',

                    success: function(mensaje_mostrar){
                        console.log(mensaje_mostrar);
                        if(mensaje_mostrar.trim()==='1'){
                            alert('Todo bien');
                            document.getElementById('codigo').value = '';
                            document.getElementById('descripcion').value = '';
                            document.getElementById('proveedor').value = '';
                            document.getElementById('departamento').value = '';
                            document.getElementById('precio').value = '';
                        }else{
                            alert('Todo bien');
                            document.getElementById('codigo').value = '';
                            document.getElementById('fecha').value = '';
                            document.getElementById('descripcion').value = '';
                            document.getElementById('proveedor').value = '';
                            document.getElementById('departamento').value = '';
                            document.getElementById('precio').value = '';
                        }
                    }
                });
            });
        
    </script>

</body>
</html>
