using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;
namespace WebApplication1.teacher
{
    public partial class calculate_grade_total_average : System.Web.UI.Page
    {
        DalDataContext data = new DalDataContext();
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
                if (!this.IsPostBack)
                {

                    DalDataContext ctx = new DalDataContext();
                    drop_studid.DataSource = ctx.students;
                    drop_studid.DataTextField = "campus_id";
                    drop_studid.DataValueField = "campus_id";
                    drop_studid.DataBind();
                    drop_studid.Items.Insert(0, new ListItem("--Select student--", ""));

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

                data.calculate_total(Convert.ToInt32(drop_studid.Text));
                data.SubmitChanges();
                lbm.Text = "total of the studen  result is calculated!";
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