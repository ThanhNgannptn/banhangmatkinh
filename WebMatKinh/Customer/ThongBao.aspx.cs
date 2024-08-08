using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
    
    public partial class ThongBao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Page.PreviousPage != null)
                {
                    TextBox txtHoTen = (TextBox)Session["txtHoTen"];
                    TextBox txtDienThoai = (TextBox)Session["txtDienThoai"];
                    TextBox txtSoNha = (TextBox)Session["txtSoNha"];
                    TextBox txtDuong = (TextBox)Session["txtDuong"];
                    TextBox txtPhuong = (TextBox)Session["txtPhuong"];
                    TextBox txtQuan = (TextBox)Session["txtQuan"];
                    TextBox txtTP = (TextBox)Session["txtTP"];
                    string maDH = (string)Session["maDH"];
                    lblThongBao.Text = "Xin chào (anh/chị) " + txtHoTen.Text;
                    lblThongBao.Text += "<br />Quý khách vừa đặt thành công các sản phẩm của shop. <br />";
                    lblThongBao.Text += "Số điện thoại của quý khách là: " + txtDienThoai.Text;
                    lblThongBao.Text += "<br />Mã đơn hàng của quý khách là: " + maDH + "<br />";
                    lblThongBao.Text += "Sản phẩm sẽ được giao đến địa chỉ của quý khách tại ";
                    lblThongBao.Text += txtSoNha.Text + " " + txtDuong.Text + ", " + txtPhuong.Text + ", " + txtQuan.Text + ", " + txtTP.Text;
                    lblThongBao.Text += " trong 2 - 3 ngày làm việc.<br />";
                    lblThongBao.Text += "Mọi thông tin về đơn hàng sẽ được gửi tới email của quý khách, ";
                    lblThongBao.Text += "vui lòng kiểm tra email để biết thêm chi tiết.<br />";
                    lblThongBao.Text += "Cảm ơn quý khách đã tin tưởng và giao dịch tại shop.<br />";
                    lblThongBao.Text += "Mọi thắc mắc vui lòng liên hệ: 0333555777.<br /><br />";
                }
            }
        
    }
}