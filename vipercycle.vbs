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
	Dim WithEvents movingTimer As Timer
	Dim Car As PictureBox

	Sub New()
		'define dims
		'Me.Size() = New Size()
		'Me.Controls.Add(OBJECTS)
		Car = New PictureBox()
		Car.Image = Image.FromFile("Chicken1.jpg")
		Car.Location = New Point (5, 5)
		Car.AutoSize = 1
		Me.Controls.Add(Car)

		movingTimer = New Timer
		movingTimer.Interval = 50
		movingTimer.Start()
	End Sub

	'Private Subs

	Private Sub movingTimer_tick(ByVal Sender as System.Object, ByVal e As System.EventArgs) Handles movingTimer.Tick
		Car.Left += 2
	End Sub

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
