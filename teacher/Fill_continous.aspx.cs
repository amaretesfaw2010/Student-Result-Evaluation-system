using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.data_acess;
namespace WebApplication1.teacher
{
    public partial class Fill_continous : System.Web.UI.Page
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
                    drop_ass_id.DataSource = ctx.Continous_Assesments;
                    drop_ass_id.DataTextField = "Ass_name";
                    drop_ass_id.DataValueField = "Ass_id";
                    drop_ass_id.DataBind();
                    drop_ass_id.Items.Insert(0, new ListItem("--Select Assessment--", ""));
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

        protected void Btn_fillass_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Btn_fill_Click(object sender, EventArgs e)
        {
            try
            {

                data.Fill_continous(Convert.ToInt32(drop_studid.Text), Convert.ToInt32(drop_ass_id.Text), Convert.ToDecimal(txt_result.Text));
                data.SubmitChanges();
                lbm.Text = "Assessment data inserted  successfully!";
                lbm.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {

                lbm.Text = ex.Message;
                lbm.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string searchQuery = txt_searchStudent.Text.Trim();

            if (!string.IsNullOrEmpty(searchQuery))
            {
                // Sample logic: Fetch students from the database
                string query = "SELECT campus_id, fname, lname, mname FROM student WHERE fname LIKE @search OR lname LIKE @search OR mname LIKE @search OR campus_id LIKE @search";

                using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9N3PIKD\\SQLEXPRESS;Initial Catalog=momlove;Integrated Security=True;Encrypt=False"))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@search", "%" + searchQuery + "%");
                        conn.Open();

                        SqlDataReader reader = cmd.ExecuteReader();

                        // Bind data to DropDownList
                        drop_studid.Items.Clear();
                        drop_studid.Items.Add(new ListItem("-- Select Student --", ""));

                        while (reader.Read())
                        {
                            // Handle possible null values in mname and lname
                            string fname = reader["fname"].ToString();
                            string mname = reader["mname"] != DBNull.Value ? reader["mname"].ToString() : string.Empty;
                            string lname = reader["lname"] != DBNull.Value ? reader["lname"].ToString() : string.Empty;

                            // Concatenate the full name
                            string fullName = fname + " " + mname + " " + lname;
                            // Add to DropDownList
                            drop_studid.Items.Add(new ListItem(fullName.Trim(), reader["campus_id"].ToString()));

                            // Debugging: Log the values being added to the DropDownList
                            Console.WriteLine("Adding student: " + fullName);
                        }

                        conn.Close();
                    }
                }
            }
            else
            {
                lbm.Text = "Please enter a name or ID to search.";
                lbm.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}