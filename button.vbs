Imports System
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel

Public Class CustomForm
	Inherits Form
End Class
Module Forms
	Sub Main()
		Dim Form1 = New CustomForm
		Form1.Text = "Buttons"
		Dim Button = New Button
		Button.Text = "Button"
		Button.AutoSize = 1
		Button.Location = New Point (5, 10)
		Form1.Controls.Add(Button)
		Form1.ShowDialog()
	End Sub
End Module
