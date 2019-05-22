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
	Dim spAce As PictureBox
	Dim mv As Integer
	Dim mvX As Integer
	Dim mvY As Integer
	Dim WithEvents Tick2 As Timer
	Dim wDown As Boolean
	Dim aDown As Boolean
	Dim sDown As Boolean
	Dim dDown As Boolean
	Sub New()
		'define dims
		'Me.Size() = New Size()
		'Me.Controls.Add(OBJECTS)
		spAce = New PictureBox()
		spAce.image=Image.FromFile("sp1.png")
		spAce.SizeMode = PictureBoxSizeMode.AutoSize
		mv = 2
		Me.Controls.Add(spAce)
		mvX=0
		mvY=0
		Tick2 = New Timer
		Tick2.Interval = 16
		Tick2.Start()
		wDown = False
		sDown = False
		aDown=False
		dDown = False
	End Sub

	'Private Subs
	Private Sub keydown(sender As Object, e As KeyEventArgs) Handles MyBase.KeyDown

		Select Case e.KeyCode
		       Case 69
		       	    spAce.Image=Image.FromFile("sp2.png")			   
			    If Not wDown Then
			    	  mvY-=mv
		  	    End If
			    wDown = True
		       Case 68
		       	    spAce.Image=Image.FromFile("sp4.png")
			    If Not sDown Then
			        mvY+=mv
			    End If
			    sDown = True
		       Case 83
		            spAce.Image=Image.FromFile("sp1.png")
			    If Not aDown Then
				mvX-=mv
			    End If
			    aDown = True
		       Case 70
		       	    spAce.Image=Image.FromFile("sp3.png")
			    If Not dDown Then
			       mvX+=mv
			    End	If
			    dDown = True
		End Select
	End Sub

	Private Sub keyup(sender As Object, e As KeyEventArgs) Handles MyBase.KeyUp

		Select Case e.KeyCode
		       Case 69
		       	    
			    wDown = False
			    mvY+=mv
		       Case 68
		       	    
			    sDown = False
			    mvY-=mv
		       Case 83
		            
			    aDown = False
			    mvX+=mv
		       Case 70
		       	    
			    dDown = False
			    mvX-=mv
		End Select
	End Sub
	'End Sub

	Private Sub tick(sender As Object, e As EventArgs) Handles Tick2.Tick
		spAce.Left += mvX
		spAce.Top  += mvY
	End Sub

	Sub Main()
		Application.Run(New CustomForm)
	End Sub
End Class

Module Forms
	Sub Main() 
		Dim MainOb As CustomForm
		MainOb = New CustomForm
		MainOb.KeyPreview=True
		MainOb.Main()
	End Sub
End Module
