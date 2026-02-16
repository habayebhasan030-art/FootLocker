using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using FootLocker.ServiceReference1;
namespace FootLocker
{
    public partial class Userprofail2 : System.Web.UI.Page
    {
        Service1Client seserv = new Service1Client();
      
      
protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uEmail"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }

            if (!IsPostBack)
            {
                ShowUserData();
            }
        }

        private void ShowUserData()
        {
            string userEmail = Session["uEmail"] as string;
            Users user = seserv.SelectUserByEmail(userEmail);

            this. = user.Email;
            this.Fnam.Text = user.Fname;
            this.txtLastname.Text = user.Lname;
            this.txtPassword.Text = user.Upassword;
            this.txttelnum.Text = user.Utelnum;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Users user = service.SelectUserByEmail(Session["uEmail"] as string);

            user.Fname = this.txtFirstname.Text;
            user.Lname = this.txtLastname.Text;
            user.Upassword = this.txtPassword.Text;
            user.Utelnum = this.txttelnum.Text;
            user.Uemail = this.txtemail.Text;

            if (seserv.UpdateUserProfile(user) > 0)
            {
                Response.Redirect("~/home2.aspx");
            }
            else
            {
                this.lblInfo.Text = "updat failed";
            }
        }


    }
}
