' Distributed under the Open Source License
' Chris Ahn

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
	Dim WithEvents Say As Button
	Dim WithEvents Clr As Button
	Dim WithEvents moveto As Button
	Dim pelican As PictureBox
	Dim pelicanImage As Image
	Dim SelectAnimation As Label
	Dim X As Label
	Dim Y As Label
	Dim speech As TextBox
	Dim xValue As NumericUpDown
	Dim yValue As NumericUpDown

	Sub New()
		'define dims
		'Me.Size() = New Size()
		'Me.Controls.Add(OBJECTS)
		Me.Size() = New Size(600, 400)

		Dim tempImage As New Bitmap("pelican.jpg")
		Dim pelicanImage = New Bitmap(tempImage, CInt(tempImage.Width/8), CInt(tempImage.Height/8))

		pelican = New PictureBox()
		pelican.Location = New Point(50, 100)
		pelican.Image = pelicanImage
		pelican.autoSize = true
		Me.Controls.Add(pelican)
		
		SelectAnimation = New Label()
		SelectAnimation.Location = New Point(290, 30)
		SelectAnimation.Text = "Select An Animation"
		Me.Controls.Add(SelectAnimation)

		Say = New Button()
		Say.Location = New Point(270, 110)
		Say.Text = "&Say This"
		Me.Controls.Add(Say)

		Clr = New Button()
		Clr.Location = New Point(350, 110)
		Clr.Text = "&Clear"
		Me.Controls.Add(Clr)

		speech = New TextBox()
		speech.Location = New Point(300, 150)
		speech.Multiline = true
		speech.ScrollBars = 1
		speech.Text = ""
		Me.Controls.Add(speech)
		
		moveto = New Button()
		moveto.Location = New Point(315, 190)
		moveto.Text = "&Move To"
		Me.Controls.Add(moveto)

		X = New Label()
		X.Location = New Point(270, 230)
		X.Text = "X"
		Me.Controls.Add(X)
		
		xValue = New NumericUpDown()
		xValue.Location = New Point(270, 260)
		xValue.Value = pelican.Left
		Me.Controls.Add(xValue)

		Y = New Label()
		Y.Location = New Point(400, 230)
		Y.Text = "Y"
		Me.Controls.Add(Y)
		
		yValue = New NumericUpDown()
		yValue.Location = New Point(400, 260)
		yValue.Value = pelican.Top
		Me.Controls.Add(yValue)
	End Sub

	'Private Subs
	Private Sub Clr_click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Clr.Click
		Speech.Text = ""
	End Sub

	Private Sub Say_click(sender As Object, e As System.EventArgs) Handles Say.Click
		If Speech.Text <> "" Then
			MessageBox.Show(CStr(speech.Text))
		End If
	End Sub

	Sub MoveTo_click(sender As Object, e As System.EventArgs) Handles moveto.Click
		pelican.Left = Me.xValue.Value
		pelican.Top = Me.yValue.Value
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
