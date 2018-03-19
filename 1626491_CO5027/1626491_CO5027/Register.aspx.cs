using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace _1626491_CO5027
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //create a dbcontect that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionstring");
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //create user
            var user = new IdentityUser() { UserName = txtRegEmail.Text, Email = txtRegEmail.Text };
            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            if (result.Succeeded)
            {
                //todo:Either authenticate the user (log them in) or redirect them to the login page to login for themselves

            }
            else
            {
                litRegisterError.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }
    }
}