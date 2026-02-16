using FootLocker.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootLocker
{
    public partial class contactUs : Page
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
            string userEmail = Session["Email"] as string;
            Users user = seserv.SelectUserByEmail(userEmail);
            this.txtEmail.Text = user.UEmail;
            this.txtFirstName.Text = user.FName;
            this.txtLastName.Text = user.LName;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userEmail = Session["Email"] as string;
            Users user = seserv.SelectUserByEmail(userEmail);
            Mailbox m = new Mailbox();

            m.SenderEmail = this.txtEmail.Text;
            m.SenderFname = this.txtFirstName.Text;
            m.SenderLname = this.txtLastName.Text;
            m.MsgSubject = this.txtSubject.Text;
            m.MsgBody = this.txtDescription.Text;
            m.MsgDate = DateTime.Now.ToString();
            m.MsgRead = false;
            m.RecieverEmaill = "";

            if (this.txtFirstName.Text != user.FName || this.txtLastName.Text != user.LName)
            {
                this.lblMessage.Text = "You Are not allowed to change your first and last name";
            }
            else
            {
                int answer = seserv.ContactUs(m);
                this.lblMessage.Text = "Your message has been sent.";
            }
        }
    }
}