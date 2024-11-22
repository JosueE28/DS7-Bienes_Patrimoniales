﻿Imports System.Data.SqlClient
Imports Mysqlx
Imports MySql.Data.MySqlClient
Imports System.Numerics


Public Class AF_Mostrar
    Dim connectionString As String = "Server=localhost;Database=proyecto_db;Uid=userdb;Pwd=passworddb;"
    Dim connection As New MySqlConnection(connectionString)

    Private Sub Form3_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        Try
            connection.Open()
            MessageBox.Show("Conexión exitosa")
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message)
        Finally
            connection.Close()
        End Try

    End Sub

    Private Sub BtnDesplegar_Click(sender As Object, e As EventArgs) Handles BtnDesplegar.Click
        Dim idDepartamento As Integer = 0
        Dim departamentoSeleccionado As String = CbxDepartamento.SelectedItem.ToString()

        ' Asignar el ID del departamento según el nombre seleccionado en el ComboBox
        Select Case departamentoSeleccionado
            Case "Tecnologia"
                idDepartamento = 1
            Case "Contabilidad"
                idDepartamento = 2
            Case "Compras"
                idDepartamento = 3
            Case "Bienes Patrimoniales"
                idDepartamento = 4
            Case "Recursos Humanos"
                idDepartamento = 5
            Case Else
                MessageBox.Show("Selecciona un departamento válido")
                Exit Sub
        End Select

        ' Cadena de conexión a la base de datos (ajusta los valores según tu configuración)
        Dim conexion As MySqlConnection = New MySqlConnection("Server=localhost;Database=proyecto_db;Uid=userdb;Pwd=passworddb;")

        Try
            conexion.Open()

            ' Consulta SQL para obtener los bienes patrimoniales según el Departamento_ID
            Dim consulta As String = "SELECT * FROM bienes_patrimoniales WHERE Departamento_ID = @idDepartamento"
            Dim comando As MySqlCommand = New MySqlCommand(consulta, conexion)
            comando.Parameters.AddWithValue("@idDepartamento", idDepartamento)

            Dim adapter As MySqlDataAdapter = New MySqlDataAdapter(comando)
            Dim tabla As DataTable = New DataTable()

            adapter.Fill(tabla)

            ' Mostrar los datos en el DataGridView
            DtaBienespatrimoniales.DataSource = tabla

        Catch ex As MySqlException
            MessageBox.Show("Error al conectar con la base de datos: " & ex.Message)
        Finally
            conexion.Close()
        End Try
    End Sub

    Private Sub DtaBienespatrimoniales_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DtaBienespatrimoniales.CellContentClick

    End Sub
End Class