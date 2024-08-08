using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lsttimkiem.Visible = false;
        }
      
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Menu menu = (Menu)this.Master.FindControl("Menu1");
            if (menu.SelectedValue != "")
            {
                string cmdStr = "SELECT MaSP, TenSP, DGBAN, Hinh FROM SanPham WHERE MaLoaiSP = " +
                    Convert.ToInt32(menu.SelectedValue).ToString() + " ORDER BY TenSP";
                    srcsp.SelectCommand = cmdStr;
                    lstsp.DataBind();  
                    //SqlDataSource1.SelectCommand = cmdStr;
                    //DataList1.Visible = true;
                    //DataList1.DataBind();
                    //Button3.Visible = false;
                   
            }
            TextBox txtSearch = (TextBox)this.Master.FindControl("txtSearch");
            if (txtSearch.Text != "")
            {
                string tim = txtSearch.Text;
                string cm = "SELECT MaSP, TenSP, DGBAN, Hinh FROM SanPham WHERE tenSP like '%" + tim + "%' ";
                srcsp.SelectCommand = cm;
                lsttimkiem.DataBind();
                lsttimkiem.Visible = true;
                lstsp.Visible = false;
            }


            //Page index =HttpContext.Current.Handler as Page;
            //if (index!= null)
            //{
            //    Menu menusp =index.FindControl("menusp") as Menu;
            //    if (!string.IsNullOrEmpty(menusp.SelectedValue))
            //    {
            //        string cmd = "SELECT MaSP, TenSP, DGBAN, Hinh FROM SanPham WHERE MaLoaiSP = " +
            //       Convert.ToInt32(menu.SelectedValue).ToString() + " ORDER BY TenSP";
            //        srcsp.SelectCommand = cmd;
            //        lstsp.DataBind();
            //    }


            //}
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox2.Checked = false;
            string tang = "SELECT MaSP, TenSP, DGBAN, Hinh FROM SanPham order by dgban asc ";
            srcsp.SelectCommand = tang;
            lstsp.DataBind();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox1.Checked = false;
            string giam = "SELECT MaSP, TenSP, DGBAN, Hinh FROM SanPham order by dgban desc ";
            srcsp.SelectCommand = giam;
            lstsp.DataBind();
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox1.Checked = true)
            {
                CheckBox2.Checked = false;
                string tang = "SELECT MaSP, TenSP, DGBAN, Hinh FROM SanPham order by dgban asc ";
                srcsp.SelectCommand = tang;
                lstsp.DataBind();
            }
            else if (CheckBox2.Checked = true)
            {
                CheckBox1.Checked = false;
                string giam = "SELECT MaSP, TenSP, DGBAN, Hinh FROM SanPham order by dgban desc ";
                srcsp.SelectCommand = giam;
                lstsp.DataBind();
            }
        }  
    }
}