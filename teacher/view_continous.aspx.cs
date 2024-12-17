using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;
namespace WebApplication1.teacher
{
    public partial class view_continous : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
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

        protected void txt_id_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DalDataContext ctx = new DalDataContext();

            GridView1.DataSource = ctx.view_continous(Convert.ToInt32(txt_id.Text));

            GridView1.DataBind();
        }
    }
}