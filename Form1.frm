VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Sound Events"
   ClientHeight    =   4650
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2370
   LinkTopic       =   "Form1"
   ScaleHeight     =   4650
   ScaleWidth      =   2370
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   4350
      ItemData        =   "Form1.frx":0000
      Left            =   0
      List            =   "Form1.frx":0046
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Click on List for Sound to play"
      Height          =   195
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   2100
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'-------------------MY COMMENDS
'All This Sounds Events Are in registry Stored Under The Below Key
'HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default
'The winmm.dll Recognize Only The Schemes in This Key
'the rest sound events Must Taken from the registry The path that the stored
'for Example Empty Recycle is under Explorer Schemes...etc
'In the Zip you will find the SoundMod Module If you want something more to do with this dll
'
'-----------------YOUR COMMENDS????? :-)


Private Sub List1_Click()
sndPlaySound List1.List(List1.ListIndex), Flags&
End Sub
