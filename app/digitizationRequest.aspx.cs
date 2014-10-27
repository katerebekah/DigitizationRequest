using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBEntities;

namespace app
{
    public partial class digitizationRequest : System.Web.UI.Page
    {
        TSLAEntities db = new TSLAEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Collection> collections = db.Collections.ToList();
            ddlCollectionName.DataTextField = "Name";
            ddlCollectionName.DataValueField = "ID";
            ddlCollectionName.DataSource = collections;
            ddlCollectionName.DataBind();
        }
    }
}