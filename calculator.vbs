Imports System.Windows.Forms
Imports System.Windows
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel
Imports System.Math  

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
        Dim WithEvents buttondecimal As Button
        Dim WithEvents buttonplusminus As Button
        Dim decimoff As Integer
        Dim decilevel As Decimal
        Dim posneg As Integer
        Dim results As Label
        Dim numresult As Decimal
        Dim prev As Decimal
        Dim op As Char
        Dim buttonSize As Size
	Dim scale_x As Decimal
	Dim scale_y As Decimal
	
        Sub New()
	    scale_x = 3
	    scale_y = 3
            Me.Size = New Size (scale_x * 120, scale_y * 150)
            numresult = 0
            results = New Label
            posneg = 1
            decimoff = 10
            decilevel = 1

            AddHandler Me.Resize, AddressOf resize
	
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
            Me.Controls.Add(buttonplusminus)
            Me.Controls.Add(buttondecimal)
        End Sub

	Private Sub updateScreen()
            results.Location = New Point (Floor(scale_x * 10), Floor(scale_y * 10))
	    results.Size = New Size (Floor(110 * scale_x), Floor(scale_y * 30))
	    Me.Font = New Font (Me.Font.FontFamily, Me.Font.Size * Floor((scale_x + scale_y)/2))
	    buttonSize = New Size (Floor(scale_x * 20), Floor(scale_y * 20))	
            button7 = New Button
            button7.Location = New Point (Floor(scale_x * 10), Floor(scale_y * 40))
            button7.Text = "7"
            button7.Size = buttonSize
            button8 = New Button
            button8.Location = New Point (Floor(scale_x * 30), Floor(scale_y * 40))
            button8.Text = "8"
            button8.Size = buttonSize
            button9 = New Button
            button9.Location = New Point (Floor(scale_x * 50), Floor(scale_y * 40))
            button9.Text = "9"
            button9.Size = buttonSize
            buttontimes = New Button
            buttontimes.Location = New Point (Floor(scale_x * 70), Floor(scale_y * 40))
            buttontimes.Text = "*"
            buttontimes.Size = buttonSize
            buttonclear = New Button
            buttonclear.Location = New Point (Floor(scale_x * 90), Floor(scale_y * 40))
            buttonclear.Text = "C"
	    buttonclear.Size = buttonSize
            button4 = New Button
            button4.Location = New Point (Floor(scale_x * 10), Floor(scale_y * 60))
            button4.Text = "4"
            button4.Size = buttonSize
            button5 = New Button
            button5.Location = New Point (Floor(scale_x * 30), Floor(scale_y * 60))
            button5.Text = "5"
            button5.Size = buttonSize
            button6 = New Button
            button6.Location = New Point (Floor(scale_x * 50), Floor(scale_y * 60))
            button6.Text = "6"
            button6.Size = buttonSize
            buttondivide = New Button
            buttondivide.Location = New Point (Floor(scale_x * 70), Floor(scale_y * 60))
            buttondivide.Text = "/"
            buttondivide.Size = buttonSize
            buttonallclear = New Button
            buttonallclear.Location = New Point (Floor(scale_x * 90), Floor(scale_y * 60))
            buttonallclear.Text = "AC"
            buttonallclear.Size = buttonSize
            button1 = New Button
            button1.Location = New Point (Floor(scale_x * 10), Floor(scale_y *80))
            button1.Text = "1"
            button1.Size = buttonSize
            button2 = New Button
            button2.Location = New Point (Floor(scale_x * 30), Floor(scale_y * 80))
            button2.Text = "2"
            button2.Size = buttonSize
            button3 = New Button
            button3.Location = New Point (Floor(scale_x * 50), Floor(scale_y * 80))
            button3.Text = "3"
            button3.Size = buttonSize
            buttonplus = New Button
            buttonplus.Location = New Point (Floor(scale_x * 70), Floor(scale_y * 80))
            buttonplus.Text = "+"
            buttonplus.Size = buttonSize
            buttonequals = New Button
            buttonequals.Location = New Point (Floor(scale_x * 90), Floor(scale_y * 80))
            buttonequals.Text = "="
            buttonequals.Size = New Size (Floor(scale_x * 20), Floor(scale_x * 40))
            button0 = New Button
            button0.Location = New Point (Floor(scale_x * 10), Floor(scale_x * 100))
            button0.Text = "0"
            button0.Size = buttonSize
            buttonplusminus = New Button
            buttonplusminus.Location = New Point (Floor(scale_x * 50), Floor(scale_y * 100))
            buttonplusminus.Text = "±"
            buttonplusminus.Size = buttonSize
            buttondecimal = New Button
            buttondecimal.Location = New Point (Floor(scale_x * 30), Floor(scale_y * 100))
            buttondecimal.Text = "."
            buttondecimal.Size = buttonSize
            buttonminus = New Button
            buttonminus.Location = New Point (Floor(scale_x * 70), Floor(scale_y * 100))
            buttonminus.Text = "-"
            buttonminus.Size = buttonSize
	End Sub		

	Private Sub resize(sender As Object, e As EventArgs)
	    scale_x = Me.Width/120
	    scale_y = Me.Width/150
	    updateScreen()
	End Sub
	
        Private Sub button1_click(sender As Object, e As EventArgs) Handles button1.Click
            numPress(1)
        End Sub

        Private Sub button2_click(sender As Object, e As EventArgs) Handles button2.Click
            numPress(2)
        End Sub

        Private Sub button3_click(sender As Object, e As EventArgs) Handles button3.Click
            numPress(3)
        End Sub

        Private Sub button4_click(sender As Object, e As EventArgs) Handles button4.Click
            numPress(4)
        End Sub

        Private Sub button5_click(sender As Object, e As EventArgs) Handles button5.Click
            numPress(5)
        End Sub

        Private Sub button6_click(sender As Object, e As EventArgs) Handles button6.Click
            numPress(6)
        End Sub

        Private Sub button7_click(sender As Object, e As EventArgs) Handles button7.Click
            numPress(7)
        End Sub

        Private Sub button8_click(sender As Object, e As EventArgs) Handles button8.Click
            numPress(8)
        End Sub

        Private Sub button9_click(sender As Object, e As EventArgs) Handles button9.Click
            numPress(9)
        End Sub

        Private Sub button0_click(sender As Object, e As EventArgs) Handles button0.Click
            numPress(0)
        End Sub

        Private Sub buttontimes_click(sender As Object, e As EventArgs) Handles buttontimes.Click
            prev = numresult
            numresult = 0
            posneg = 1
            op = "*"C
        End Sub

        Private Sub buttondivide_click(sender As Object, e As EventArgs) Handles buttondivide.Click
            prev = numresult
            numresult = 0
            posneg = 1
            op = "/"C
        End Sub

        Private Sub buttonplus_click(sender As Object, e As EventArgs) Handles buttonplus.Click
            prev = numresult
            numresult = 0
            posneg = 1
            op = "+"C
        End Sub

        Private Sub buttonminus_click(sender As Object, e As EventArgs) Handles buttonminus.Click
            prev = numresult
            numresult = 0
            posneg = 1
            op = "-"C
        End Sub 
        
        Private Sub buttonequals_click(sender As Object, e As EventArgs) Handles buttonequals.Click
            Dim temp = numresult
            If (op = "*"C) Then
                numresult = prev * numresult
            ElseIf (op = "/"C) Then
                numresult = prev / numresult
            ElseIf (op = "+"C)
                numresult = prev + numresult
            ElseIf (op = "-"C)
                numresult = prev - numresult
            End If
            prev = temp
            updateResults()
        End Sub

        Private Sub buttonclear_click(sender As Object, e As EventArgs) Handles buttonclear.Click
            numresult = 0
            decimoff = 10
            decilevel = 1
            updateResults()
        End Sub

        Private Sub buttonallclear_click(sender As Object, e As EventArgs) Handles buttonallclear.Click
            prev = 0
            numresult = 0
            decimoff = 10
            decilevel = 1
            updateResults()
        End Sub

        Private Sub buttonplusminus_click(sender As Object, e As EventArgs) Handles buttonplusminus.Click
            posneg = posneg * -1
            numresult = numresult * -1
            updateResults()
        End Sub

        Private Sub buttondecimal_click(sender As Object, e As EventArgs) Handles buttondecimal.Click
            decimoff = 1
            decilevel = 0.1
        End Sub
        
        Private Sub updateResults()
            results.Text = Convert.toString(numresult)
        End Sub

        Private Sub numPress(number As Decimal)
            numresult = numresult * (decimoff) + (number * posneg * decilevel)
            If decimoff = 1
                decilevel = decilevel / 10
            End If
            updateResults()         
        End Sub
            
        Sub Main()
            Application.Run(New CustomForm)
        End Sub
End Class

Module Forms
    Dim WithEvents a As CustomForm
    Sub Main()
        a = New CustomForm
        a.Main()
    End Sub
End Module
