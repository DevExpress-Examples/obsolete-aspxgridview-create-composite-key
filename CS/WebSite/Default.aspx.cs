using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Grid_Binding_CompositeKey_CompositeKey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void grid_CustomUnboundColumnData(object sender,
                DevExpress.Web.ASPxGridView.ASPxGridViewColumnDataEventArgs e) {
        if(e.Column.FieldName == "CompositeKey") {
            string customerId = Convert.ToString(e.GetListSourceFieldValue("CustomerID"));
            string productId = Convert.ToString(e.GetListSourceFieldValue("ProductID"));
            string orderDate = Convert.ToString(e.GetListSourceFieldValue("OrderDate"));
            e.Value = customerId + "-" + productId + "-" + orderDate;
        }
    }
}
