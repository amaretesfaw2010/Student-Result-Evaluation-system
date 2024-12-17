using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;
namespace WebApplication1.teacher
{
    public partial class create_assessment : System.Web.UI.Page
    {
        DalDataContext dal = new DalDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    if (Session["username"].ToString() != "")
            //    {
            //        lbm.Text = "<b><font color=Brown>" + "WELCOME  TO  THIS YOU ARE LOGGED AS:: " + "</font>" + "<b><font color=red>" + Session["UserName"] + "</font>";
            //    }
            //    else
            //    {
            //        Response.Redirect("~/login/login.aspx");
            //    }
            //}
            //catch (Exception ex)
            //{

            //    Response.Redirect("~/login/login.aspx");
            //}

        }

         

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            try
            {
                dal.create_continous(txt_asstype.Text, txt_assname.Text, Convert.ToDecimal(txt_maxpoint.Text));
                dal.SubmitChanges();
                lbm.Text = "contionous  Assessment created   successfully!";
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