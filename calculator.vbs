Imports System.Windows.Forms
Imports System.Windows
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel

Class CustomForm
        Inherits Form
        Dim WithEvents button1 As Button
        Dim textbox1 As TextBox
        Dim textbox2 As TextBox
      
        Sub New()
                textbox1 = New TextBox
                textbox1.Location = New Point (10, 10)
                textbox2 = New TextBox
                textbox2.Location = New Point (110, 10)
                button1  = New Button
                button1.Location = New Point (60, 50)
                button1.Text = "Add!"
                Me.Controls.Add(button1)
                Me.Controls.Add(textbox1)
                Me.Controls.Add(textbox2)
        End Sub
   
        Private Sub button1_click(sender As Object, e As EventArgs) Handles button1.Click
                MessageBox.Show(Convert.toDecimal(textbox1.Text) + Convert.toDecimal(textbox2.Text))
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
