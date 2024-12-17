using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;
namespace WebApplication1.student_info
{
    public partial class change_password : System.Web.UI.Page
    {
        DalDataContext data=new DalDataContext();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (data.check_passavaliability(txt_newpas.Text).Count() > 0)
            {

                lbm.Text = "the password is already exists please alter another password";
            }
            else { 
            data.change_password(txt_oldpas.Text,txt_newpas.Text,Convert.ToInt32(Session["username"]));
            lbm.Text = "the password is changed successfully"+"  :your new password is:  "+txt_newpas.Text;
            }
        }
    }
}