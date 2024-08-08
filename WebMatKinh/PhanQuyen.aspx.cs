using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
    public partial class PhanQuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["quanlymatkinhconn"].ToString());

            try
            {
                string uid = txtdn.Text;
                string pass = txtmk.Text;
                con.Open();
                string qry = "SELECT * FROM dangnhap WHERE tendn='" + uid + "' AND matkhau='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label1.Text = "Đăng Nhập Thành Công";
                    Response.Redirect("/Admin/HomeQL.aspx");
                }
                else
                {
                    Label1.Text = "Tên hoặc mật khẩu không đúng. " +
                        "Vui lòng thử lại!";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}