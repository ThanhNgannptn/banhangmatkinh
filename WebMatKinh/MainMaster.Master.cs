using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["GioHang"] != null)
            {
                dt = (DataTable)Session["GioHang"];
                lbSoluong.Text = dt.Rows.Count.ToString();
            }

        }

        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Menu1_PreRender(object sender, EventArgs e)
        {

        }

      
    }
}