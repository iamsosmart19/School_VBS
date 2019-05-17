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
	Dim vsauce As PictureBox
	Dim WithEvents nextMeme As Button
	Dim currentMeme As Decimal

	Sub New()
		'define dims
		'Me.Size() = New Size()
		'Me.Controls.Add(OBJECTS)
		currentMeme = 1

		vsauce = New PictureBox
		vsauce.Location = New Point (5, 5) 
		vsauce.Size = New Size (580, 326)
		vsauce.Image = Image.FromFile("giphy" + currentMeme  + ".gif")
		Me.Controls.Add(vsauce)

		nextMeme = New Button()
		nextMeme.Location = New Point (25, 340)
		nextMeme.Text = "Next! Meme!"
		nextMeme.AutoSize = 1
		Me.Controls.Add(nextMeme)
		Me.Size = New Size (600, 400)

	End Sub

	'Private Subs

	'End Sub

	Sub nextMeme_click(sender as Object, e As System.EventArgs) Handles nextMeme.Click
		currentMeme = (currentMeme + 1) % 2
		vsauce.Image = Image.FromFile("giphy" + currentMeme + ".gif")
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
