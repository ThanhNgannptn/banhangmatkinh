<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebMatKinh.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <style>
        /* Thiết lập CSS cho header */
header {
    background-color: #00CCFF;
    color: #fff;
    padding: 10px 0;
}

.container-h {
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
}
        .con {
            display: flex;
            justify-content: center;
        }
.logo {
    font-size: 24px;
    margin: 0 auto;
}

.logo a {
    color: #fff;
    text-decoration: none;
}

nav ul {
    list-style: none;
    padding: 0;
}

nav ul li {
    display: inline;
    margin-right: 20px;
}

nav a {
    color: #fff;
    text-decoration: none;
}

/* Thiết lập CSS cho liên kết */
a:hover {
    text-decoration: underline;
}
/* Tùy chỉnh khối div chứa menu */

/* Định dạng các mục menu */
.dmn{
        margin-top: 20px; /* Khoảng cách phía trên */
        margin-bottom: 20px; /* Khoảng cách phía dưới */
            display: flex;
    justify-content: center;
    }
#menusp ul {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: center;
}

#menusp li {
    margin: 0 10px; /* Khoảng cách giữa các mục menu */
}

#menusp a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
}

#menusp a:hover {
    color: #007bff;
}
/* Thiết lập CSS cho danh sách sản phẩm */
.product-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 20px;
}

.product {
    width: 30%;
    margin-bottom: 20px;
    padding: 20px;
    border: 1px solid #ccc;
    text-align: center;
}

.product img {
    max-width: 100%;
}
.m20{
    margin-top: 20px;
}
/* Thiết lập CSS cho footer */
 footer {
    background-color: cadetblue;
    color: #fff;
    padding: 20px 0;
}

.container-f {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.footer-content {
    display: flex;
    justify-content: space-between;
}

.footer-section {
    flex: 1;
    padding: 20px;
}

.footer-section h3 {
    font-size: 20px;
}

.footer-section p, .footer-section ul {
    font-size: 14px;
}

.footer-section ul {
    list-style: none;
    padding: 0;
}

.footer-section ul li {
    margin-bottom: 5px;
    float: left;
}

.footer-section a {
    color: #fff;
    text-decoration: none;
}

/* Thiết lập CSS cho liên kết */
a {
    color: #0077ff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
/*CSS MENU ICON*/
#menuic{

}
/*css khuyến mãi*/
#km {
    background-image: url(../Images/brkm.jpg);
    background-size: cover;
    background-position: center;
    height: 890px; /* Đủ chiều cao, không cần đặt width */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 0;
    position: relative; /* Đặt vị trí tương đối để chứa nút */
}

.magrinb50 {
    margin-bottom: 50px;
}

.magrinr20 {
    margin-right: 20px;
}



/* Reset margin và padding mặc định của trang */
body, html {
    margin: 0;
    padding: 0;
}

/* CSS cho section */
section {
    display: flex;
    justify-content: center;
}

/* CSS cho button và hình ảnh trong section */
section img, .mglr img {
    display: block; /* Loại bỏ khoảng trắng dư thừa */
}

        .auto-style1 {
            width: 1046px;
            height: 194px;
        }
