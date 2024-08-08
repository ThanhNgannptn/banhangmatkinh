using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMatKinh
{
   
    public partial class DonHang : System.Web.UI.Page
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
            grddh.DataSource = dt;
            grddh.DataBind();
            //grddh.Columns[0].ControlStyle.Width = 80;
            //grddh.Columns[1].ControlStyle.Width = 150;
            //grddh.Columns[2].ControlStyle.Width = 80;
            //grddh.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            //grddh.Columns[3].ControlStyle.Width = 80;
            //grddh.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            //grddh.Columns[4].ControlStyle.Width = 100;
            //grddh.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            if (dt != null)
            {
                double tong = (double)Session["tong"];
                lblTongTien.Text = "Tổng tiền: " + String.Format("{0:0,000}", tong);
            }
        }
        protected void btnok_Click(object sender, EventArgs e)
        {
            DateTime d = DateTime.Now;
            string maDonHang = d.Day.ToString() + d.Month.ToString() +
                (d.Year % 100).ToString() + d.Hour.ToString() +
                d.Minute.ToString() + d.Second.ToString();
            Session["txtHoTen"] = txtHoTen;
            Session["txtEmail"] = txtEmail;
            Session["txtDienThoai"] = txtDienThoai;
            Session["txtSoNha"] = txtSoNha;
            Session["txtDuong"] = txtDuong;
            Session["txtPhuong"] = txtPhuong;
            Session["txtQuan"] = txtQuan;
            Session["txtTP"] = txtTP;
            Session["maDH"] = maDonHang;
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(txtEmail.Text);
                mail.From = new MailAddress("2121005173@sv.ufm.edu.vn");
                mail.Subject = "Email này được gửi từ Cửa hàng bán Mắt Kính";
                mail.Body = "Đơn hàng có mã là: " + maDonHang + " sẽ được gửi đến quý khách " +
                        txtHoTen.Text + ". Xin cảm ơn!";
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("2121005173@sv.ufm.edu.vn", "Pqz54198");
                client.Send(mail);
                Server.Transfer("/Customer/ThongBao.aspx");
            }
            catch (SmtpFailedRecipientException ex)
            {
                lblstatus.Text = "Gửi Mail không thành công! " + ex.FailedRecipient;
            }
        
    }
    }
}