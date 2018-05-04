using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace _1626491_CO5027
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnConfirmPurchase_Click(object sender, EventArgs e)
        {
            //Load values of items
            string productId = Request.QueryString["ID"];
            string quant = Request.QueryString["Quant"];
            int stock = int.Parse(quant);

            //Load paypal token
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                //create a payment object with the paymentId from session
                var payment = new Payment() { id = paymentId };

                //retieve the payerId from the querystring and use it to create a new payment execution object
                var payerId = Request.QueryString["PayerID"].ToString();
                var paymentExecution = new PaymentExecution() { payer_id = payerId };

                //Execute the payment
                var executedPayment = payment.Execute(apiContext, paymentExecution);

                // Reduce Stock SQL code
                // Code Adapted From JasonTsoum77, 2013
                SqlConnection con = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["IdentityConnectionString"].ToString());
                        string updateSQL = "UPDATE tblProducts SET Stock=Stock-" + stock + "Where ID=" + productId;
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(updateSQL, con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    DataTable dataTable = new DataTable();
                    dataTable.Load(reader);
                }
                finally
                {
                    con.Close();
                }
                // End of Adapted Code
                        
                //Inform the user
                litInformation.Text = "<p>Your order has been completed successfully!</p>";
                btnConfirmPurchase.Visible = false;
           
            }
            
        }

        protected void BtnCancelPurchase_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://" + HttpContext.Current.Request.Url.Authority + HttpContext.Current.Request.ApplicationPath + "/Cancel.aspx");
        }
    }
}