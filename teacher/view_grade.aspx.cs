using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;

namespace WebApplication1.teacher
{
    public partial class view_grade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"] != null && !string.IsNullOrEmpty(Session["username"].ToString()))
                {
                    lbm.Text = "<b><font color=Brown>WELCOME TO THIS PAGE, YOU ARE LOGGED IN AS: </font><b><font color=red>" + Session["UserName"] + "</font>";
                }
                else
                {
                    Response.Redirect("~/login/login.aspx");
                }
            }
            catch (Exception ex)
            {
                // Log exception or handle if needed
                Response.Redirect("~/login/login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Check if the entered campus ID is not empty
                if (string.IsNullOrEmpty(txt_id.Text))
                {
                    lbm.Text = "Please enter a valid campus ID.";
                    return;
                }

                int campusId;
                if (int.TryParse(txt_id.Text, out campusId))
                {
                    // Data context to call the stored procedure
                    DalDataContext ctx = new DalDataContext();

                    // Assuming the view_grade_total is a function that returns an IEnumerable/Collection
                    var result = ctx.view_grade_total(campusId).ToList();

                    // Check if data is returned
                    if (result.Any())
                    {
                        GridView1.DataSource = result;
                        GridView1.DataBind();
                    }
                    else
                    {
                        lbm.Text = "No records found for the given campus ID.";
                    }
                }
                else
                {
                    lbm.Text = "Invalid campus ID entered.";
                }
            }
            catch (Exception ex)
            {
                lbm.Text = "An error occurred: " + ex.Message;
                // Optionally log the error
            }
        }
    }
}
