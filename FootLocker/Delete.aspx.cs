using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FootLocker.ServiceReference1;
namespace FootLocker
{
    public partial class Delete : System.Web.UI.Page
     
    {

        Service1Client seserv = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelAcc_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Your account will be permanently deleted!";

            btnDelAcc.Visible = false;
            yesbtn.Visible = true;
            btnNo.Visible = true;
            lblSure.Visible = true;
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            string userEmail = this.txt.Text;

            if (seserv.DeleteUserDataByEmail(userEmail, Session["uPassw"] as string) > 0)
                Response.Redirect("~/Home1.aspx");
            else
                this.lblMsg.Text = "Your account is not deleted!";
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Deletion cancelled.";

            btnDelAcc.Visible = true;
            yesbtn.Visible = false;
            btnNo.Visible = false;
            lblSure.Visible = false;
        }
    }
}