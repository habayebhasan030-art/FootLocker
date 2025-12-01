using FootLocker.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootLocker
{
    public partial class Login : System.Web.UI.Page
    {
        Service1Client sserv = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uEmail = this.txtEmail.Text;
            string Upassword = this.txtPassword.Text;


            // this.lblInfo.Text = "user email = " + uEmail + " user passw = " + upassw;
            if (sserv.CheckUserExist(Upassword, uEmail))
            {
                Session["uEmail"] = uEmail;
                Session["uPassw"] = Upassword;
                Response.Redirect("~/MainPage.aspx");
            }
            else {
                lblInfo.Text = "User not Registered";
            }
            
        }
    }
}