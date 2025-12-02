using FootLocker.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootLocker
{
    public partial class SignIn1 : System.Web.UI.Page
    {
        Service1Client sserv = new Service1Client();

        public object TxtPassword { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uEmail = this.txtEmail.Text;
            string Upassword = this.txtPassword.Text ;



            if (sserv.CheckUserExist(Upassword, uEmail))
            {
                Session["uEmail"] = uEmail;
                Session["uPassw"] = Upassword;
                Response.Redirect("~/MainPage.aspx");

            }
            else
                this.lblMsg.Text = "User Not Found";
        }
    }
}