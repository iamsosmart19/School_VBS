Imports System
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Drawing.Drawing2D

Public Class CustomForm
	Inherits Form
End Class
Module Forms
	Sub Main()
		Dim Form1 = New CustomForm
		Form1.Text = "at the top"
		'Form1.Controls.Add(thingy)
		Form1.ShowDialog()
	End Sub
End Module
