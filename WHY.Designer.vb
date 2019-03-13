Imports System.Windows.Forms
Imports System.Windows
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Data

<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
       ' Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.Button1 = New System.Windows.Forms.Button()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.CheckedListBox1 = New System.Windows.Forms.CheckedListBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.LinkLabel1 = New System.Windows.Forms.LinkLabel()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.MonthCalendar1 = New System.Windows.Forms.MonthCalendar()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.TreeView1 = New System.Windows.Forms.TreeView()
        Me.NotifyIcon1 = New System.Windows.Forms.NotifyIcon(Me.components)
        Me.SplitContainer1 = New System.Windows.Forms.SplitContainer()
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
        Me.FileSystemWatcher1 = New System.IO.FileSystemWatcher()
        Me.ErrorProvider1 = New System.Windows.Forms.ErrorProvider(Me.components)
        Me.EventLog1 = New System.Diagnostics.EventLog()
        Me.EventLog2 = New System.Diagnostics.EventLog()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog()
        Me.OpenFileDialog2 = New System.Windows.Forms.OpenFileDialog()
        Me.SaveFileDialog1 = New System.Windows.Forms.SaveFileDialog()
        Me.FolderBrowserDialog1 = New System.Windows.Forms.FolderBrowserDialog()
        Me.FontDialog1 = New System.Windows.Forms.FontDialog()
        Me.FontDialog2 = New System.Windows.Forms.FontDialog()
        Me.Process1 = New System.Diagnostics.Process()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.BindingNavigator1 = New System.Windows.Forms.BindingNavigator(Me.components)
        Me.BindingNavigatorAddNewItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorCountItem = New System.Windows.Forms.ToolStripLabel()
        Me.BindingNavigatorDeleteItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorMoveFirstItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorMovePreviousItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorSeparator = New System.Windows.Forms.ToolStripSeparator()
        Me.BindingNavigatorPositionItem = New System.Windows.Forms.ToolStripTextBox()
        Me.BindingNavigatorSeparator1 = New System.Windows.Forms.ToolStripSeparator()
        Me.BindingNavigatorMoveNextItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorMoveLastItem = New System.Windows.Forms.ToolStripButton()
        Me.BindingNavigatorSeparator2 = New System.Windows.Forms.ToolStripSeparator()
        Me.DataSet1 = New System.Data.DataSet()
        Me.ProgressBar1 = New System.Windows.Forms.ProgressBar()
        Me.RadioButton1 = New System.Windows.Forms.RadioButton()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.DateTimePicker1 = New System.Windows.Forms.DateTimePicker()
        Me.MaskedTextBox1 = New System.Windows.Forms.MaskedTextBox()
        Me.WebBrowser1 = New System.Windows.Forms.WebBrowser()
        Me.FolderBrowserDialog2 = New System.Windows.Forms.FolderBrowserDialog()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SplitContainer1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SplitContainer1.SuspendLayout()
        Me.TabControl1.SuspendLayout()
        CType(Me.FileSystemWatcher1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ErrorProvider1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EventLog1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EventLog2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.BindingNavigator1.SuspendLayout()
        CType(Me.DataSet1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(286, 82)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Button1"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Location = New System.Drawing.Point(162, 184)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(81, 17)
        Me.CheckBox1.TabIndex = 1
        Me.CheckBox1.Text = "CheckBox1"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'CheckedListBox1
        '
        Me.CheckedListBox1.FormattingEnabled = True
        Me.CheckedListBox1.Location = New System.Drawing.Point(276, 362)
        Me.CheckedListBox1.Name = "CheckedListBox1"
        Me.CheckedListBox1.Size = New System.Drawing.Size(120, 94)
        Me.CheckedListBox1.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(552, 82)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(39, 13)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "Label1"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(73, 60)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(39, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Label2"
        '
        'LinkLabel1
        '
        Me.LinkLabel1.AutoSize = True
        Me.LinkLabel1.Location = New System.Drawing.Point(196, 286)
        Me.LinkLabel1.Name = "LinkLabel1"
        Me.LinkLabel1.Size = New System.Drawing.Size(59, 13)
        Me.LinkLabel1.TabIndex = 5
        Me.LinkLabel1.TabStop = True
        Me.LinkLabel1.Text = "LinkLabel1"
        '
        'ListBox1
        '
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(408, 75)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(120, 95)
        Me.ListBox1.TabIndex = 6
        '
        'MonthCalendar1
        '
        Me.MonthCalendar1.Location = New System.Drawing.Point(408, 248)
        Me.MonthCalendar1.Name = "MonthCalendar1"
        Me.MonthCalendar1.TabIndex = 7
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(26, 344)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(100, 20)
        Me.TextBox1.TabIndex = 8
        '
        'PictureBox1
        '
        Me.PictureBox1.Location = New System.Drawing.Point(698, 464)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(100, 50)
        Me.PictureBox1.TabIndex = 9
        Me.PictureBox1.TabStop = False
        '
        'TreeView1
        '
        Me.TreeView1.Location = New System.Drawing.Point(134, 383)
        Me.TreeView1.Name = "TreeView1"
        Me.TreeView1.Size = New System.Drawing.Size(121, 97)
        Me.TreeView1.TabIndex = 10
        '
        'NotifyIcon1
        '
        Me.NotifyIcon1.Text = "NotifyIcon1"
        Me.NotifyIcon1.Visible = True
        '
        'SplitContainer1
        '
        Me.SplitContainer1.Location = New System.Drawing.Point(121, 149)
        Me.SplitContainer1.Name = "SplitContainer1"
        '
        'SplitContainer1.Panel1
        '
        Me.SplitContainer1.Size = New System.Drawing.Size(150, 100)
        Me.SplitContainer1.TabIndex = 11
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Location = New System.Drawing.Point(575, 136)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(200, 100)
        Me.TabControl1.TabIndex = 12
        '
        'TabPage1
        '
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(192, 74)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "TabPage1"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'TabPage2
        '
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(192, 74)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "TabPage2"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'ToolStrip1
        '
        Me.ToolStrip1.Location = New System.Drawing.Point(0, 0)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.Size = New System.Drawing.Size(865, 25)
        Me.ToolStrip1.TabIndex = 13
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'FileSystemWatcher1
        '
        Me.FileSystemWatcher1.EnableRaisingEvents = True
        Me.FileSystemWatcher1.SynchronizingObject = Me
        '
        'ErrorProvider1
        '
        Me.ErrorProvider1.ContainerControl = Me
        '
        'EventLog1
        '
        Me.EventLog1.SynchronizingObject = Me
        '
        'EventLog2
        '
        Me.EventLog2.SynchronizingObject = Me
        '
        'OpenFileDialog1
        '
        Me.OpenFileDialog1.FileName = "OpenFileDialog1"
        '
        'OpenFileDialog2
        '
        Me.OpenFileDialog2.FileName = "OpenFileDialog2"
        '
        'Process1
        '
        Me.Process1.StartInfo.Domain = ""
        Me.Process1.StartInfo.LoadUserProfile = False
        Me.Process1.StartInfo.Password = Nothing
        Me.Process1.StartInfo.StandardErrorEncoding = Nothing
        Me.Process1.StartInfo.StandardOutputEncoding = Nothing
        Me.Process1.StartInfo.UserName = ""
        Me.Process1.SynchronizingObject = Me
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 494)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(865, 22)
        Me.StatusStrip1.TabIndex = 14
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(61, 4)
        '
        'GroupBox1
        '
        Me.GroupBox1.Location = New System.Drawing.Point(331, 135)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(200, 100)
        Me.GroupBox1.TabIndex = 16
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "GroupBox1"
        ' '
        ' 'BindingNavigator1
        ' '
        ' Me.BindingNavigator1.AddNewItem = Me.BindingNavigatorAddNewItem
        ' Me.BindingNavigator1.CountItem = Me.BindingNavigatorCountItem
        ' Me.BindingNavigator1.DeleteItem = Me.BindingNavigatorDeleteItem
        ' Me.BindingNavigator1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BindingNavigatorMoveFirstItem, Me.BindingNavigatorMovePreviousItem, Me.BindingNavigatorSeparator, Me.BindingNavigatorPositionItem, Me.BindingNavigatorCountItem, Me.BindingNavigatorSeparator1, Me.BindingNavigatorMoveNextItem, Me.BindingNavigatorMoveLastItem, Me.BindingNavigatorSeparator2, Me.BindingNavigatorAddNewItem, Me.BindingNavigatorDeleteItem})
        ' Me.BindingNavigator1.Location = New System.Drawing.Point(0, 25)
        ' Me.BindingNavigator1.MoveFirstItem = Me.BindingNavigatorMoveFirstItem
        ' Me.BindingNavigator1.MoveLastItem = Me.BindingNavigatorMoveLastItem
        ' Me.BindingNavigator1.MoveNextItem = Me.BindingNavigatorMoveNextItem
        ' Me.BindingNavigator1.MovePreviousItem = Me.BindingNavigatorMovePreviousItem
        ' Me.BindingNavigator1.Name = "BindingNavigator1"
        ' Me.BindingNavigator1.PositionItem = Me.BindingNavigatorPositionItem
        ' Me.BindingNavigator1.Size = New System.Drawing.Size(865, 25)
        ' Me.BindingNavigator1.TabIndex = 17
        ' Me.BindingNavigator1.Text = "BindingNavigator1"
        ' '
        ' 'BindingNavigatorAddNewItem
        ' '
        ' 'Me.BindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        ' 'Me.BindingNavigatorAddNewItem.Image = CType(resources.GetObject("BindingNavigatorAddNewItem.Image"), System.Drawing.Image)
        ' 'Me.BindingNavigatorAddNewItem.Name = "BindingNavigatorAddNewItem"
        ' 'Me.BindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = True
        ' 'Me.BindingNavigatorAddNewItem.Size = New System.Drawing.Size(23, 22)
        ' 'Me.BindingNavigatorAddNewItem.Text = "Add new"
        ' '
        ' 'BindingNavigatorCountItem
        ' '
        ' Me.BindingNavigatorCountItem.Name = "BindingNavigatorCountItem"
        ' Me.BindingNavigatorCountItem.Size = New System.Drawing.Size(35, 22)
        ' Me.BindingNavigatorCountItem.Text = "of {0}"
        ' Me.BindingNavigatorCountItem.ToolTipText = "Total number of items"
        ' '
        ' 'BindingNavigatorDeleteItem
        ' '
        ' Me.BindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        ' Me.BindingNavigatorDeleteItem.Image = CType(resources.GetObject("BindingNavigatorDeleteItem.Image"), System.Drawing.Image)
        ' Me.BindingNavigatorDeleteItem.Name = "BindingNavigatorDeleteItem"
        ' Me.BindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = True
        ' Me.BindingNavigatorDeleteItem.Size = New System.Drawing.Size(23, 22)
        ' Me.BindingNavigatorDeleteItem.Text = "Delete"
        ' '
        ' 'BindingNavigatorMoveFirstItem
        ' '
        ' Me.BindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        ' Me.BindingNavigatorMoveFirstItem.Image = CType(resources.GetObject("BindingNavigatorMoveFirstItem.Image"), System.Drawing.Image)
        ' Me.BindingNavigatorMoveFirstItem.Name = "BindingNavigatorMoveFirstItem"
        ' Me.BindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = True
        ' Me.BindingNavigatorMoveFirstItem.Size = New System.Drawing.Size(23, 22)
        ' Me.BindingNavigatorMoveFirstItem.Text = "Move first"
        ' '
        ' 'BindingNavigatorMovePreviousItem
        ' '
        ' Me.BindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        ' Me.BindingNavigatorMovePreviousItem.Image = CType(resources.GetObject("BindingNavigatorMovePreviousItem.Image"), System.Drawing.Image)
        ' Me.BindingNavigatorMovePreviousItem.Name = "BindingNavigatorMovePreviousItem"
        ' Me.BindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = True
        ' Me.BindingNavigatorMovePreviousItem.Size = New System.Drawing.Size(23, 22)
        ' Me.BindingNavigatorMovePreviousItem.Text = "Move previous"
        ' '
        ' 'BindingNavigatorSeparator
        ' '
        ' Me.BindingNavigatorSeparator.Name = "BindingNavigatorSeparator"
        ' Me.BindingNavigatorSeparator.Size = New System.Drawing.Size(6, 25)
        ' '
        ' 'BindingNavigatorPositionItem
        ' '
        ' Me.BindingNavigatorPositionItem.AccessibleName = "Position"
        ' Me.BindingNavigatorPositionItem.AutoSize = False
        ' Me.BindingNavigatorPositionItem.Name = "BindingNavigatorPositionItem"
        ' Me.BindingNavigatorPositionItem.Size = New System.Drawing.Size(50, 23)
        ' Me.BindingNavigatorPositionItem.Text = "0"
        ' Me.BindingNavigatorPositionItem.ToolTipText = "Current position"
        ' '
        ' 'BindingNavigatorSeparator1
        ' '
        ' Me.BindingNavigatorSeparator1.Name = "BindingNavigatorSeparator1"
        ' Me.BindingNavigatorSeparator1.Size = New System.Drawing.Size(6, 25)
        ' '
        ' 'BindingNavigatorMoveNextItem
        ' '
        ' Me.BindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        ' Me.BindingNavigatorMoveNextItem.Image = CType(resources.GetObject("BindingNavigatorMoveNextItem.Image"), System.Drawing.Image)
        ' Me.BindingNavigatorMoveNextItem.Name = "BindingNavigatorMoveNextItem"
        ' Me.BindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = True
        ' Me.BindingNavigatorMoveNextItem.Size = New System.Drawing.Size(23, 22)
        ' Me.BindingNavigatorMoveNextItem.Text = "Move next"
        ' '
        ' 'BindingNavigatorMoveLastItem
        ' '
        ' Me.BindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        ' Me.BindingNavigatorMoveLastItem.Image = CType(resources.GetObject("BindingNavigatorMoveLastItem.Image"), System.Drawing.Image)
        ' Me.BindingNavigatorMoveLastItem.Name = "BindingNavigatorMoveLastItem"
        ' Me.BindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = True
        ' Me.BindingNavigatorMoveLastItem.Size = New System.Drawing.Size(23, 22)
        ' Me.BindingNavigatorMoveLastItem.Text = "Move last"
        ' '
        ' 'BindingNavigatorSeparator2
        ' '
        ' Me.BindingNavigatorSeparator2.Name = "BindingNavigatorSeparator2"
        ' Me.BindingNavigatorSeparator2.Size = New System.Drawing.Size(6, 25)
        ' '
        'DataSet1
        '
        Me.DataSet1.DataSetName = "NewDataSet"
        '
        'ProgressBar1
        '
        Me.ProgressBar1.Location = New System.Drawing.Point(260, 295)
        Me.ProgressBar1.Name = "ProgressBar1"
        Me.ProgressBar1.Size = New System.Drawing.Size(100, 23)
        Me.ProgressBar1.TabIndex = 18
        '
        'RadioButton1
        '
        Me.RadioButton1.AutoSize = True
        Me.RadioButton1.Location = New System.Drawing.Point(440, 464)
        Me.RadioButton1.Name = "RadioButton1"
        Me.RadioButton1.Size = New System.Drawing.Size(90, 17)
        Me.RadioButton1.TabIndex = 19
        Me.RadioButton1.TabStop = True
        Me.RadioButton1.Text = "RadioButton1"
        Me.RadioButton1.UseVisualStyleBackColor = True
        '
        'RichTextBox1
        '
        Me.RichTextBox1.Location = New System.Drawing.Point(687, 344)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.Size = New System.Drawing.Size(100, 96)
        Me.RichTextBox1.TabIndex = 20
        Me.RichTextBox1.Text = ""
        '
        'ComboBox1
        '
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(64, 248)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(121, 21)
        Me.ComboBox1.TabIndex = 21
        '
        'DateTimePicker1
        '
        Me.DateTimePicker1.Location = New System.Drawing.Point(55, 404)
        Me.DateTimePicker1.Name = "DateTimePicker1"
        Me.DateTimePicker1.Size = New System.Drawing.Size(200, 20)
        Me.DateTimePicker1.TabIndex = 22
        '
        'MaskedTextBox1
        '
        Me.MaskedTextBox1.Location = New System.Drawing.Point(667, 82)
        Me.MaskedTextBox1.Name = "MaskedTextBox1"
        Me.MaskedTextBox1.Size = New System.Drawing.Size(100, 20)
        Me.MaskedTextBox1.TabIndex = 23
        '
        'WebBrowser1
        '
        Me.WebBrowser1.Location = New System.Drawing.Point(55, 135)
        Me.WebBrowser1.MinimumSize = New System.Drawing.Size(20, 20)
        Me.WebBrowser1.Name = "WebBrowser1"
        Me.WebBrowser1.Size = New System.Drawing.Size(250, 250)
        Me.WebBrowser1.TabIndex = 24
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(865, 516)
        Me.Controls.Add(Me.WebBrowser1)
        Me.Controls.Add(Me.MaskedTextBox1)
        Me.Controls.Add(Me.DateTimePicker1)
        Me.Controls.Add(Me.ComboBox1)
        Me.Controls.Add(Me.RichTextBox1)
        Me.Controls.Add(Me.RadioButton1)
        Me.Controls.Add(Me.ProgressBar1)
        Me.Controls.Add(Me.BindingNavigator1)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.ToolStrip1)
        Me.Controls.Add(Me.TabControl1)
        Me.Controls.Add(Me.SplitContainer1)
        Me.Controls.Add(Me.TreeView1)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.MonthCalendar1)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.LinkLabel1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.CheckedListBox1)
        Me.Controls.Add(Me.CheckBox1)
        Me.Controls.Add(Me.Button1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SplitContainer1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.SplitContainer1.ResumeLayout(False)
        Me.TabControl1.ResumeLayout(False)
        CType(Me.FileSystemWatcher1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ErrorProvider1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EventLog1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EventLog2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.BindingNavigator1.ResumeLayout(False)
        Me.BindingNavigator1.PerformLayout()
        CType(Me.DataSet1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Button1 As Button
    Friend WithEvents CheckBox1 As CheckBox
    Friend WithEvents CheckedListBox1 As CheckedListBox
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents LinkLabel1 As LinkLabel
    Friend WithEvents ListBox1 As ListBox
    Friend WithEvents MonthCalendar1 As MonthCalendar
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents ToolTip1 As ToolTip
    Friend WithEvents TreeView1 As TreeView
    Friend WithEvents NotifyIcon1 As NotifyIcon
    Friend WithEvents SplitContainer1 As SplitContainer
    Friend WithEvents TabControl1 As TabControl
    Friend WithEvents TabPage1 As TabPage
    Friend WithEvents TabPage2 As TabPage
    Friend WithEvents ToolStrip1 As ToolStrip
    Friend WithEvents FileSystemWatcher1 As IO.FileSystemWatcher
    Friend WithEvents ErrorProvider1 As ErrorProvider
    Friend WithEvents EventLog1 As EventLog
    Friend WithEvents EventLog2 As EventLog
    Friend WithEvents Timer1 As Timer
    Friend WithEvents OpenFileDialog1 As OpenFileDialog
    Friend WithEvents OpenFileDialog2 As OpenFileDialog
    Friend WithEvents SaveFileDialog1 As SaveFileDialog
    Friend WithEvents FolderBrowserDialog1 As FolderBrowserDialog
    Friend WithEvents FontDialog1 As FontDialog
    Friend WithEvents FontDialog2 As FontDialog
    Friend WithEvents WebBrowser1 As WebBrowser
    Friend WithEvents MaskedTextBox1 As MaskedTextBox
    Friend WithEvents DateTimePicker1 As DateTimePicker
    Friend WithEvents ComboBox1 As ComboBox
    Friend WithEvents RichTextBox1 As RichTextBox
    Friend WithEvents RadioButton1 As RadioButton
    Friend WithEvents ProgressBar1 As ProgressBar
    Friend WithEvents BindingNavigator1 As BindingNavigator
    Friend WithEvents BindingNavigatorAddNewItem As ToolStripButton
    Friend WithEvents BindingNavigatorCountItem As ToolStripLabel
    Friend WithEvents BindingNavigatorDeleteItem As ToolStripButton
    Friend WithEvents BindingNavigatorMoveFirstItem As ToolStripButton
    Friend WithEvents BindingNavigatorMovePreviousItem As ToolStripButton
    Friend WithEvents BindingNavigatorSeparator As ToolStripSeparator
    Friend WithEvents BindingNavigatorPositionItem As ToolStripTextBox
    Friend WithEvents BindingNavigatorSeparator1 As ToolStripSeparator
    Friend WithEvents BindingNavigatorMoveNextItem As ToolStripButton
    Friend WithEvents BindingNavigatorMoveLastItem As ToolStripButton
    Friend WithEvents BindingNavigatorSeparator2 As ToolStripSeparator
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents StatusStrip1 As StatusStrip
    Friend WithEvents Process1 As Process
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents DataSet1 As DataSet
    Friend WithEvents FolderBrowserDialog2 As FolderBrowserDialog
End Class

Module TestForms
    Sub Main()
    Dim a = New Form1
    Application.Run(a)
End Sub
End Module