using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using WebApplication1.data_acess;
using System.Data;
namespace WebApplication1.student_info
{
    public partial class upload_photo : System.Web.UI.Page
    {
        DalDataContext data = new DalDataContext();
        string strCon = ConfigurationManager.ConnectionStrings["con"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {



            try
            {
                string x = Session["username"].ToString();
                if (!IsPostBack)
                {
                    BindGrid();
                    int id = Convert.ToInt32(Session["username"]);
                    Image1.Visible = id != 0;
                    if (id != 0)
                    {
                        byte[] bytes = (byte[])GetData("SELECT photo FROM student WHERE campus_id=" + id).Rows[0]["photo"];
                        string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                        Image1.ImageUrl = "data:image/png;base64," + base64String;
                    }
                }

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
        private DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        sda.Fill(dt);
                    }
                }
                return dt;
            }
        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    int camp=Convert.ToInt32(Session["username"]);
                    cmd.CommandText = "select campus_id,fname, mname from student  where campus_id='"+camp+"'";
                    cmd.Connection = con;
                    con.Open();

                    gvImages.DataSource = cmd.ExecuteReader();
                    gvImages.DataBind();
                    con.Close();
                }
            }
        }
        protected void DownloadFile(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Name, Data, ContentType,resource_description from tblFiles where Id=@Id";
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Data"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["Name"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
        protected void Upload(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "update  student  set  photo=@Data where  campus_id=@camp";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            int campus_id=Convert.ToInt32(Session["username"]);
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@Data", bytes);
                            cmd.Parameters.AddWithValue("@camp",campus_id);
                             
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            BindGrid();
                        }
                    }
                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}