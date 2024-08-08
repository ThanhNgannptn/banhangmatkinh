using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
    public partial class ChonSP : System.Web.UI.Page
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string masp = "";
            if (Request.QueryString["MaSP"] != null)
                masp = Request.QueryString["MaSP"];
            Session["MaSP"] = masp;
            LoadSP(masp);
        }
        protected void LoadSP(string masp)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["quanlymatkinhconn"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlDataAdapter adapt = new SqlDataAdapter("SELECT MaSP, TenSP, dvt, dgban, MaLoaiSP, Hinh FROM SanPham WHERE MaSP=" + "'" + masp + "'", con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            if (dt.Rows.Count == 0)
                return;
            lbltensp.Text = "Tên hàng: " + dt.Rows[0]["TenSP"].ToString();
            lblmasp.Text = "Mã hàng: " + dt.Rows[0]["MaSP"].ToString();
            lbldonvi.Text = dt.Rows[0]["dvt"].ToString();
            lbldongia.Text = "Đơn giá: " + dt.Rows[0]["dgban"].ToString();
            imghinh.ImageUrl = dt.Rows[0]["hinh"].ToString();
            imghinh.Height = 200;
            imghinh.Width = 220;
            ViewState["SanPham"] = dt;
        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            DataTable dtSP = (DataTable)ViewState["SanPham"];
            DataTable dtGH;     // Gio hang
            int Soluong = 0;
            if (Session["GioHang"] == null)    // tao gio hang
            {
                dtGH = new DataTable();
                dtGH.Columns.Add("MaSP");
                dtGH.Columns.Add("TenSP");
                dtGH.Columns.Add("Gia");
                dtGH.Columns.Add("SoLuong");
                dtGH.Columns.Add("TongTien");
            }
            else // lay gio hang tu Session
                dtGH = (DataTable)Session["GioHang"];
            string masp = (string)Session["MaSP"];
            int pos = TimSP(masp, dtGH);        // tim vi tri san pham trong gio hang
            if (pos != -1)  // neu tim thay tai vi tri pos
            {
                //cap nhat lai cot so luong, tong tien
                Soluong = Convert.ToInt32(dtGH.Rows[pos]["SoLuong"]) + Convert.ToInt32(txtsl.Text);
                dtGH.Rows[pos]["SoLuong"] = Soluong;
                dtGH.Rows[pos]["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["dgban"]) * Soluong;
            }
            else    //san pham chua co trong gio hang: Them vao gio hang
            {
                Soluong = int.Parse(txtsl.Text);
                DataRow dr = dtGH.NewRow();//tạo một dòng mới
                                           // gán dữ liệu cho từng cột trong dòng mới
                dr["MaSP"] = dtSP.Rows[0]["MaSP"];
                dr["TenSP"] = dtSP.Rows[0]["TenSP"];
                dr["Gia"] = dtSP.Rows[0]["dgban" ];
                dr["SoLuong"] = Convert.ToInt32(txtsl.Text);
                dr["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["dgban"]) * Soluong;
                //thêm dòng mới vào giỏ hàng
                dtGH.Rows.Add(dr);
            }
            //lưu gio hang vao session
            Session["GioHang"] = dtGH;
            //  Label lbSoluong = (Label)this.Master.FindControl("lbSoluong");
            //lbSoluong.Text = dtGH.Rows.Count.ToString();
            Response.Redirect("/Customer/GioHang.aspx");
        }
        public static int TimSP(string masp, DataTable dt)
        {
            int pos = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["MaSP"].ToString().ToLower() == masp.ToLower())
                {
                    pos = i;
                    break;
                }
            }
            return pos;
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {

        }

        
    }
}