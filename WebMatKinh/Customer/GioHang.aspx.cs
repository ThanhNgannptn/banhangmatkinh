using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
    public partial class GioHang : System.Web.UI.Page
    {
        DataTable dt = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }
        protected void LoadData()
        {
            dt = (DataTable)Session["GioHang"];
            grdgiohang.DataSource = dt;
            grdgiohang.DataBind();
            //grdgiohang.Columns[2].ControlStyle.Width = 80;
            //grdgiohang.Columns[3].ControlStyle.Width = 150;
            //grdgiohang.Columns[4].ControlStyle.Width = 80;
            //grdgiohang.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            //grdgiohang.Columns[5].ControlStyle.Width = 80;
            //grdgiohang.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            ////grdgiohang.Columns[6].ControlStyle.Width = 100;
            ////grdgiohang.Columns[6].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            if (dt != null)
            {
                double tong = TinhTongTien(dt);
                Session["tong"] = tong;     // lưu để truyền qua trang DonHang.aspx
                lblTongTien.Text = "Tổng tiền là: " + String.Format("{0:0,000}", tong);
            }
        }
        protected double TinhTongTien(DataTable dt)
        {
            if (dt == null)
                return 0;
            double sum = 0;
            foreach (DataRow row in dt.Rows)
                sum += Convert.ToDouble(row["TongTien"]);
            return sum;
        }
        protected void btnmuahang_Click(object sender, EventArgs e)
        {

        }

        protected void btndathang_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["GioHang"];
        }

        protected void grdgiohang_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdgiohang.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void grdgiohang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dt = (DataTable)Session["GioHang"];
            GridViewRow row = grdgiohang.Rows[e.RowIndex];
            dt.Rows[row.DataItemIndex].Delete();
            grdgiohang.EditIndex = -1;
            Session["GioHang"] = dt;
            LoadData();
        }

        protected void grdgiohang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            dt = (DataTable)Session["GioHang"];
            GridViewRow row = grdgiohang.Rows[e.RowIndex];
            TextBox txtsl = (TextBox)(row.Cells[4].Controls[0]);
            int Soluong = Convert.ToInt32(txtsl.Text);
            dt.Rows[row.DataItemIndex]["SoLuong"] = txtsl.Text;
            dt.Rows[row.DataItemIndex]["TongTien"] =
                Convert.ToDouble(dt.Rows[row.DataItemIndex]["gia"]) * Soluong;
            //Reset the edit index.
            grdgiohang.EditIndex = -1;
            Session["GioHang"] = dt;
            LoadData();
        }

        protected void grdgiohang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdgiohang.EditIndex = -1;
            LoadData();
        }

       
    }
}