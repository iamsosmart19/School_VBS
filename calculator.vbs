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
        Dim WithEvents buttonplus As Button
        Dim WithEvents buttonminus As Button
        Dim WithEvents buttontimes As Button
        Dim WithEvents buttondivide As Button
        Dim WithEvents buttonequals As Button
        Dim WithEvents buttonclear As Button
        Dim WithEvents buttonallclear As Button
        Dim results As Label
        Dim numresult As Decimal
        Dim prev As Decimal
        Dim op As String
        Dim buttonSize As Size
      
        Sub New()
            Me.Size = New Size (120, 150)
            buttonSize = New Size (20, 20)
            Numresult = 0
            results = New Label
            results.Location = New Point (10, 10)
        
            button7 = New Button
            button7.Location = New Point (10, 40)
            button7.Text = "7"
            button7.Size = buttonSize
            button8 = New Button
            button8.Location = New Point (30, 40)
            button8.Text = "8"
            button8.Size = buttonSize
            button9 = New Button
            button9.Location = New Point (50, 40)
            button9.Text = "9"
            button9.Size = buttonSize
            buttontimes = New Button
            buttontimes.Location = New Point (70, 40)
            buttontimes.Text = "*"
            buttontimes.Size = buttonSize
            buttonclear = New Button
            buttonclear.Location = New Point (90, 40)
            buttonclear.Text = "C"
            buttonclear.Size = buttonSize
            button4 = New Button
            button4.Location = New Point (10, 60)
            button4.Text = "4"
            button4.Size = buttonSize
            button5 = New Button
            button5.Location = New Point (30, 60)
            button5.Text = "5"
            button5.Size = buttonSize
            button6 = New Button
            button6.Location = New Point (50, 60)
            button6.Text = "6"
            button6.Size = buttonSize
            buttondivide = New Button
            buttondivide.Location = New Point (70, 60)
            buttondivide.Text = "/"
            buttondivide.Size = buttonSize
            buttonallclear = New Button
            buttonallclear.Location = New Point (90, 60)
            buttonallclear.Text = "AC"
            buttonallclear.Size = buttonSize
            button1 = New Button
            button1.Location = New Point (10, 80)
            button1.Text = "1"
            button1.Size = buttonSize
            button2 = New Button
            button2.Location = New Point (30, 80)
            button2.Text = "2"
            button2.Size = buttonSize
            button3 = New Button
            button3.Location = New Point (50, 80)
            button3.Text = "3"
            button3.Size = buttonSize
            buttonplus = New Button
            buttonplus.Location = New Point (70, 80)
            buttonplus.Text = "+"
            buttonplus.Size = buttonSize
            buttonequals = New Button
            buttonequals.Location = New Point (90, 80)
            buttonequals.Text = "="
            buttonequals.Size = New Size (20, 40)
            button0 = New Button
            button0.Location = New Point (10, 100)
            button0.Text = "0"
            button0.Size = buttonSize
            buttonminus = New Button
            buttonminus.Location = New Point (70, 100)
            buttonminus.Text = "-"
            buttonminus.Size = buttonSize
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
            Me.Controls.Add(buttonplus)
            Me.Controls.Add(buttonminus)
            Me.Controls.Add(buttonequals)
            Me.Controls.Add(buttonclear)
            Me.Controls.Add(buttonallclear)
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

        Private Sub buttontimes_click(sender As Object, e As EventArgs) Handles buttontimes.Click
            prev = numresult
            numresult = 0
            op = "*"
        End Sub

        Private Sub buttondivide_click(sender As Object, e As EventArgs) Handles buttondivide.Click
            prev = numresult
            numresult = 0
            op = "/"
        End Sub

        Private Sub buttonplus_click(sender As Object, e As EventArgs) Handles buttonplus.Click
            prev = numresult
            numresult = 0
            op = "+"
        End Sub

        Private Sub buttonminus_click(sender As Object, e As EventArgs) Handles buttonminus.Click
            prev = numresult
            numresult = 0
            op = "-"
        End Sub 
        
        Private Sub buttonequals_click(sender As Object, e As EventArgs) Handles buttonequals.Click
            Dim temp = numresult
            If (op = "*") Then
                numresult = prev * numresult
            ElseIf (op = "/") Then
                numresult = prev / numresult
            ElseIf (op = "+")
                numresult = prev + numresult
            ElseIf (op = "-")
                numresult = prev - numresult
            End If
            prev = temp
            updateResults()
        End Sub

        Private Sub buttonclear_click(sender As Object, e As EventArgs) Handles buttonclear.Click
            numresult = 0
            updateResults()
        End Sub

        Private Sub buttonallclear_click(sender As Object, e As EventArgs) Handles buttonallclear.Click
            prev = 0
            numresult = 0
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
