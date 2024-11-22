﻿Imports System.Data.SqlClient
Imports Mysqlx
Imports MySql.Data.MySqlClient
Imports System.Numerics
Imports System.Text.RegularExpressions

Public Class AF_MainPage

    Dim connectionString As String = "Server=localhost;Database=proyecto_db;Uid=userdb;Pwd=passworddb;"
    Dim connection As New MySqlConnection(connectionString)

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            connection.Open()
            MessageBox.Show("Conexión exitosa")
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message)
        Finally
            connection.Close()
        End Try
    End Sub

    Private Sub BtnGuardar_Click(sender As Object, e As EventArgs) Handles BtnGuardar.Click
        Try
            ' Abrir la conexión
            connection.Open()

            ' Desactivar los campos de placa y serie (no serán editables hasta que se carguen los datos)
            TxtPlaca.Enabled = False
            TxtSerie.Enabled = False

            ' Variables para almacenar los datos
            Dim cantidad As String = Nothing
            Dim marca As String = Nothing
            Dim modelo As String = Nothing
            Dim descripcion As String = Nothing
            Dim precio As String = Nothing

            ' Consulta para obtener los datos de productos usando el código de producto
            Dim sqlProductos As String = "SELECT * FROM productos WHERE Codigo = @Codigo_Producto"
            Dim commandProductos As New MySqlCommand(sqlProductos, connection)
            commandProductos.Parameters.AddWithValue("@Codigo_Producto", TxtCodigo.Text)

            ' Ejecutar la consulta y leer los resultados
            Dim readerProductos As MySqlDataReader = commandProductos.ExecuteReader()

            If readerProductos.Read() Then
                cantidad = readerProductos("Stock").ToString()  ' Traemos el stock
                marca = readerProductos("Marca").ToString()
                modelo = readerProductos("Modelo").ToString()
                descripcion = readerProductos("Descripcion_Producto").ToString()
                precio = readerProductos("Precio_Producto").ToString()
            End If
            readerProductos.Close()

            ' Asignar los valores a los campos del formulario
            TxtMarca.Text = marca
            TxtModelo.Text = modelo
            TxtDescripcion.Text = descripcion
            TxtPrecio.Text = precio
            TxtCantidad.Text = cantidad

            ' Habilitar los campos de Placa y Serie para que el usuario los ingrese
            TxtPlaca.Enabled = True
            TxtSerie.Enabled = True

        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message)
        Finally
            ' Cerrar la conexión
            connection.Close()
        End Try
    End Sub

    Private Sub BtnBuscar_Click(sender As Object, e As EventArgs) Handles BtnBuscar.Click
        Try
            connection.Open()

            ' Variables
            Dim codigo As String = TxtCodigo.Text
            Dim proveedor As String = CbxProveedor.SelectedItem.ToString()
            Dim descripcion As String = TxtDescripcion.Text
            Dim marca As String = TxtMarca.Text
            Dim modelo As String = TxtModelo.Text
            Dim precio As Decimal = Convert.ToDecimal(TxtPrecio.Text)
            Dim depreciacionAnual As Decimal = 0
            Dim unidadesProducidas As Integer = 500
            Dim totalUnidades As Integer = 1000
            Dim vidautil As Integer = 6
            Dim sumadeanos As Integer = 0
            Dim idDepreciacion As Integer = CbxDepreciacion.SelectedIndex + 1
            Dim cantidadActual As String = TxtCantidad.Text

            ' Determinar el ID del proveedor basado en la selección en el ComboBox
            Dim idProveedor As Integer
            Dim sqlProveedor As String = "SELECT ID_Proveedor FROM proveedores WHERE Nombre_Proveedor = @NombreProveedor"
            Using commandProveedor As New MySqlCommand(sqlProveedor, connection)
                commandProveedor.Parameters.AddWithValue("@NombreProveedor", proveedor)
                Dim result As Object = commandProveedor.ExecuteScalar()
                If result IsNot Nothing Then
                    idProveedor = Convert.ToInt32(result)
                Else
                    idProveedor = 0 ' Valor predeterminado si no se encuentra un proveedor válido
                End If
            End Using

            ' Determinar el ID del departamento basado en la selección en el ComboBox CbxDepartamento
            Dim idDepartamento As Integer
            Dim sqlDepartamento As String = "SELECT ID_Departamento FROM departamentos WHERE Nombre_Departamento = @NombreDepartamento"
            Using commandDepartamento As New MySqlCommand(sqlDepartamento, connection)
                commandDepartamento.Parameters.AddWithValue("@NombreDepartamento", CbxDepartamento.SelectedItem.ToString())
                Dim result As Object = commandDepartamento.ExecuteScalar()
                If result IsNot Nothing Then
                    idDepartamento = Convert.ToInt32(result)
                Else
                    idDepartamento = 0 ' Valor predeterminado si no se encuentra un departamento válido
                End If
            End Using

            ' Cálculo de depreciación según el método seleccionado en el ComboBox
            Dim anioRegistro As Integer = DteFecha.Value.Year
            Dim anioActual As Integer = DateTime.Now.Year
            Dim aniosTranscurridos As Integer = anioActual - anioRegistro
            Dim vidaUtilRestante As Integer = vidautil - aniosTranscurridos


            If vidaUtilRestante <= 0 Then
                vidaUtilRestante = 0
                precio = 0
            Else
                If idDepreciacion = 3 Then
                    ' Método de Suma de dígitos de los años
                    Dim unidadSalvamento As Decimal = 100
                    sumadeanos = (vidautil * (vidautil + 1)) / 2
                    depreciacionAnual = (vidaUtilRestante / sumadeanos) * (precio - unidadSalvamento)
                    precio -= depreciacionAnual

                ElseIf idDepreciacion = 2 Then
                    ' Método de Unidades producidas
                    Dim totalUnidade As Integer = 20
                    Dim unidadesProducida As Integer = 10
                    Dim costoPorUnidad As Decimal = (precio - 100) / totalUnidade
                    depreciacionAnual = costoPorUnidad * unidadesProducida
                    precio -= depreciacionAnual

                ElseIf idDepreciacion = 1 Then
                    ' Método de Línea recta
                    depreciacionAnual = (precio - 100) / vidaUtilRestante
                    precio -= depreciacionAnual
                End If

                If precio < 0 Then
                    precio = 0
                End If
            End If

            ' Mostrar el valor calculado en TxtCalcular
            TxtCalcular.Text = precio

            ' Actualizar Cantidad_Producto en la tabla productos si el usuario cambia el valor
            Dim sqlUpdateCantidad As String = "UPDATE productos SET Stock = @Cantidad_Producto WHERE Codigo = @Codigo_Producto"
            Dim commandUpdateCantidad As New MySqlCommand(sqlUpdateCantidad, connection)
            commandUpdateCantidad.Parameters.AddWithValue("@Cantidad_Producto", cantidadActual)
            commandUpdateCantidad.Parameters.AddWithValue("@Codigo_Producto", codigo)
            commandUpdateCantidad.ExecuteNonQuery()
            Dim codigo1 As String = TxtCodigo.Text
            Dim sqlProductos As String = "SELECT Stock FROM productos WHERE Codigo = @Codigo_Producto"
            Dim commandProductos As New MySqlCommand(sqlProductos, connection)
            commandProductos.Parameters.AddWithValue("@Codigo_Producto", codigo1)
            Dim fecha As String = DteFecha.Value.ToString("yyyy-MM-dd")            ' Leer el stock del producto
            Dim stock As Integer = 0
            Dim readerProductos As MySqlDataReader = commandProductos.ExecuteReader()
            If readerProductos.Read() Then
                stock = Convert.ToInt32(readerProductos("Stock"))
            End If
            readerProductos.Close()

            ' Declarar el objeto Random una vez fuera del bucle
            Dim random As New Random()

            ' Insertar tantas veces como unidades en el stock
            For i As Integer = 1 To stock
                Dim placa As String = GenerarCodigoPlaca(5, random)
                Dim serie As String = GenerarCodigoSerie(5, random)


                ' Insertar cada unidad en la tabla bienes_patrimoniales con Placa y Serie únicas
                Dim sqlInsert As String = "INSERT INTO bienes_patrimoniales (Codigo_Producto, Proveedor_ID, Departamento_ID, Depreciacion, Descripcion, Marca, Modelo, Placa, Serie, Fecha) " &
                                      "VALUES (@Codigo_Producto, @Proveedor_ID, @Departamento_ID, @Depreciacion, @Descripcion, @Marca, @Modelo, @Placa, @Serie, @Fecha)"
                Dim commandInsert As New MySqlCommand(sqlInsert, connection)
                commandInsert.Parameters.AddWithValue("@Codigo_Producto", codigo)
                commandInsert.Parameters.AddWithValue("@Proveedor_ID", idProveedor)
                commandInsert.Parameters.AddWithValue("@Departamento_ID", idDepartamento)
                commandInsert.Parameters.AddWithValue("@Depreciacion", precio)
                commandInsert.Parameters.AddWithValue("@Descripcion", descripcion)
                commandInsert.Parameters.AddWithValue("@Marca", marca)
                commandInsert.Parameters.AddWithValue("@Modelo", modelo)
                commandInsert.Parameters.AddWithValue("@Placa", placa)
                commandInsert.Parameters.AddWithValue("@Serie", serie)
                commandInsert.Parameters.AddWithValue("@fecha", fecha)

                ' Ejecutar el comando de inserción
                commandInsert.ExecuteNonQuery()
            Next

            MessageBox.Show("Datos guardados correctamente", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
            TxtCodigo.Text = ""
            CbxProveedor.Text = ""
            CbxDepartamento.Text = ""
            TxtPrecio.Text = ""
            TxtDescripcion.Text = ""
            TxtMarca.Text = ""
            TxtModelo.Text = ""
            TxtPlaca.Text = ""
            TxtSerie.Text = ""
            DteFecha.Value = DateTime.Now '
            TxtCalcular.Text = ""
            CbxDepreciacion.Text = ""

        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message)
        Finally
            connection.Close()
        End Try
    End Sub

    ' Función para generar un código alfanumérico aleatorio de 6 caracteres
    Private Function GenerarCodigoPlaca(ByVal longitud As Integer, ByVal random As Random) As String
        Dim caracteres As String = "0123456789"
        Dim codigoPlaca As New Text.StringBuilder()

        For i As Integer = 1 To longitud
            Dim indice As Integer = random.Next(0, caracteres.Length)
            codigoPlaca.Append(caracteres(indice))
        Next

        Return codigoPlaca.ToString()
    End Function

    ' Función para generar un código de serie aleatorio de 8 caracteres
    Private Function GenerarCodigoSerie(ByVal longitud As Integer, ByVal random As Random) As String
        Dim caracteres As String = "0123456789"
        Dim codigoSerie As New Text.StringBuilder()

        For i As Integer = 1 To longitud
            Dim indice As Integer = random.Next(0, caracteres.Length)
            codigoSerie.Append(caracteres(indice))
        Next

        Return codigoSerie.ToString()
    End Function

    Private Sub BtnCambiar_Click(sender As Object, e As EventArgs) Handles BtnCambiar.Click
        Dim AF_Mostrar As New AF_Mostrar
        Dim AF_MainPage As New AF_MainPage
        AF_Mostrar.Show()

        AF_MainPage.Close()
    End Sub

    Private Sub TxtCantidad_TextChanged(sender As Object, e As EventArgs) Handles TxtCantidad.TextChanged
        ValidateNumbersOnly(TxtCantidad)
    End Sub

    Private Sub TxtCodigo_TextChanged(sender As Object, e As EventArgs) Handles TxtCodigo.TextChanged
        ValidateNumbersOnly(TxtCodigo)
    End Sub

    ' Validar números y letras
    Private Sub TxtModelo_TextChanged(sender As Object, e As EventArgs) Handles TxtModelo.TextChanged
        ValidateNumbersAndLettersOnly(TxtModelo)
    End Sub

    Private Sub TxtMarca_TextChanged(sender As Object, e As EventArgs) Handles TxtMarca.TextChanged
        ValidateNumbersAndLettersOnly(TxtMarca)
    End Sub

    Private Sub ValidateNumbersOnly(textBox As TextBox)
        Dim regex As New Regex("^[0-9]*$")
        If Not regex.IsMatch(textBox.Text) Then
            textBox.Text = regex.Replace(textBox.Text, "[^0-9]", "")
            textBox.SelectionStart = textBox.Text.Length
        End If
    End Sub

    Private Sub ValidateNumbersAndLettersOnly(textBox As TextBox)
        Dim regex As New Regex("^[a-zA-Z0-9]*$")
        If Not regex.IsMatch(textBox.Text) Then
            textBox.Text = regex.Replace(textBox.Text, "[^a-zA-Z0-9]", "")
            textBox.SelectionStart = textBox.Text.Length
        End If
    End Sub
End Class