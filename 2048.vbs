Imports System.Windows
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel

Public Class CustomForm
	Inherits Form
	'Dim declarations
	'Examples:
	'	Dim WithEvents var_name As Button
	'	Dim var_name As Decimal
	'	Dim var_name As Label
	Dim Boxes(0 to 3, 0 to 3) As Label

	Sub New()
		'define dims
		Me.Size() = New Size (800, 900)
		Dim BoxSize As Size = New Size (40, 40)

		For i As Decimal = 0 to 3
			For j As Decimal = 0 to 3
				Boxes(i, j) = New Label()
				Boxes(i, j).Location = New Point (20 + 40 * i, 20 + 40 * j)
				Boxes(i, j).Size = BoxSize
				Boxes(i, j).Text = "lol"
				Me.Controls.Add(Boxes(i, j))
			Next j
		Next i

		'Me.Controls.Add(OBJECTS)
	End Sub

	'Private Subs

	'End Sub

	Sub Main()
		Application.Run(New CustomForm)
	End Sub
End Class

Module Forms
	Sub Main() 
		Dim MainOb = New CustomForm
		MainOb.Main()
	End Sub
End Module
