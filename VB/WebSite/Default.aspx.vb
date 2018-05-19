Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)
		If Request.Cookies("ThemePrefix") IsNot Nothing AndAlso Request.Cookies("ThemePrefix").Value <> "Default" Then
			DevExpress.Web.ASPxClasses.ASPxWebControl.GlobalTheme = Request.Cookies("ThemePrefix").Value
		End If
	End Sub

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If Request.Cookies("ThemePrefix") IsNot Nothing AndAlso Request.Cookies("ThemePrefix").Value <> "Default" Then
			NullTextComboBox.ThemePrefix = Request.Cookies("ThemePrefix").Value
			dxComboTheme.Value = Request.Cookies("ThemePrefix").Value
		End If
	End Sub
End Class