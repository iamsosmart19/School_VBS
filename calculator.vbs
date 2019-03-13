Imports System.Windows.Forms
Imports System.Windows
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel

Class CustomForm
        Inherits Form
        Dim WithEvents button1 As Button
        Dim WithEvents button2 As Button
        Dim WithEvents button3 As Button
        Dim WithEvents button4 As Button
        Dim WithEvents button5 As Button
        Dim WithEvents button6 As Button
        Dim WithEvents button7 As Button
        Dim WithEvents button8 As Button
        Dim WithEvents button9 As Button
        Dim WithEvents button0 As Button
        'Dim WithEvents buttonplus As Button
        'Dim WithEvents buttonminus As Button
        Dim WithEvents buttontimes As Button
        Dim WithEvents buttondivide As Button
        Dim WithEvents buttonequals As Button
        Dim results As Label
        Dim numresult As Decimal
        Dim prev As Decimal
        Dim op As String
      
        Sub New()
            Me.Size = New Size (120, 150)

            numresult = 0
            results = New Label
            results.Location = New Point (10, 10)
        
            button7 = New Button
            button7.Location = New Point (10, 40)
            button7.Text = "7"
            button7.Size = New Size (20, 20)
            button8 = New Button
            button8.Location = New Point (30, 40)
            button8.Text = "8"
            button8.Size = New Size (20, 20)
            button9 = New Button
            button9.Location = New Point (50, 40)
            button9.Text = "9"
            button9.Size = New Size (20, 20)
            buttontimes = New Button
            buttontimes.Location = New Point (70, 40)
            buttontimes.Text = "*"
            buttontimes.Size = New Size (20, 20)
            button4 = New Button
            button4.Location = New Point (10, 60)
            button4.Text = "4"
            button4.Size = New Size (20, 20)
            button5 = New Button
            button5.Location = New Point (30, 60)
            button5.Text = "5"
            button5.Size = New Size (20, 20)
            button6 = New Button
            button6.Location = New Point (50, 60)
            button6.Text = "4"
            button6.Size = New Size (20, 20)
            buttondivide = New Button
            buttondivide.Location = New Point (70, 60)
            buttondivide.Text = "/"
            buttondivide.Size = New Size (20, 20)
            button1 = New Button
            button1.Location = New Point (10, 80)
            button1.Text = "1"
            button1.Size = New Size (20, 20)
            button2 = New Button
            button2.Location = New Point (30, 80)
            button2.Text = "2"
            button2.Size = New Size (20, 20)
            button3 = New Button
            button3.Location = New Point (50, 80)
            button3.Text = "3"
            button3.Size = New Size (20, 20)
            buttonequals = New Button
            buttonequals.Location = New Point (90, 80)
            buttonequals.Text = "="
            buttonequals.Size = New Size (20, 40)
            button0 = New Button
            button0.Location = New Point (10, 100)
            button0.Text = "0"
            button0.Size = New Size (20, 20)
            Me.Controls.Add(results)
            Me.Controls.Add(button0)
            Me.Controls.Add(button1)
            Me.Controls.Add(button2)
            Me.Controls.Add(button3)
            Me.Controls.Add(button4)
            Me.Controls.Add(button5)
            Me.Controls.Add(button6)
            Me.Controls.Add(button7)
            Me.Controls.Add(button8)
            Me.Controls.Add(button9)
            Me.Controls.Add(buttontimes)
            Me.Controls.Add(buttondivide)
            Me.Controls.Add(buttonequals)
        End Sub
   
        Private Sub button1_click(sender As Object, e As EventArgs) Handles button1.Click
            numresult = numresult * 10 + 1
            updateResults()
        End Sub

        Private Sub button2_click(sender As Object, e As EventArgs) Handles button2.Click
            numresult = numresult * 10 + 2
            updateResults()
        End Sub

        Private Sub button3_click(sender As Object, e As EventArgs) Handles button3.Click
            numresult = numresult * 10 + 3
            updateResults()
        End Sub

        Private Sub button4_click(sender As Object, e As EventArgs) Handles button4.Click
            numresult = numresult * 10 + 4
            updateResults()
        End Sub

        Private Sub button5_click(sender As Object, e As EventArgs) Handles button5.Click
            numresult = numresult * 10 + 5
            updateResults()
        End Sub

        Private Sub button6_click(sender As Object, e As EventArgs) Handles button6.Click
            numresult = numresult * 10 + 6
            updateResults()
        End Sub

        Private Sub button7_click(sender As Object, e As EventArgs) Handles button7.Click
            numresult = numresult * 10 + 7
            updateResults()
        End Sub

        Private Sub button8_click(sender As Object, e As EventArgs) Handles button8.Click
            numresult = numresult * 10 + 8
            updateResults()
        End Sub

        Private Sub button9_click(sender As Object, e As EventArgs) Handles button9.Click
            numresult = numresult * 10 + 9
            updateResults()
        End Sub

        Private Sub button0_click(sender As Object, e As EventArgs) Handles button0.Click
            numresult = numresult * 10
            updateResults()
        End Sub
        
        Private Sub updateResults()
                results.Text = Convert.toString(numresult)
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
