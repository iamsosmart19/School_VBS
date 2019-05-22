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
	Dim WithEvents piCurd as PictureBox
	Dim WithEvents mover as Timer
	Dim WithEvents startx As Button
	Dim lapa As Decimal
	Dim lapb As Decimal
	Dim labela As Label
	Dim labelb As Label
	'	Dim var_name As Decimal
	'	Dim var_name As Label

	Sub New() 'im ethan
		'define dims
		'Me.Size() = New Size()
		piCard = New PictureBox()
		piCard.image=Image.FromFile("Chicken1.jpg")
		piCard.SizeMode = PictureBoxSizeMode.AutoSize
		piCurd = New PictureBox()
		piCurd.image=Image.FromFile("Chicken2.jpg")
		piCurd.SizeMode = PictureBoxSizeMode.AutoSize
		startx = New Button()
		startx.Top = 450
		startx.Text = "go"
		lapa = 5
		lapb=5
		labela = New Label
		labelb = New Label
		labela.Text = Convert.ToString(lapa)
		labelb.Text = Convert.ToString(lapb)
		labela.Left = 400
		labelb.Left = 450
		labela.Top = 460
		labelb.Top = 0
		piCurd.Top = 500
		piCard.Left = Me.Width-piCard.Width
		piCurd.Left = Me.Width-piCurd.Width
		mover = New Timer()
		mover.Interval = 50
		'mover.Startx()
		Me.Controls.Add(piCard)
		Me.Controls.Add(piCurd)
		Me.Controls.Add(startx)
		Me.Controls.Add (labela)
		Me.Controls.Add(labelb)
		'Me.Controls.Add(OBJECTS) 'im ethan
	End Sub

	'Private Subs
	Private Sub mover_tick(sender As System.Object, e As System.EventArgs) Handles mover.Tick
		If Int(Rnd() * 2) = 0 Then
		piCard.Left -= 8
		Else
		piCurd.Left -= 8
		End If
		System.Console.Write(lapa)
		System.Console.Write(lapb)
	End Sub

	Private Sub a_move(sender As System.Object, e As System.EventArgs) Handles piCard.LocationChanged
		If piCard.Left <= -piCard.Width Then
		   System.Console.Write ("aa")
		   lapa -=0.5
		   labela.Text = 		   Convert.ToString(lapa)
		   If lapa = 0 Or lapb = 0 Then
		      mover.Stop()
		      msgTime()
		   End If
		   piCard.Left = Me.Width
		   System.Console.Write(piCard.Left)
		End If 'im ethan
	End Sub

	Private Sub b_move(sender As System.Object, e As System.EventArgs) Handles piCurd.LocationChanged
		If piCurd.Left <= -piCurd.Width Then
		   lapb -= 0.5
		   labelb.Text = 		   Convert.ToString(lapb)
If lapa = 0 Or lapb = 0 Then
		      mover.Stop()
		      msgTime()
		   End If
		   piCurd.Left = Me.Width
		End If 'im ethan
	End Sub

	Private Sub startxem(sender As System.Object, e As System.EventArgs) Handles startx.Click
		mover.Start()

	End Sub
	Private Sub msgTime()
		If lapa = 0 Then
		   MessageBox.Show("car a wins")
		Else
	    MessageBox.Show( "car b wins")
	    End If
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
