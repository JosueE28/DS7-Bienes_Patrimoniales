<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AF_MainPage
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.NavBarPanel = New System.Windows.Forms.Panel()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.TitleLabel = New System.Windows.Forms.Label()
        Me.TxtCodigo = New System.Windows.Forms.TextBox()
        Me.CbxDepreciacion = New System.Windows.Forms.ComboBox()
        Me.TxtDescripcion = New System.Windows.Forms.TextBox()
        Me.BtnGuardar = New System.Windows.Forms.Button()
        Me.BtnBuscar = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.TxtPlaca = New System.Windows.Forms.TextBox()
        Me.TxtSerie = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Serie = New System.Windows.Forms.Label()
        Me.CbxDepartamento = New System.Windows.Forms.ComboBox()
        Me.TxtPrecio = New System.Windows.Forms.TextBox()
        Me.TxtModelo = New System.Windows.Forms.TextBox()
        Me.TxtMarca = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.DteFecha = New System.Windows.Forms.DateTimePicker()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.TxtCalcular = New System.Windows.Forms.TextBox()
        Me.Label15 = New System.Windows.Forms.Label()
        Me.TxtCantidad = New System.Windows.Forms.TextBox()
        Me.Label16 = New System.Windows.Forms.Label()
        Me.CbxProveedor = New System.Windows.Forms.ComboBox()
        Me.BtnCambiar = New System.Windows.Forms.Button()
        Me.NavBarPanel.SuspendLayout()
        Me.SuspendLayout()
        '
        'NavBarPanel
        '
        Me.NavBarPanel.BackColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.NavBarPanel.Controls.Add(Me.Label12)
        Me.NavBarPanel.Controls.Add(Me.Label13)
        Me.NavBarPanel.Controls.Add(Me.Label14)
        Me.NavBarPanel.Controls.Add(Me.Label11)
        Me.NavBarPanel.Dock = System.Windows.Forms.DockStyle.Top
        Me.NavBarPanel.Location = New System.Drawing.Point(0, 0)
        Me.NavBarPanel.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.NavBarPanel.Name = "NavBarPanel"
        Me.NavBarPanel.Size = New System.Drawing.Size(584, 41)
        Me.NavBarPanel.TabIndex = 0
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label12.ForeColor = System.Drawing.Color.Gainsboro
        Me.Label12.Location = New System.Drawing.Point(529, 16)
        Me.Label12.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(48, 13)
        Me.Label12.TabIndex = 19
        Me.Label12.Text = "Compras"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label13.ForeColor = System.Drawing.Color.Gainsboro
        Me.Label13.Location = New System.Drawing.Point(476, 16)
        Me.Label13.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(39, 13)
        Me.Label13.TabIndex = 18
        Me.Label13.Text = "RRHH"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label14.ForeColor = System.Drawing.Color.Gainsboro
        Me.Label14.Location = New System.Drawing.Point(398, 16)
        Me.Label14.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(65, 13)
        Me.Label14.TabIndex = 17
        Me.Label14.Text = "Contabilidad"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.2!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label11.ForeColor = System.Drawing.Color.White
        Me.Label11.Location = New System.Drawing.Point(9, 16)
        Me.Label11.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(160, 17)
        Me.Label11.TabIndex = 14
        Me.Label11.Text = "Bienes Patrimoniales"
        '
        'TitleLabel
        '
        Me.TitleLabel.AutoSize = True
        Me.TitleLabel.Font = New System.Drawing.Font("Microsoft Sans Serif", 13.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TitleLabel.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.TitleLabel.Location = New System.Drawing.Point(198, 52)
        Me.TitleLabel.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.TitleLabel.Name = "TitleLabel"
        Me.TitleLabel.Size = New System.Drawing.Size(241, 24)
        Me.TitleLabel.TabIndex = 1
        Me.TitleLabel.Text = "Registro de Activos Fijos"
        '
        'TxtCodigo
        '
        Me.TxtCodigo.Location = New System.Drawing.Point(40, 115)
        Me.TxtCodigo.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtCodigo.MaxLength = 8
        Me.TxtCodigo.Name = "TxtCodigo"
        Me.TxtCodigo.Size = New System.Drawing.Size(155, 20)
        Me.TxtCodigo.TabIndex = 2
        '
        'CbxDepreciacion
        '
        Me.CbxDepreciacion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CbxDepreciacion.FormattingEnabled = True
        Me.CbxDepreciacion.Items.AddRange(New Object() {"Linea Recta", "Unidades producidas", "Suma de los digitos de los años"})
        Me.CbxDepreciacion.Location = New System.Drawing.Point(40, 409)
        Me.CbxDepreciacion.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.CbxDepreciacion.Name = "CbxDepreciacion"
        Me.CbxDepreciacion.Size = New System.Drawing.Size(150, 21)
        Me.CbxDepreciacion.TabIndex = 4
        '
        'TxtDescripcion
        '
        Me.TxtDescripcion.Enabled = False
        Me.TxtDescripcion.Location = New System.Drawing.Point(40, 162)
        Me.TxtDescripcion.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtDescripcion.Multiline = True
        Me.TxtDescripcion.Name = "TxtDescripcion"
        Me.TxtDescripcion.Size = New System.Drawing.Size(510, 50)
        Me.TxtDescripcion.TabIndex = 5
        '
        'BtnGuardar
        '
        Me.BtnGuardar.BackColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(0, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.BtnGuardar.ForeColor = System.Drawing.SystemColors.ButtonHighlight
        Me.BtnGuardar.Location = New System.Drawing.Point(202, 115)
        Me.BtnGuardar.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.BtnGuardar.Name = "BtnGuardar"
        Me.BtnGuardar.Size = New System.Drawing.Size(64, 21)
        Me.BtnGuardar.TabIndex = 10
        Me.BtnGuardar.Text = "Buscar"
        Me.BtnGuardar.UseVisualStyleBackColor = False
        '
        'BtnBuscar
        '
        Me.BtnBuscar.BackColor = System.Drawing.Color.DodgerBlue
        Me.BtnBuscar.ForeColor = System.Drawing.Color.Transparent
        Me.BtnBuscar.Location = New System.Drawing.Point(254, 438)
        Me.BtnBuscar.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.BtnBuscar.Name = "BtnBuscar"
        Me.BtnBuscar.Size = New System.Drawing.Size(64, 21)
        Me.BtnBuscar.TabIndex = 11
        Me.BtnBuscar.Text = "Guardar"
        Me.BtnBuscar.UseVisualStyleBackColor = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label1.Location = New System.Drawing.Point(38, 99)
        Me.Label1.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(46, 13)
        Me.Label1.TabIndex = 12
        Me.Label1.Text = "Codigo"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label2.Location = New System.Drawing.Point(38, 392)
        Me.Label2.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(146, 13)
        Me.Label2.TabIndex = 13
        Me.Label2.Text = "Método de Depreciación"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label3.Location = New System.Drawing.Point(38, 146)
        Me.Label3.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(74, 13)
        Me.Label3.TabIndex = 14
        Me.Label3.Text = "Descripción"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label4.Location = New System.Drawing.Point(38, 227)
        Me.Label4.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(43, 13)
        Me.Label4.TabIndex = 15
        Me.Label4.Text = "Precio"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label5.Location = New System.Drawing.Point(38, 338)
        Me.Label5.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(65, 13)
        Me.Label5.TabIndex = 16
        Me.Label5.Text = "Proveedor"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label6.Location = New System.Drawing.Point(219, 338)
        Me.Label6.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(86, 13)
        Me.Label6.TabIndex = 17
        Me.Label6.Text = "Departamento"
        '
        'TxtPlaca
        '
        Me.TxtPlaca.Enabled = False
        Me.TxtPlaca.Location = New System.Drawing.Point(400, 243)
        Me.TxtPlaca.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtPlaca.Name = "TxtPlaca"
        Me.TxtPlaca.Size = New System.Drawing.Size(150, 20)
        Me.TxtPlaca.TabIndex = 18
        '
        'TxtSerie
        '
        Me.TxtSerie.Enabled = False
        Me.TxtSerie.Location = New System.Drawing.Point(221, 243)
        Me.TxtSerie.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtSerie.Name = "TxtSerie"
        Me.TxtSerie.Size = New System.Drawing.Size(150, 20)
        Me.TxtSerie.TabIndex = 19
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label7.Location = New System.Drawing.Point(398, 227)
        Me.Label7.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(39, 13)
        Me.Label7.TabIndex = 20
        Me.Label7.Text = "Placa"
        '
        'Serie
        '
        Me.Serie.AutoSize = True
        Me.Serie.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Serie.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Serie.Location = New System.Drawing.Point(219, 227)
        Me.Serie.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Serie.Name = "Serie"
        Me.Serie.Size = New System.Drawing.Size(36, 13)
        Me.Serie.TabIndex = 21
        Me.Serie.Text = "Serie"
        '
        'CbxDepartamento
        '
        Me.CbxDepartamento.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CbxDepartamento.FormattingEnabled = True
        Me.CbxDepartamento.Items.AddRange(New Object() {"Tecnologia", "Contabilidad", "Compras", "Bienes Patrimoniales ", "Recursos humanos"})
        Me.CbxDepartamento.Location = New System.Drawing.Point(221, 354)
        Me.CbxDepartamento.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.CbxDepartamento.Name = "CbxDepartamento"
        Me.CbxDepartamento.Size = New System.Drawing.Size(150, 21)
        Me.CbxDepartamento.TabIndex = 22
        '
        'TxtPrecio
        '
        Me.TxtPrecio.Enabled = False
        Me.TxtPrecio.Location = New System.Drawing.Point(40, 243)
        Me.TxtPrecio.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtPrecio.Name = "TxtPrecio"
        Me.TxtPrecio.Size = New System.Drawing.Size(150, 20)
        Me.TxtPrecio.TabIndex = 23
        '
        'TxtModelo
        '
        Me.TxtModelo.Location = New System.Drawing.Point(40, 295)
        Me.TxtModelo.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtModelo.MaxLength = 8
        Me.TxtModelo.Name = "TxtModelo"
        Me.TxtModelo.Size = New System.Drawing.Size(150, 20)
        Me.TxtModelo.TabIndex = 24
        '
        'TxtMarca
        '
        Me.TxtMarca.Location = New System.Drawing.Point(221, 295)
        Me.TxtMarca.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtMarca.MaxLength = 8
        Me.TxtMarca.Name = "TxtMarca"
        Me.TxtMarca.Size = New System.Drawing.Size(150, 20)
        Me.TxtMarca.TabIndex = 25
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label8.Location = New System.Drawing.Point(219, 280)
        Me.Label8.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(42, 13)
        Me.Label8.TabIndex = 26
        Me.Label8.Text = "Marca"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label9.Location = New System.Drawing.Point(41, 276)
        Me.Label9.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(48, 13)
        Me.Label9.TabIndex = 27
        Me.Label9.Text = "Modelo"
        '
        'DteFecha
        '
        Me.DteFecha.Location = New System.Drawing.Point(363, 115)
        Me.DteFecha.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.DteFecha.Name = "DteFecha"
        Me.DteFecha.Size = New System.Drawing.Size(186, 20)
        Me.DteFecha.TabIndex = 28
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label10.Location = New System.Drawing.Point(361, 99)
        Me.Label10.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(42, 13)
        Me.Label10.TabIndex = 29
        Me.Label10.Text = "Fecha"
        '
        'TxtCalcular
        '
        Me.TxtCalcular.Enabled = False
        Me.TxtCalcular.Location = New System.Drawing.Point(400, 354)
        Me.TxtCalcular.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtCalcular.Name = "TxtCalcular"
        Me.TxtCalcular.Size = New System.Drawing.Size(150, 20)
        Me.TxtCalcular.TabIndex = 30
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label15.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label15.Location = New System.Drawing.Point(398, 279)
        Me.Label15.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(40, 13)
        Me.Label15.TabIndex = 32
        Me.Label15.Text = "Stock"
        '
        'TxtCantidad
        '
        Me.TxtCantidad.Location = New System.Drawing.Point(400, 295)
        Me.TxtCantidad.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.TxtCantidad.MaxLength = 8
        Me.TxtCantidad.Name = "TxtCantidad"
        Me.TxtCantidad.Size = New System.Drawing.Size(150, 20)
        Me.TxtCantidad.TabIndex = 31
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label16.ForeColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.Label16.Location = New System.Drawing.Point(395, 338)
        Me.Label16.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(86, 13)
        Me.Label16.TabIndex = 33
        Me.Label16.Text = " Depreciación"
        '
        'CbxProveedor
        '
        Me.CbxProveedor.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CbxProveedor.FormattingEnabled = True
        Me.CbxProveedor.Items.AddRange(New Object() {"Proveedor Tech", "Electro Suministros"})
        Me.CbxProveedor.Location = New System.Drawing.Point(40, 353)
        Me.CbxProveedor.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.CbxProveedor.Name = "CbxProveedor"
        Me.CbxProveedor.Size = New System.Drawing.Size(150, 21)
        Me.CbxProveedor.TabIndex = 34
        '
        'BtnCambiar
        '
        Me.BtnCambiar.BackColor = System.Drawing.SystemColors.ScrollBar
        Me.BtnCambiar.Location = New System.Drawing.Point(388, 440)
        Me.BtnCambiar.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.BtnCambiar.Name = "BtnCambiar"
        Me.BtnCambiar.Size = New System.Drawing.Size(160, 20)
        Me.BtnCambiar.TabIndex = 35
        Me.BtnCambiar.Text = "Siguiente"
        Me.BtnCambiar.UseVisualStyleBackColor = False
        '
        'AF_MainPage
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.HighlightText
        Me.ClientSize = New System.Drawing.Size(584, 520)
        Me.Controls.Add(Me.BtnCambiar)
        Me.Controls.Add(Me.CbxProveedor)
        Me.Controls.Add(Me.Label16)
        Me.Controls.Add(Me.Label15)
        Me.Controls.Add(Me.TxtCantidad)
        Me.Controls.Add(Me.TxtCalcular)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.DteFecha)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.TxtMarca)
        Me.Controls.Add(Me.TxtModelo)
        Me.Controls.Add(Me.TxtPrecio)
        Me.Controls.Add(Me.CbxDepartamento)
        Me.Controls.Add(Me.Serie)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.TxtSerie)
        Me.Controls.Add(Me.TxtPlaca)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.BtnBuscar)
        Me.Controls.Add(Me.BtnGuardar)
        Me.Controls.Add(Me.TxtDescripcion)
        Me.Controls.Add(Me.CbxDepreciacion)
        Me.Controls.Add(Me.TxtCodigo)
        Me.Controls.Add(Me.TitleLabel)
        Me.Controls.Add(Me.NavBarPanel)
        Me.Location = New System.Drawing.Point(120, 140)
        Me.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.Name = "AF_MainPage"
        Me.Text = "Form1"
        Me.NavBarPanel.ResumeLayout(False)
        Me.NavBarPanel.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents NavBarPanel As Panel
    Friend WithEvents TitleLabel As Label
    Friend WithEvents TxtCodigo As TextBox
    Friend WithEvents CbxDepreciacion As ComboBox
    Friend WithEvents TxtDescripcion As TextBox
    Friend WithEvents BtnGuardar As Button
    Friend WithEvents BtnBuscar As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents TxtPlaca As TextBox
    Friend WithEvents TxtSerie As TextBox
    Friend WithEvents Label7 As Label
    Friend WithEvents Serie As Label
    Friend WithEvents CbxDepartamento As ComboBox
    Friend WithEvents TxtPrecio As TextBox
    Friend WithEvents TxtModelo As TextBox
    Friend WithEvents TxtMarca As TextBox
    Friend WithEvents Label8 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents DteFecha As DateTimePicker
    Friend WithEvents Label10 As Label
    Friend WithEvents TxtCalcular As TextBox
    Friend WithEvents Label11 As Label
    Friend WithEvents Label12 As Label
    Friend WithEvents Label13 As Label
    Friend WithEvents Label14 As Label
    Friend WithEvents Label15 As Label
    Friend WithEvents TxtCantidad As TextBox
    Friend WithEvents Label16 As Label
    Friend WithEvents CbxProveedor As ComboBox
    Friend WithEvents BtnCambiar As Button
End Class

