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
    public partial class ThemSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["quanlymatkinhconn"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlDataAdapter adapt = new SqlDataAdapter();
            adapt.SelectCommand = new SqlCommand("SELECT * FROM SanPham", con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            string strFileUpload = "";
            try
            {
                if (FileUpload1.HasFile)
                {
                    strFileUpload = "~/Images/" + FileUpload1.FileName;
                    string path = MapPath("/Images/") + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(path);
                }
                adapt.InsertCommand = new SqlCommand("INSERT INTO SanPham VALUES (@masp, " +
                    " @maloaisp, @tensp, @nsx, @dvt, @dgban, @dgnhap, @hinh)", con);
                adapt.InsertCommand.Parameters.AddWithValue("@masp", txtMaSP.Text);
                adapt.InsertCommand.Parameters.AddWithValue("@tensp", txtTenSP.Text);
                adapt.InsertCommand.Parameters.AddWithValue("@dvt", drpDVT.SelectedValue);
                adapt.InsertCommand.Parameters.AddWithValue("@dgban", Convert.ToDouble(txtDgban.Text));
                adapt.InsertCommand.Parameters.AddWithValue("@nsx", Convert.ToDateTime(txtnsx.Text.ToString()));
                adapt.InsertCommand.Parameters.AddWithValue("@dgnhap", Convert.ToDouble(txtDgnhap.Text));
                adapt.InsertCommand.Parameters.AddWithValue("@maloaisp", Convert.ToInt32(drpLoai.SelectedValue));
                adapt.InsertCommand.Parameters.AddWithValue("@hinh", strFileUpload);
                DataRow row = dt.NewRow();
                row["masp"] = "@masp";
                row["tensp"] = "@tensp";
                row["dvt"] = "@dvt";
                row["dgban"] = Convert.ToDouble(txtDgban.Text);
                row["nsx"] = Convert.ToDateTime(txtnsx.Text);
                row["dgnhap"] = Convert.ToDouble(txtDgnhap.Text);
                row["maloaisp"] = Convert.ToInt32(drpLoai.SelectedValue);
                row["hinh"] = "@hinh";
                dt.Rows.Add(row);
                adapt.Update(dt);
                lblstatus.Text = "Thêm thành công!";
                //GridView1.Visible = true;
            }
            catch (Exception ex)
            {
                lblstatus.Text = ex.Message;
            }
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ThemSanPham.aspx");
        }
    }
}