// C# Code Behind
// Christopher Dickerson

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Lab3_Christopher_Dickerson
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BSubmit.Click += new EventHandler(this.sClick);
            BClear.Click += new EventHandler(this.clrClick);
        }

        protected void sClick(object sender, EventArgs e)
        {
            if (validName.IsValid && validEmailRF.IsValid && validEmailRE.IsValid && 
                validPhone.IsValid && validPhoneRE.IsValid)
            {
                LInfo.Visible = true;
                LInfo.Text = "The Information Entered: <br />Name: " + TName.Text +
                    "<br />Email: " + TEmail.Text + "<br />Phone: " + TPhone.Text;
                TName.Text = "";
                TEmail.Text = "";
                TPhone.Text = "";
            }
        }

        protected void clrClick(object sender, EventArgs e)
        {
            TName.Text = "";
            TEmail.Text = "";
            TPhone.Text = "";
            LInfo.Text = "";
            LInfo.Visible = false;
        }
    }
}