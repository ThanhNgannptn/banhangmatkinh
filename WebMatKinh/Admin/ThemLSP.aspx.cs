using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
    public partial class ThemLSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["quanlymatkinhconn"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlDataAdapter adapt = new SqlDataAdapter();
            adapt.SelectCommand = new SqlCommand("SELECT * FROM LoaiSP", con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            try
            {
                
                adapt.InsertCommand = new SqlCommand("INSERT INTO LoaiSP VALUES (@maloaisp, " +
                    "  @tenloaisp)", con);
                adapt.InsertCommand.Parameters.AddWithValue("@maloaisp", txtMaloaiSP.Text);
                adapt.InsertCommand.Parameters.AddWithValue("@tenloaisp", txtTenloaiSP.Text);
                DataRow row = dt.NewRow();
                row["maloaisp"] = "@maloaisp";
                row["tenloaisp"] = "@tenloaisp";
                dt.Rows.Add(row);
                adapt.Update(dt);
                lblstatus.Text = "Thêm thành công!";
               
            }
            catch (Exception ex)
            {
                lblstatus.Text = ex.Message;
            }
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ThemLSP.aspx");
        }
    }
}