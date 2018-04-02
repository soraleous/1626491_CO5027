using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1626491_CO5027.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ProductId"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }
    }
}