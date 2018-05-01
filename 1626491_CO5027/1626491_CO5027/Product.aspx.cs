using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace _1626491_CO5027
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPurchaseProduct_Click(object sender, EventArgs e)
        {
            // Code Adapted from https://stackoverflow.com/a/8185231
            var fcPrice = ProductFormView.FindControl("PriceLabel") as Label;
            var itemPrice = fcPrice.Text;
            var fcName = ProductFormView.FindControl("NameLabel") as Label;
            string itemName = fcName.Text;
            var fcSKU = ProductFormView.FindControl("ModelCodeLabel") as Label;
            string itemSKU = fcSKU.Text;
            var fcSize = ProductFormView.FindControl("SizeLabel") as Label;
            string itemSize = fcSize.Text;
            // End of adapted code

            decimal postagePackingCost = 4.99m;
            decimal productPrice = decimal.Parse(itemPrice);
            decimal quantityOfProduct = int.Parse(ddlProductQuantity.SelectedValue);
            decimal subtotal = (quantityOfProduct * productPrice);
            decimal total = subtotal + postagePackingCost;

            // Authenticate with PayPal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            // Get APIContext Object
            var apiContext = new APIContext(accessToken);

            var productItem = new Item
            {
                name = itemName + " " + itemSize,
                currency = "USD",
                price = productPrice.ToString(),
                sku = itemSKU,
                quantity = quantityOfProduct.ToString()
            };

            var transactionDetails = new Details
            {
                tax = "0",
                shipping = postagePackingCost.ToString(),
                subtotal = subtotal.ToString("0.00")
            };


            var transactionAmount = new Amount
            {
                currency = "USD",
                total = total.ToString("0.00"),
                details = transactionDetails
            };

            var transaction = new Transaction
            {
                description = "Order Summary:",
                invoice_number = Guid.NewGuid().ToString(),
                amount = transactionAmount,
                item_list = new ItemList
                {
                    items = new List<Item> { productItem }
                }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "/Cancel.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //Found the appropriate link, send the user there
                    Response.Redirect(link.href);
                }
            }
        }
    }
}