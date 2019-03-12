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
		Form1.Text = "visual basic gay"
		Dim Button1 = New Button
		Button1.Text = "HA GAYYYYYY"
		Button1.AutoSize = 1
		Button1.Location = New Point (0, 10)
		Form1.Controls.Add(Button1)
		Form1.ShowDialog()
	End Sub
End Module
