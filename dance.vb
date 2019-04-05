Imports System.Windows
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel

Public Class CustomForm
	Inherits Form
 	Dim ChickenBox as PictureBox
	Dim WithEvents ChickenTimer as Timer
	Dim Chicken1 as Image
	Dim Chicken2 as Image
	Dim ChickenState as Integer
	Sub New()
		Me.Size = New Size (1000,1000)
		Chicken1 = Image.FromFile("Chicken1.jpg")
		Chicken2 = Image.FromFile("Chicken2.jpg")
		ChickenBox = New PictureBox
		ChickenBox.Size = New Size (1000, 1000)
		ChickenBox.Image = Chicken2
		ChickenBox.Location = New Point (0, 0)
		ChickenState = 2
		ChickenTimer = New Timer
		ChickenTimer.Interval = 500
		ChickenTimer.Start()
		'define dims
		'Me.Size() = New Size()
		Me.Size = New Size (456, 470)
		Me.Controls.Add(ChickenBox)
	End Sub

	'Private Subs
	Private Sub ChickenTick(sender As Object, e as EventArgs) Handles ChickenTimer.Tick
		If ChickenState = 1
		   ChickenState = 2
		   ChickenBox.Image = Chicken2
		Else
	 	   ChickenState = 1
		   ChickenBox.Image = Chicken1
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
