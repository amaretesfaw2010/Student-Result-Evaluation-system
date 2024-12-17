using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.login
{
    public partial class login : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string str, UserName, Password;
        SqlCommand com;
        SqlDataAdapter sqlda;
        DataTable dt;
        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "Select * from users";
            com = new SqlCommand(str);
            sqlda = new SqlDataAdapter(com.CommandText, con);
            dt = new DataTable();
            sqlda.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                UserName = dt.Rows[i]["username"].ToString();
                Password = dt.Rows[i]["password"].ToString();
                if (UserName ==user.Text  && Password == pwd.Text)
                {
                    Session["username"] = UserName;
                    if (dt.Rows[i]["role"].ToString() == "student")
                        Response.Redirect("~/student_info/home.aspx");
                    else if (dt.Rows[i]["role"].ToString() == "teacher")
                        Response.Redirect("~/teacher/calculate_grade_total_average.aspx");
                    //else if (dt.Rows[i]["Role"].ToString() == "PaidUser")
                    //    Response.Redirect("~/PaidUser/PaidUser.aspx");
                }
                else
                {
                    lbl.Text = "Invalid User Name or Password! Please try again!";
                }
            }

        }
    }
}