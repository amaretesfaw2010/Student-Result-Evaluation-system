using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;
namespace WebApplication1.student_info
{
    public partial class calculate_total__grade : System.Web.UI.Page
    {
        DalDataContext data = new DalDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack){
                DalDataContext ctx = new DalDataContext();

                GridView1.DataSource = ctx.view_continous(Convert.ToInt32(Session["username"]));

                GridView1.DataBind();
            }

            try
            {
                string x = Session["username"].ToString();
                 
                if (x == "")
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
            try
            {

           

                data.calculate_total(Convert.ToInt32(Session["username"]));
                data.SubmitChanges();
                lbm.Text = "total of your   result is calculated!"+"if  you want  to  see your grade  and total please click  on view grade at the top" ;
                lbm.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {

                lbm.Text = ex.Message;
                lbm.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}