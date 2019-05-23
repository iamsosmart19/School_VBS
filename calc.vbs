Imports System.Windows
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel

'''Summary
'''This is a list based calculator 
'''Wanna Know How it works?
'''Read the code
'''To Do List:
'''	Show current stack in top right corner		done 19/3/19 10:30:00
'''	Add ± functionality				done 19/3/19 10:17:20 patched 19/3/19 10:58:20
'''	Maybe Add all those fancy windows buttons	too gay
'''	Add check last number function			done 16/3/19
'''	prevent entering 2 signs in a row		done 16/3/19
'''	Implement isOp					done 17/3/19

Public Class CustomForm
	Inherits Form
	'Dim declarations
	'Examples:
	'	Dim WithEvents var_name As Button
	'	Dim var_name As Decimal
	'	Dim var_name As Label
	'Dim WithEvents NumButtons(0 to 3, 0 to 4) As Button
	Dim NumButtons(0 to 3, 0 to 4) As New ButtonNumber
	'Dim NumButtons(0 to 14) As New Button
	Public Shared Dim results As Label
	Public Shared Dim curStack As Label
	Public Shared Dim calcStack As String
	'Dim mousepos As Point
	Dim prevInput As Decimal
	Dim curInput As Decimal
	'Dim op As Char
	Dim ButtonSize As Size
	Dim font As Font
	'Dim WithEvents Timer1 As Timer

	Public Class ButtonNumber
		Inherits Button
		Dim WithEvents noDub As New Timer
		Dim timeLeft As Integer
		Sub New()
			AddHandler Me.Click, AddressOf Clicked
			noDub = new Timer
			noDub.Interval = 1
		End Sub

		Sub Clicked(sender As Object, e As System.EventArgs) Handles Me.Click
			If noDub.Enabled = False Then
				Select Case Me.Text
					Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "."
						If CustomForm.results.Text.Length < 15 Then
							If Me.Text = "." Then
								If getCurNum().Contains(".") = False Then 
									System.Console.WriteLine("getCurNum: ""{0}""", getCurNum())
									CustomForm.results.Text += Me.Text
									calcStack += Me.Text
								End If
							Else If calcStack.Length < 1 Then
								CustomForm.results.Text = Me.Text
								calcStack += Me.Text
							Else
								CustomForm.results.Text += Me.Text
								calcStack += Me.Text
							End If
							System.Console.WriteLine(calcStack)
						End If
					Case "/", "*", "-", "+"
						If calcStack.Length > 0 Then  
							If isOp( GetChar(calcStack, calcStack.Length) )
								System.Console.WriteLine(GetChar(calcStack, calcStack.Length))
								calcStack = Microsoft.VisualBasic.Left(calcStack, calcStack.Length - 2) + Replace(calcStack, CStr( GetChar(calcStack, calcStack.Length) ), Me.Text , calcStack.Length - 1)
							Else
								calcStack += Me.Text
							End If
							CustomForm.results.Text = ""
							System.Console.WriteLine(calcStack)
						End If
					Case "CE"
						If calcStack.Length > 0 Then  
							calcStack = ""
							System.Console.WriteLine(calcStack)
						End If
						CustomForm.results.Text = ""
					Case "C"
						If calcStack.Length > 0 Then  
							CustomForm.results.Text = CustomForm.results.Text.Remove(CustomForm.results.Text.Length - 1)
							calcStack = calcStack.Remove(calcStack.Length - 1)
							System.Console.WriteLine(calcStack)
						End If
					Case "="
						EvalStack()
					Case "±"
						System.Console.WriteLine("1: {0}", Microsoft.VisualBasic.Left(calcStack, getLastOperator()))
						System.Console.WriteLine("2: {0}", Microsoft.VisualBasic.Right(calcStack, calcStack.Length - getLastOperator()))
						If getCurNum() <> "" Then
							If GetChar(CustomForm.results.Text, 1) = "-" Then
								CustomForm.results.Text = Microsoft.VisualBasic.Right(CustomForm.results.Text, CustomForm.results.Text.Length - 1)
							Else
								CustomForm.results.Text = "-" + CustomForm.results.Text
							End If
							If getLastOperator() = 0
								If GetChar(calcStack, 1) = "±"
									calcStack = Microsoft.VisualBasic.Right(calcStack, calcStack.Length - 1)
								Else
									calcStack = "±" + calcStack
								End If
							Else If GetChar(calcStack, getLastOperator + 1) = "±" Then
								calcStack = Microsoft.VisualBasic.Left(calcStack, getLastOperator()) + Microsoft.VisualBasic.Right(calcStack, calcStack.Length - getLastOperator() - 1)
							Else 
								calcStack = Microsoft.VisualBasic.Left(calcStack, getLastOperator()) + "±" + Microsoft.VisualBasic.Right(calcStack, calcStack.Length - getLastOperator())
							End If
						System.Console.WriteLine(calcStack)
					End If
				End Select
				curStack.Text = calcStack.Replace("±", "-")
				timeLeft = 1
				noDub.Start()
			End If
		End Sub

		Sub noDub_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles noDub.Tick
			timeLeft = timeLeft - 1
			If timeLeft = 0 Then
				noDub.Stop()
			End If
		End Sub

		Sub EvalStack() 

			If calcStack.Length = 0 Then
				Exit Sub
			End If
			calcStack += Me.Text
			Dim numsList() As Char = New Char(calcStack.Length) {}
			'System.Console.WriteLine("DB - 1")
			Dim nums() As Double = New Double(calcStack.Length) {}
			'System.Console.WriteLine("DB - 2")
			Dim numCnt As Decimal = 0
			'System.Console.WriteLine("DB - 3")
			Dim plusMinus As Boolean = False
			numsList (numCnt) = ""
			'System.Console.WriteLine("DB - 4")
			Dim tempNumHolder As String = ""
			For Each Letter As Char In calcStack
				Select Letter
					Case "+", "-", "*", "/", "="
						'If nums(1) = nums(calcStack.Length) Then
						'	nums(1) = nums(0)
						'End If
						If tempNumHolder = Nothing Then
							tempNumHolder = CStr(nums(0)) 
						End If
						'System.Console.WriteLine("1 {0}", tempNumHolder)
						nums(numCnt) = CDbl(tempNumHolder)
						'System.Console.WriteLine("2")
						numsList(numCnt) = Letter
						'System.Console.WriteLine("3")
						numCnt += 1
						'System.Console.WriteLine("4")
						tempNumHolder = ""
						'System.Console.WriteLine("5")
						numsList(numCnt) = ""
						'System.Console.WriteLine("6")
					Case Else
						If Letter = "±" Then
							tempNumHolder = "-" + tempNumHolder
						Else
							tempNumHolder += Letter
						End If
				End Select
				System.Console.WriteLine("Letter: {0}", Letter)
			Next
			'System.Console.WriteLine("im gay")
			For i As Decimal = 0 To numCnt
				Select numsList(i)
					Case "+"
						nums(i + 1) = nums(i) + nums(i + 1)
					Case "-"
						nums(i + 1) = nums(i) - nums(i + 1)
					Case "*"
						nums(i + 1) = nums(i) * nums(i + 1)
					Case "/"
						nums(i + 1) = nums(i) / nums(i + 1)
				End Select
			Next
			If CStr(nums(numCnt - 1)).Length < 15 Then
				CustomForm.results.Text = CStr(nums(numCnt - 1))
			Else
				CustomForm.results.Text = Cstr( Math.Round( nums(numCnt - 1), 11) )
			End If
			System.Console.WriteLine(calcStack)
			For Each elem As Double in nums
				System.Console.WriteLine("nums: {0}", elem)
			Next
			For Each elem As Char in numsList
				System.Console.WriteLine("numslist: {0}", elem)
			Next
			'System.Console.WriteLine("getLastOperator: ""{0}""", GetChar(calcStack, getLastOperator()) )
			'System.Console.WriteLine("getCurNum: ""{0}""", getCurNum())
			calcStack = ""
		End Sub

		'returns the position of the last operator in the stack
		'Loops through the stack from the right and return the operator
		'returns 0 if there are no operators
		Function getLastOperator() As Decimal
			For i As Decimal = calcStack.Length To 1 Step -1
				'System.Console.WriteLine("i: {0}", i)
				If isOp(GetChar(calcStack, i) )
					Return i
				End If
			Next
			'This basically assumes that there are no operators
			'And it shouldnt be called if there's nothing in the stack anyway
			'Good programming
			Return 0
		End Function

		'returns the last number as a string
		Function getCurNum() As String
			System.Console.WriteLine("getLastOperator: {0}", getLastOperator())
			'returns
			'the rightmost part of the stack (from the last operator)
			'with the = removed
			Return Microsoft.VisualBasic.Right(calcStack, calcStack.Length - getLastOperator()).Replace("=", "")
		End Function

		'returns true if the character is an operator
		'false if it isnt
		Function isOp(ByVal curChar As Char) As Boolean
			If curChar >= "*"C And curChar <= "/"C And curChar <> "."
				Return True
			End If
			Return False
		End Function

	End Class

	Sub New()
		'define dims
		'Me.Size() = New Size()
		'Me.Controls.Add(OBJECTS)
		Me.Size = New Size (360, 450)
		calcStack = ""
		Dim ButtonSize As Size = New Size (60, 60)

		results = New Label
		results.Location = New Point (30, 30)
		results.Text = "0"
		results.AutoSize = 1
		results.Font = New Font(results.Font.FontFamily, 20)
		Me.Controls.Add(results)

		curStack = New Label
		curStack.Location = New Point (200, 10)
		curStack.Text = ""
		curStack.AutoSize = 1
		'curStack.Font = New Font(results.Font.FontFamily, 14)
		Me.Controls.Add(curStack)

		For i As Decimal = 0 to 3
			For j As Decimal = 0 to 4
				If i = 3 And j = 4 Then
					Continue For
				End If
				Dim CurButtonNum As Decimal = i * 5 + j
				Dim CurButton As ButtonNumber = New ButtonNumber
				NumButtons(i, j) = CurButton
				NumButtons(i, j).Location = New Point (30 + 60 * j, 80 + 60 * i)
				If i = 2 And j = 4 Then
					NumButtons(i, j).Size = New Size (ButtonSize.Width, ButtonSize.Height * 2)
				Else 
					NumButtons(i, j).Size = ButtonSize
				End If

				NumButtons(i, j).Font = New Font(NumButtons(i, j).Font.FontFamily, 16)

				Select Case CurButtonNum
					Case 0
						NumButtons(i, j).Text = "7"
					Case 1
						NumButtons(i, j).Text = "8"
					Case 2
						NumButtons(i, j).Text = "9"
					Case 3
						NumButtons(i, j).Text = "/"
					Case 4
						NumButtons(i, j).Text = "CE"
					Case 5
						NumButtons(i, j).Text = "4"
					Case 6
						NumButtons(i, j).Text = "5"
					Case 7
						NumButtons(i, j).Text = "6"
					Case 8
						NumButtons(i, j).Text = "*"
					Case 9
						NumButtons(i, j).Text = "C"
					Case 10
						NumButtons(i, j).Text = "1"
					Case 11
						NumButtons(i, j).Text = "2"
					Case 12
						NumButtons(i, j).Text = "3"
					Case 13
						NumButtons(i, j).Text = "-"
					Case 14
						NumButtons(i, j).Text = "="
					Case 15
						NumButtons(i, j).Text = "0"
					Case 16
						NumButtons(i, j).Text = "."
					Case 17
						NumButtons(i, j).Text = "±"
					Case 18
						NumButtons(i, j).Text = "+"
				End Select
				NumButtons(i, j).AutoSize = false
				Me.Controls.Add(NumButtons(i, j))
			Next j
		Next i

	End Sub

	'Private Subs

	'Subroutine to track mouse clicks
	'Doesnt work in items godamnit
	'Pretty Sick tho
	'Private Sub CustomForm_MouseDown(sender As Object, e As System.Windows.Forms.MouseEventArgs) Handles Me.MouseClick
	'	results.Text = "X." & e.X & vbCrLf & "Y." & e.Y
	'End Sub

	'Sub seven_Click(sender As Object,e As System.Windows.Forms.MouseEventArgs)
	'Sub EventHandler()
'	'	results.Text = "ha gay"
	'End Sub
	'Sub Click_func(sender As Object, e As System.Windows.Forms.MouseEventArgs)
	'	results.Text = "ha gay"
	'End Sub
	'Private Sub button1_click(sender As Object, e As EventArgs) Handles .NumButtons(0, 0).Click
	'	results.Text = "no"
	'End Sub


	Sub Main()
		Application.Run(New CustomForm)
	End Sub
End Class


Module Forms
	Sub Main() 
		Dim MainOb As CustomForm = New CustomForm
		MainOb.Main()
	End Sub
End Module
