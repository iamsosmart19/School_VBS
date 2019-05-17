Imports System.Windows
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel
'THIS WAS WRITTEN BY HAND
'NO DRAG, NO DROP
'WINDOWS USERS EAT YOUR HEART OUT
'Distributed under the MIT License, a copy of which you should have received with this program
'Copyright (C) 2019 Ethan du Toit
Public Class CustomForm
	Inherits Form
	'Dim declarations
	'Examples:
	Dim WithEvents piCard as PictureBox
	Dim WithEvents mover as Timer
	'	Dim var_name As Decimal
	'	Dim var_name As Label

	Sub New() 'im ethan
		'define dims
		'Me.Size() = New Size()
		piCard = New PictureBox()
		piCard.image=Image.FromFile("Chicken1.jpg")
		piCard.SizeMode = PictureBoxSizeMode.AutoSize
		mover = New Timer()
		mover.Interval = 50
		mover.Start()
		Me.Controls.Add(piCard)
		'Me.Controls.Add(OBJECTS) 'im ethan
	End Sub

	'Private Subs
	Private Sub mover_tick(sender As System.Object, e As System.EventArgs) Handles mover.Tick
		piCard.Left += 2
	End Sub

	Private Sub mover_move(sender As System.Object, e As System.EventArgs) Handles piCard.LocationChanged
		If piCard.Left >= Me.Width Then
		   piCard.Left = -piCard.Width
		End If 'im ethan
	End Sub

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
