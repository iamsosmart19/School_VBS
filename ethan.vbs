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
      Me.Controls.Add(button1)
      End Sub
  
      Private Sub button1_click(sender As Object, e As EventArgs) Handles button1.Click
                MessageBox.Show("Error. System error.")
      End Sub

      Sub Main()
            Application.Run(New CustomForm)
      End Sub
End Class

Module Formy
      Sub Main()
            Dim a = New CustomForm
      a.Main()
    End Sub
End Module
