using FootLocker.ServiceReference1;
using Sally_sPerfumeClients.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sally_sPerfumeClients
{
    public partial class DeLaccount : System.Web.UI.Page
    {
        Service1Client seserv = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uEmail"] == null)
                Response.Redirect("~/Home1.aspx");

            
        }

        protected void btnDelAcc_Click(object sender, EventArgs e)
        {
            this.lblMsg.Text = "your account will be permenetly deleted ! ";
            .Visible = false;
            btnYes.Visible = true;
            btnNo.Visible = true;
            lblSure.Visible = true;
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            string userEmail = this.txtEmail.Text;

            if (seserv.DeleteUserDataByEmail(userEmail, Session["uPassw"] as string) > 0)
                Response.Redirect("~/Home1.aspx");
            else
                this.lblMsg.Text = "your account is not deleted ! ";
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {

        }
    }
}


