<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class AF_Mostrar
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()>
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
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.DtaBienespatrimoniales = New System.Windows.Forms.DataGridView()
        Me.CbxDepartamento = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.BtnDesplegar = New System.Windows.Forms.Button()
        Me.NavBarPanel = New System.Windows.Forms.Panel()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        CType(Me.DtaBienespatrimoniales, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.NavBarPanel.SuspendLayout()
        Me.SuspendLayout()
        '
        'DtaBienespatrimoniales
        '
        Me.DtaBienespatrimoniales.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DtaBienespatrimoniales.Location = New System.Drawing.Point(28, 129)
        Me.DtaBienespatrimoniales.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.DtaBienespatrimoniales.Name = "DtaBienespatrimoniales"
        Me.DtaBienespatrimoniales.RowHeadersWidth = 51
        Me.DtaBienespatrimoniales.RowTemplate.Height = 24
        Me.DtaBienespatrimoniales.Size = New System.Drawing.Size(701, 373)
        Me.DtaBienespatrimoniales.TabIndex = 0
        '
        'CbxDepartamento
        '
        Me.CbxDepartamento.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.CbxDepartamento.FormattingEnabled = True
        Me.CbxDepartamento.Items.AddRange(New Object() {"Tecnologia", "Contabilidad", "Compras", "Bienes Patrimoniales", "Recursos Humanos"})
        Me.CbxDepartamento.Location = New System.Drawing.Point(214, 80)
        Me.CbxDepartamento.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.CbxDepartamento.Name = "CbxDepartamento"
        Me.CbxDepartamento.Size = New System.Drawing.Size(246, 21)
        Me.CbxDepartamento.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(212, 65)
        Me.Label1.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(86, 13)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Departamento"
        '
        'BtnDesplegar
        '
        Me.BtnDesplegar.BackColor = System.Drawing.Color.Blue
        Me.BtnDesplegar.ForeColor = System.Drawing.SystemColors.ButtonHighlight
        Me.BtnDesplegar.Location = New System.Drawing.Point(464, 77)
        Me.BtnDesplegar.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.BtnDesplegar.Name = "BtnDesplegar"
        Me.BtnDesplegar.Size = New System.Drawing.Size(84, 25)
        Me.BtnDesplegar.TabIndex = 3
        Me.BtnDesplegar.Text = "Desplegar"
        Me.BtnDesplegar.UseVisualStyleBackColor = False
        '
        'NavBarPanel
        '
        Me.NavBarPanel.BackColor = System.Drawing.Color.FromArgb(CType(CType(0, Byte), Integer), CType(CType(27, Byte), Integer), CType(CType(72, Byte), Integer))
        Me.NavBarPanel.Controls.Add(Me.Label5)
        Me.NavBarPanel.Controls.Add(Me.Label4)
        Me.NavBarPanel.Controls.Add(Me.Label3)
        Me.NavBarPanel.Controls.Add(Me.Label2)
        Me.NavBarPanel.Dock = System.Windows.Forms.DockStyle.Top
        Me.NavBarPanel.Location = New System.Drawing.Point(0, 0)
        Me.NavBarPanel.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.NavBarPanel.Name = "NavBarPanel"
        Me.NavBarPanel.Size = New System.Drawing.Size(755, 41)
        Me.NavBarPanel.TabIndex = 4
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.ForeColor = System.Drawing.Color.Gainsboro
        Me.Label5.Location = New System.Drawing.Point(697, 17)
        Me.Label5.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(48, 13)
        Me.Label5.TabIndex = 16
        Me.Label5.Text = "Compras"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.ForeColor = System.Drawing.Color.Gainsboro
        Me.Label4.Location = New System.Drawing.Point(646, 17)
        Me.Label4.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(39, 13)
        Me.Label4.TabIndex = 15
        Me.Label4.Text = "RRHH"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.Color.Gainsboro
        Me.Label3.Location = New System.Drawing.Point(566, 16)
        Me.Label3.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(65, 13)
        Me.Label3.TabIndex = 14
        Me.Label3.Text = "Contabilidad"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 10.2!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.White
        Me.Label2.Location = New System.Drawing.Point(9, 15)
        Me.Label2.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(160, 17)
        Me.Label2.TabIndex = 13
        Me.Label2.Text = "Bienes Patrimoniales"
        '
        'AF_Mostrar
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ControlLightLight
        Me.ClientSize = New System.Drawing.Size(755, 557)
        Me.Controls.Add(Me.NavBarPanel)
        Me.Controls.Add(Me.BtnDesplegar)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.CbxDepartamento)
        Me.Controls.Add(Me.DtaBienespatrimoniales)
        Me.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.Name = "AF_Mostrar"
        Me.Text = "Form3"
        CType(Me.DtaBienespatrimoniales, System.ComponentModel.ISupportInitialize).EndInit()
        Me.NavBarPanel.ResumeLayout(False)
        Me.NavBarPanel.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents DtaBienespatrimoniales As DataGridView
    Friend WithEvents CbxDepartamento As ComboBox
    Friend WithEvents Label1 As Label
    Friend WithEvents BtnDesplegar As Button
    Friend WithEvents NavBarPanel As Panel
    Friend WithEvents Label2 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
End Class
