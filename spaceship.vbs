' Distributed under the Open Source License
' Chris Ahn
'

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
	Dim spaceship As PictureBox
	Dim spaceshipI As Bitmap
	Dim spacedir As Decimal

	Sub New()
		'define dims
		Me.Size() = New Size(600, 400)
		Me.BackColor = Color.FromName("Navy")
		'Me.Controls.Add(OBJECTS)
		spaceshipI = New Bitmap("spaceship.png")

		spacedir = 1
		
		spaceship = New PictureBox()
		spaceship.Image = spaceshipI
		spaceship.Location = New Point (100, 100)
		spaceship.Size = New Size (34, 42)
		spaceship.SizeMode = 4
		Me.Controls.Add(spaceship)
	End Sub

	'Private Subs

	'End Sub

	Protected Overrides Function ProcessCmdKey(ByRef msg As Message, ByVal keyData As Keys) As Boolean
		'Activates whenever a key is pressed
		'0 0*
		'1 90*
		'2 180*
		'3 270

		Select Case keyData
			Case Keys.Up
				'Up
				spaceshipI.RotateFlip( (4 - (spacedir - 1) ) Mod 4)
				spacedir = 1
				spaceship.Top -= 8

			Case Keys.Right
				'left
				spaceshipI.RotateFlip( (4 - (spacedir - 2) ) Mod 4)
				spacedir = 2
				spaceship.Left += 8

			Case Keys.Down
				'down
				spaceshipI.RotateFlip( (4 - (spacedir - 3) ) Mod 4)
				spacedir = 3
				spaceship.Top += 8

			Case Keys.Left
				'right
				spaceshipI.RotateFlip( (4 - (spacedir - 4)) Mod 4)
				spacedir = 4
				spaceship.Left -= 8

		End Select
		spaceship.Image = spaceshipI
		Return MyBase.ProcessCmdKey(msg, keyData)
	End Function

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
