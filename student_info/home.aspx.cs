using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.student_info
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() != "")
                {
                    lbm.Text = "<b><font color=Brown>" + "WELCOME  TO  THIS YOU ARE LOGGED AS:: " + "</font>" + "<b><font color=red>" + Session["UserName"] + "</font>";
                }
                else
                {
                    Response.Redirect("~/login/login.aspx");
                }
            }
            catch (Exception ex)
            {
                
             Response.Redirect("~/login/login.aspx");
            }
        }
    }
}