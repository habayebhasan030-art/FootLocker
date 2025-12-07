using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootLocker
{
    public partial class ForgetPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnCheck_Click(object sender, EventArgs e)
        {
            string uEmail =this.txtEmail.Text;
            if (seserv.CheckUserExistByEmail(uEmail))
            {
                this.btnCheck.Visible = false;
                this.txtQuestion.Visible = true ; 
                this.lblInfo.Visible = true;
                this.lblInfo.Text = "";
                this.txtAnswer.Visible = true;
                this.txtQuestion.Text=seserv.GetQuestion(uEmail);
                this.btnRecovery.Visible = true;
                
            }
            else
            {
                this.lblInfo.Visible = true;
                this.lblInfo.Text = "Not registered Email Try again!";
            }


        }

        protected void btnRecovery_Click(object sender, EventArgs e)
        {
            string Uemail=this.txtEmail.Text;
            string pass=seserv.passRecovery(Uemail,txtAnswer.Text);
            if(pass.Length > 0)
            {
                lblInfo.Text="your password = "+pass;
            }
            else
            {
                lblInfo.Text = "Try6 Again plz!!";
            }


        }
    }
}