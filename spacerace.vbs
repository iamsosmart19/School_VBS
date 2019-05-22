'undder the Open Source License
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
	Dim ship1 As PictureBox
	Dim ship2 As PictureBox
	Dim shipImage As Image
	Dim ship1Label As Label
	Dim ship2Label As Label
	Dim winner As Label
	Dim spacedir As Decimal
	Dim started As Decimal
	Dim ship1Laps = 0
	Dim ship2Laps = 0
	Dim WithEvents startButton As Button
	Dim WithEvents movingTimer As Timer

	Sub New()
		'define dims
		Me.Size() = New Size(600, 400)
		Me.Text = "SPACE"
		Me.BackColor = Color.FromName("Navy")
		'Me.Controls.Add(OBJECTS)

		started = 0

		shipImage = New Bitmap("spaceship.png")
		shipImage.RotateFlip(1)
		
		ship1 = New PictureBox()
		ship1.Image = shipImage 
		ship1.Location = New Point (100, 50)
		ship1.Size = New Size (50, 50)
		ship1.SizeMode = 4
		Me.Controls.Add(ship1)

		ship1Label = New Label
		ship1Label.Text = ship1Laps
		ship1Label.Location = New Point (100, 75)
		Me.Controls.Add(ship1Label)

		ship2 = New PictureBox()
		ship2.Image = shipImage
		ship2.Location = New Point (100, 150)
		ship2.Size = New Size (50, 50)
		ship2.SizeMode = 4
		Me.Controls.Add(ship2)

		ship2Label = New Label
		ship2Label.Text = ship1Laps
		ship2Label.Location = New Point (100, 175)
		Me.Controls.Add(ship2Label)

		winner = New Label
		winner.Text = ""
		winner.Location = New Point (200, 300)
		Me.Controls.Add(winner)

		startButton = New Button
		startButton.Text = "Start"
		startButton.AutoSize = 1
		startButton.Location = New Point (100, 300)
		Me.Controls.Add(startButton)

		movingTimer = New Timer
		movingTimer.Interval = 50
	End Sub

	'Private Subs
	Private Sub movingTimer_tick(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles movingTimer.Tick
		ship1.Left += Rnd * 50 Mod 100
		ship2.Left += Rnd * 50 Mod 100
		If (ship1.Left > Me.Size.Width) Then
			ship1.Location = New Point (100, 50)
			ship1Laps += 1
			ship1Label.Text = ship1laps
		End If
		If (ship2.Left > Me.Size.Width) Then
			ship2.Location = New Point (100, 150)
			ship2Laps += 1
			ship2Label.Text = ship2Laps
		End If
		If ship1Laps = 4
			movingTimer.Stop()
			winner.Text = "Ship 1 Wins!"
		End If
		If ship2Laps = 4
			movingTimer.Stop()
			winner.Text = "Ship 2 Wins!"
		End If
	End Sub
	'End Sub

	Private Sub startButton_click(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles startButton.Click
		If started = 0 Then
			movingTimer.Start()
			started = 1
		Else 
			movingTimer.Stop()
			started = 0
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
