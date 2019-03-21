Public Class Form1

    Private Sub drawButton_Click(sender As Object, e As EventArgs) Handles drawButton.Click
        Dim axesLoad As Graphics = Me.CreateGraphics
        Dim drawAxis As Pen
        Dim drawGraph As Pen
        Dim pointX1 As PointF
        Dim pointX2 As PointF
        Dim pointY1 As PointF
        Dim pointY2 As PointF

        drawAxis = New Pen(Drawing.Color.DarkSlateGray, 3)
        drawGraph = New Pen(Drawing.Color.DarkOrange, 1)
        pointX1 = New PointF(250, 250)
        pointX2 = New PointF(650, 250)
        pointY1 = New PointF(450, 100)
        pointY2 = New PointF(450, 400)
        axesLoad.DrawLine(drawAxis, pointX1, pointX2)
        axesLoad.DrawLine(drawAxis, pointY1, pointY2)

        'A, B, C are 1st, 2nd, 3rd coefficients
        Dim numberA As Single
        Dim numberB As Single
        Dim numberC As Single
        Dim numberD As Single
        Dim numberE As Single


        If userInA.Text = "" Then
            numberA = 0
        Else numberA = val(userInA.Text)
        End If

        If userInB.Text = "" Then
            numberB = 0
        Else numberB = Val(userInB.Text)
        End If

        If userInC.Text = "" Then
            numberC = 0
        Else numberC = Val(userInC.Text)
        End If

        If userInD.Text = "" Then
            numberD = 0
        Else numberD = Val(userInD.Text)
        End If

        If userInE.Text = "" Then
            numberE = 0
        Else numberE = Val(userInE.Text)
        End If

        displayALabel.Text = "(" & numberA & ")"
        displayBLabel.Text = "(" & numberB & ")"
        displayCLabel.Text = "(" & numberC & ")"
        displayDLabel.Text = "(" & numberD & ")"
        displayELabel.Text = "(" & numberE & ")"


        'Declaring an array of 200 values known as "plotValue"
        Dim plotValue(2000) As Single
        Dim plotIndex As Integer

        plotIndex = 0
        While plotIndex <= 1999
            Dim plotCurrentNum As Single
            plotCurrentNum = (plotIndex - 1000) / 60
            plotValue(plotIndex) = (-1 * numberA * plotCurrentNum * plotCurrentNum * plotCurrentNum * plotCurrentNum) + (-1 * numberB * plotCurrentNum * plotCurrentNum * plotCurrentNum) + (-1 * numberC * plotCurrentNum * plotCurrentNum ) + (-1 * numberD * plotCurrentNum) + (-1 * numberE)


            'Differential Line-Drawing is buggy at times and gives integration shading, not required in this case

            'Dim plotResNum1 As PointF
            'Dim plotResNum2 As PointF
            'plotResNum1 = New Point(plotCurrentNum * 12 + 450, plotValue(plotIndex) + 250)
            'plotResNum2 = New PointF(plotCurrentNum * 12 + 451, plotValue(plotIndex + 1) + 250)
            'axesLoad.DrawLine(drawGraph, plotResNum1, plotResNum2)

            'Defining and drawing rectangle of negligible width and height, at position "plotResNum1"

            Dim plotRectangle As New Rectangle(plotCurrentNum * 45 + 451, plotValue(plotIndex) + 250, 1, 1)
            axesLoad.DrawRectangle(drawGraph, plotRectangle)

            plotIndex = plotIndex + 1
        End While

        If numberA = 0 And numberB = 0 And numberC <> 0 And numberE <> 0 Then
            quadraticDetectionLabel.Text = "Quadratic detected, root(s) at:"

            Dim root1 As Single
            Dim root2 As Single

            root1 = ((-1 * numberD + Math.Sqrt((numberD * numberD) - 4 * numberC * numberE)) / (2 * numberC))
            root2 = ((-1 * numberD - Math.Sqrt((numberD * numberD) - 4 * numberC * numberE)) / (2 * numberC))

            root1Label.Text = root1
            root2Label.Text = root2
            If root1Label.Text = "NaN" Or root2Label.Text = "NaN" Then
                quadraticDetectionLabel.Text = "No Real Roots Detected."
                root1Label.Text = ""
                root2Label.Text = ""
            End If
        End If

        If numberA = 0 And numberB = 0 And numberC <> 0 And numberD = 0 And numberE = 0 Then
            quadraticDetectionLabel.Text = "Quadratic detected, roots at:"

            Dim root1 As Single

            root1 = 0

            root1Label.Text = root1

            If root1Label.Text = "NaN" Or root2Label.Text = "NaN" Then
                quadraticDetectionLabel.Text = "No Real Roots Detected."
                root1Label.Text = ""
                root2Label.Text = ""
            End If
        End If

        If numberA = 0 And numberB = 0 And numberC = 0 And numberD <> 0 Then
            quadraticDetectionLabel.Text = "Linear equation detected, root at:"

            Dim root1 As Single

            root1 = (-1 * numberE) / numberD

            root1Label.Text = root1
        End If
    End Sub

    Private Sub allClearButton_Click(sender As Object, e As EventArgs) Handles allClearButton.Click
        Application.Restart()
    End Sub

    Private Sub clearButton_Click(sender As Object, e As EventArgs) Handles clearButton.Click
        userInA.Text = ""
        userInB.Text = ""
        userInC.Text = ""
        userInD.Text = ""
        userInE.Text = ""
    End Sub


End Class