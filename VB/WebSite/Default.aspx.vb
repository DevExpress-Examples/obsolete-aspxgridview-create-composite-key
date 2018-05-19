Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class Grid_Binding_CompositeKey_CompositeKey
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub grid_CustomUnboundColumnData(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridView.ASPxGridViewColumnDataEventArgs)
		If e.Column.FieldName = "CompositeKey" Then
			Dim customerId As String = Convert.ToString(e.GetListSourceFieldValue("CustomerID"))
			Dim productId As String = Convert.ToString(e.GetListSourceFieldValue("ProductID"))
			Dim orderDate As String = Convert.ToString(e.GetListSourceFieldValue("OrderDate"))
			e.Value = customerId & "-" & productId & "-" & orderDate
		End If
	End Sub
End Class