.cb{
    width:100%;
    clear:both; 
    display: block;
        margin-top: 20px;
        margin-left:20px;
}
        .auto-style2 {
            width: 65px;
            height: 52px;
        }
        .logo {
    margin-right: 10px; /* Khoảng cách giữa logo và menu */
}
        .container-h {
    display: flex;
    align-items: center;
}
 

    </style>
    <header>
             <form id="form1" runat="server">
         <div class="container-h">
            <div class="logo">
                <nav>   
                <a href="index.aspx "><img src="Images/d520d7bc37c3e19db8d2%20(1).jpg" alt="Logo" class="auto-style2"></a>
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/index.aspx" Text="Trang chủ" Value="Trang chủ"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DMSP.aspx" Text="Danh mục sản phẩm" Value="Danh mục sản phẩm"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PhanQuyen.aspx" Text="Quản lý" Value="Quản lý"></asp:MenuItem>
                </Items>
            </asp:Menu>
                    </nav>
                </div>
            <nav>
                <ul>
                    <li></li>
                   
                </ul>
            </nav>
        </div>
         </header>

    <main>
 <!--       <section class="product-list">
            <div class="product">
                <img src="product1.jpg" alt="Sản phẩm 1">
                <h2>Sản phẩm 1</h2>
                <p>Mô tả sản phẩm 1</p>
                <p>Giá: $100</p>
                <button>Mua hàng</button>
            </div>
     </section>
            <!-- Thêm nhiều sản phẩm khác ở đây -->

  
        <div class="con m20">
            <div id="productCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner ">
                    <div class="carousel-item active">
                        <img src="Images/km1.jpg" alt="baner 1" class="auto-style1"/>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/km2.jpg" alt="baner 1" width="1176" height="208"/>
                    </div>
                    <div class="carousel-item">
                        <img src="Images/km3.jpg" alt="baner 1" width="1176" height="208"/>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#productCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#productCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <div class="dmn">
    <asp:Menu ID="menusp" runat="server" Orientation="Horizontal">
        <Items>
            <asp:MenuItem ImageUrl="~/Images/5555.png" Text="Gọng kính" Value="3004" NavigateUrl="~/DMSP.aspx" ></asp:MenuItem>
            <asp:MenuItem ImageUrl="~/Images/icons8-glasses-60 (1).png" Text="Tròng kính" Value="3003" NavigateUrl="~/DMSP.aspx"></asp:MenuItem>
            <asp:MenuItem ImageUrl="~/Images/icons8-glasses-60.png" Text="Kính trẻ em" Value="3001" NavigateUrl="~/DMSP.aspx"></asp:MenuItem>
            <asp:MenuItem ImageUrl="~/Images/icons8-glasses-64 (1).png" Text="Kính râm" Value="3002" NavigateUrl="~/DMSP.aspx"></asp:MenuItem>
            <asp:MenuItem ImageUrl="~/Images/icons8-glasses-64 (2).png" Text="Kính bảo hộ" Value="3006" NavigateUrl="~/DMSP.aspx"></asp:MenuItem>
            <asp:MenuItem ImageUrl="~/Images/icons8-glasses-64.png" Text="Phụ kiện kính" Value="3005" NavigateUrl="~/DMSP.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
           
</div>

        <div id="km">
    <section class="magrinb50">
       <a href="ChonSP.aspx?MaSP=11">
        <img class="magrinr20" src="Images/k1.jpg" />
            </a>
          <a href="ChonSP.aspx?MaSP=62">
        <img class="magrinr20" src="Images/k2.jpg" />
                </a>
          <a href="ChonSP.aspx?MaSP=12">
        <img class="magrinr20" src="Images/k3.jpg" />
                </a>
          <a href="ChonSP.aspx?MaSP=15">
        <img src="Images/k4.jpg" /> 
                </a>
    </section>
           
         <a href="DMSP.aspx">
    <img src="Images/Bb.jpg" />
             </a>
               
</div>
           <h3 class="cb">SẢN PHẨM NỔI BẬT</h3>
        <section class="dmn">
            
            <div>
            <asp:SqlDataSource ID="scrspnb" runat="server" ConnectionString="<%$ ConnectionStrings:quanlymatkinhconn %>" SelectCommand="SELECT masp, tensp, dgban, hinh FROM sanpham WHERE (masp BETWEEN 1 AND 8) ORDER BY tensp"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="scrspnb" Height="607px" RepeatColumns="4" Width="1085px">
                <ItemTemplate>
                    <div class="text-center">
                        <asp:Image ID="Image3" runat="server" Height="188px" ImageUrl='<%# Eval("hinh") %>' Width="192px" />
                    </div>
                    <div class="text-center">
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text='<%# Eval("tenSP") %>'></asp:HyperLink>
                        <br />
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Font-Size="Large" ForeColor="#666666" Text='<%# Eval("dgban" ,"{0:0,000 vnđ}") %>' />
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" Font-Underline="True" ForeColor="#B4B469" NavigateUrl='<%# "ChonSP.aspx?MaSP=" + Eval("MaSP") %>'>Xem chi tiết</asp:HyperLink>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            </div>
        </section>

               </form>

    </main>

    <footer>
        <div class="container-f">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>Liên hệ</h3>
                    <p>Địa chỉ: 385 Tăng Nhơn Phú Thủ Đức</p>
                    <p>Email: 2121005173@sv.ufm.edu.vn</p>
                    <p>Điện thoại: 123-456-7890</p>
                </div>
                <div class="footer-section">
                    <h3>Liên kết nhanh</h3>
                        <a href="index.aspx">Trang chủ</a></li> <br />
                        <a href="DMSP.aspx">Sản phẩm</a></li> <br />
                        <a href="index.aspx">Giới thiệu</a></li> <br />
                        <a href="index.aspx">Liên hệ</a> <br />
                </div>
                <div class="footer-section">
                    <h3>Theo dõi chúng tôi</h3>
                    <ul>
                        <li><a href="#">
                            <img src="Images/icons8-facebook-48.png" /> </a></li>
                        <li><a href="#">
                            <img src="Images/icons8-line-48.png" /></a></li>
                        <li><a href="#">
                            <img src="Images/icons8-phone-48.png" /></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>

