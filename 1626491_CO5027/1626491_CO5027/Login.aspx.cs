﻿using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;

namespace _1626491_CO5027
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                litLoginError.Text = "Login Successful";
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }
        }
        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
            //Note: user is automatically redirected if trying to access another page

            if (Request.QueryString["~/Register.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/Register.aspx"]);
            }
            else
            {
                String UserRoles = userManager.GetRoles(user.Id).FirstOrDefault();
                if (UserRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/Database.aspx");
                }
            }
        }
    }
}