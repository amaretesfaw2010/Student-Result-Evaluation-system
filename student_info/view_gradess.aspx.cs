using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;
namespace WebApplication1.student_info
{
    public partial class view_gradess : System.Web.UI.Page
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
                DalDataContext ctx = new DalDataContext();

                GridView1.DataSource = ctx.view_grade_total(Convert.ToInt32(Session["username"]));

                GridView1.DataBind();
            }
            catch (Exception ex)
            {

                Response.Redirect("~/login/login.aspx");
            }
          
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }
           
    }
}