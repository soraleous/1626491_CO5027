using System;
using System.Collections.Generic;
using System.Configuration;
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
            /* Incomplete test
             * var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentId = Session["paymentId"].ToString();
            test1.Text = paymentId; */
        }

        protected void BtnConfirmPurchase_Click(object sender, EventArgs e)
        {
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

                /* Reduce Stock code test
                int test1 = 1;
                SqlConnection con = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["IdentityConnectionString"].ToString());
                        string updateSQL = "UPDATE tblProducts SET Stock=Stock-" + test1 + "Where ID=" + Request.QueryString["ID"];
                        */
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