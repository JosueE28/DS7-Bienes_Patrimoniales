<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activos Fijos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color:  rgb(218, 218, 218);
            height: 100vh;
            position: relative;
            

        }
        table{
            width: 100%;

        }

        .container12{
            height: 92%;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            transform: translateY(-40px);
        }
        .table-custom {
            background-color: #fff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        .table-custom thead th {
            background-color: #001b48;
            color: white;
            font-weight: bold;
            text-align: center;
            padding: 15px;
          
        }

        .table-custom tbody tr {
            transition: all 0.3s ease;
        }

        .table-custom tbody tr:hover {
            background-color: #f0f0f0;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        }

        .table-custom td {
            text-align: center;
            padding: 12px;
            border: none;
            vertical-align: middle;
        }

        .table-custom td:first-child {
            font-weight: bold;
            color: #001b48;
        }

        .table-custom tbody{
            min-height: 100px;
        }

        .containertable{
            height: 60vh;
            width: 80%;
            padding: 0;
            background-color: white;
        }

        .container1{

        }

        .boton{
            transform: translateX(535px);
            
        }

        .btn1{
            transform: translateY(-38px);
        }


        .btn2{
background-color: blue;        }


        .boton2{
            transform: translateY(-40px) !important;
        }
        #btn2l{
            
            background-color: rgb(49, 146, 49);

            transform: translateX(-600px);
            display: flex;
             align-items: center;
             
        }

        #btn2l:hover{
            background-color: rgb(38, 110, 38);

        }
        span{
            font-weight: bold;
            font-size: 20px;
        }
        
        a{
            text-decoration:none;

        }
      img{
        width: 15px;
        height: 20px;

      }
        

    </style>
</head>
<body>
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
    <div class="container12 mt-5">
   

        <div class="container1 col-md-4 mb-3">
        <form action="mostrar.php" method="POST" class="mt-4">
                <label for="depreciacion" class="form-label" style="font-family: 'Roboto', sans-serif; font-weight: bold;">Departamento</label>
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
              
                <div class="boton">
                <button type="button" class="btn  btn1" id="btn2" style=" color: #fff; font-family: 'Roboto', sans-serif;">Desplegar</button>
                </div>  
                
            </div>
            <div class="boton2">
                    <a href="bienesP.php"><button type="button" class="btn  btn2" id="btn2l" style=" color: #fff; font-family: 'Roboto', sans-serif;"><img src="images/chevron-left-solid.svg"><span>Registro</span></button></a>
                </div> 
            </form>
                
        <div class="container containertable ">
            
            <table class="table table-custom">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Proveedor</th>
                        <th>Departamento</th>
                        <th>Descripción</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Serie</th>
                        <th>Placa</th>
                        <th>Depreciacion</th>
                        <th>Fecha de Compra</th>
                        
                    </tr>
                </thead> 
                <tbody>
                     <tr>
                            
                     </tr>
                    
                </tbody>
            </table>
        </div>
        

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>



    const btn2 = document.querySelector('#btn2');
    if (btn2) {
        btn2.addEventListener('click', () => {
            const tablaBody = document.querySelector('table tbody');
            let iddepartamento = document.querySelector('#departamento').value;


            const parametro = {
                "iddepartamento": iddepartamento
            
            };

            $.ajax({
                data: parametro,
                type: 'POST',
                url: 'ajax/select.php',

                success: function(response) {
                    if (response.trim() === '0') {
                        alert('No se encontraron registros.');
                    } else {
                        tablaBody.innerHTML = response; 
                        alert('Registros agregados correctamente.');

                        
                    }
                },
                error: function() {
                    alert('Error en la conexión.');
                }
            });
        });
    }

    </script>
</body>
</html>
