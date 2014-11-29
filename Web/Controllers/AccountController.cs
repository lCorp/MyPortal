using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

using Web.Filters;
using Core.Models;
using Core.Persistence;

namespace Web.Controllers
{
    public class AccountController : Controller
    {
        private DatabaseContext db = new DatabaseContext();

        [AllowAnonymous]
        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult LogOn(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return RedirectToAction("LogOn");
            }

            // Sign in the user with this external login provider if the user already has a login
            var user = db.Accounts.FirstOrDefault(i => i.LoginProvider == loginInfo.Login.LoginProvider && i.ProviderKey == loginInfo.Login.ProviderKey);
            if (user == null)
            {
                Account newAccount = new Account();
                newAccount.AccountName = loginInfo.DefaultUserName;
                newAccount.LoginProvider = loginInfo.Login.LoginProvider;
                newAccount.ProviderKey = loginInfo.Login.ProviderKey;
                db.Accounts.Add(newAccount);
                db.SaveChanges();
            }

            await SignInAsync(user, isPersistent: false);
            return RedirectToLocal(returnUrl);
            //else
            //{
            //    // If the user does not have an account, then prompt the user to create an account
            //    ViewBag.ReturnUrl = returnUrl;
            //    ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
            //    return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { UserName = loginInfo.DefaultUserName });
            //}
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            AuthenticationManager.SignOut();
            return RedirectToAction("Index", "Home");
        }

        #region Helpers

        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private async Task SignInAsync(Account user, bool isPersistent)
        {
            AuthenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
            System.Security.Claims.ClaimsIdentity identity = new System.Security.Claims.ClaimsIdentity();
            AuthenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = isPersistent }, identity);
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        //private bool HasPassword()
        //{
        //    var user = UserManager.FindById(User.Identity.GetUserId());
        //    if (user != null)
        //    {
        //        return user.PasswordHash != null;
        //    }
        //    return false;
        //}

        public enum ManageMessageId
        {
            ChangePasswordSuccess,
            SetPasswordSuccess,
            RemoveLoginSuccess,
            Error
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }

        private class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties() { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }

        #endregion
    }
}