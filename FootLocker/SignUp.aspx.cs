using FootLocker.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootLocker
{
    public partial class SignUp : System.Web.UI.Page
    {
        Service1Client seserv = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCities();
                GetYear();
            }
        }


        private void GetCities()
        {
            ddlCity.DataSource = seserv.SelectAllCityes();
            ddlCity.DataTextField = "cityname";
            ddlCity.DataValueField = "cityID";
            ddlCity.DataBind();
        }

        private void GetYear()
        {
              int[] yeararr = new int[100];
            int y = DateTime.Now.Year - 100;

            for (int i = 0; i < 100; i++)
            {
                yeararr[i] = i + y;
            }

            ddlYear.DataSource = yeararr;
            ddlYear.DataBind();
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {

            Users us = new Users();
            Cityes c = new Cityes();

            string firstname = txtFirstName.Text;
            string lastname = txtLastName.Text;
            string gender = rblGender.SelectedValue;
            string day = ddlDay.SelectedValue;
            string month = ddlMonth.SelectedValue;
            string year = ddlYear.SelectedValue;
            string cityname = ddlCity.SelectedItem.Text;
            string question = this.ddlDay.SelectedItem.Text;
            string answer = this.txtAnswer.Text;

            c = seserv.SelectCityByName(cityname);

            us.FName = firstname;
            us.LName = lastname;
            us.Ugender = gender;
            us.UPassword = txtPassword.Text;
            us.UEmail = txtEmail.Text;
            us.Ubirthday = day + "-" + month + "-" + year;
            us.City = c;
            us.Uanswer = answer;
            us.Uquestion = question;

            if (seserv.CheckUserExist(us.UPassword, us.UEmail))
            {
                lblMsg.Text = "You are already registered";
            }
            else
            {
                if (seserv.AddUser(us) > 0)
                    lblMsg.Text = "Welcome to my website";
                else
                    lblMsg.Text = "Wrong Data";
            }
        }
    }
}