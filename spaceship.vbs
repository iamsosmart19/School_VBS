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
	Dim i_key As Label
	Dim j_key As Label
	Dim k_key As Label
	Dim m_key As Label
	Dim spacedir As Decimal

	Sub New()
		'define dims
		Me.Size() = New Size(600, 400)
		Me.Name = "SPACE"
		Me.BackColor = Color.FromName("Navy")
		'Me.Controls.Add(OBJECTS)
		spaceshipI = New Bitmap("spaceship.png")

		spacedir = 1
		
		i_key = New Label
		i_key.Text = "I is Up, J is Left, K is Right, and M is Down"
		i_key.Location = New Point (400, 200)
		Me.Controls.Add(i_key)

		spaceship = New PictureBox()
		spaceship.Image = spaceshipI
		spaceship.Location = New Point (100, 100)
		spaceship.Size = New Size (50, 50)
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
			Case Keys.Up, Keys.W, Keys.I
				'Up
				spaceshipI.RotateFlip( (4 - (spacedir - 1) ) Mod 4)
				spacedir = 1
				If spaceship.Top > Me.Size.Height Then
					spaceship.Top = Me.Size.Height
				Else
					spaceship.Top -= 8
				End If

			Case Keys.Right, Keys.D, Keys.K
				'left
				spaceshipI.RotateFlip( (4 - (spacedir - 2) ) Mod 4)
				spacedir = 2
				If spaceship.Left > Me.Size.Width Then
					spaceship.Left = Me.Size.Width
				Else
					spaceship.Left += 8
				End If

			Case Keys.Down, Keys.S, Keys.M
				'down
				spaceshipI.RotateFlip( (4 - (spacedir - 3) ) Mod 4)
				spacedir = 3
				spaceship.Top += 8
				If spaceship.Top < 0 Then
					spaceship.Top = 0
				Else
					spaceship.Top += 8
				End If

			Case Keys.Left, Keys.A, Keys.J
				'right
				spaceshipI.RotateFlip( (4 - (spacedir - 4)) Mod 4)
				spacedir = 4
				If spaceship.Left < 0 Then
					spaceship.Left = 0
				Else 
					spaceship.Left -= 8
				End If

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
