Imports System.Windows.Forms
Imports System.Windows
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel

Class CustomForm
	Inherits Form
	Dim WithEvents button1 As Button
      
	Sub New()
		button1 = New Button
		button1.Text = "Have Some Fun!"
		button1.Location = New Point (10, 0)
		Me.Controls.Add(button1)
	End Sub
   
	Private Sub button1_click(sender As Object, e As EventArgs) Handles button1.Click
		MessageBox.Show("Error. System error.")
	End Sub

	Sub Main()
		Application.Run(New CustomForm)
	End Sub
End Class

Module Forms
	Sub Main()
		Dim a = New CustomForm
		a.Main()
	End Sub
End Module
