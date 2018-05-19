Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq


Partial Public Class NullTextUserControl
	Inherits System.Web.UI.UserControl
	Private themePrefix_Renamed As String

	Public Property ThemePrefix() As String
		Get
			Return themePrefix_Renamed
		End Get
		Set(ByVal value As String)
			themePrefix_Renamed = value
		End Set
	End Property
End Class