<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="shopLaptop.Page.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HS-LAPTOP</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link href="/Lib/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/Lib/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Lib/css/elegant-icons.css" rel="stylesheet" />
    <link href="/Lib/css/nice-select.css" rel="stylesheet" />
    <link href="/Lib/css/jquery-ui.min.css" rel="stylesheet" />
    <link href="/Lib/css/owl.carousel.min.css" rel="stylesheet" />
    <link href="/Lib/css/slicknav.min.css" rel="stylesheet" />
    <link href="/Lib/css/style.css" rel="stylesheet" />
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>


    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> nguyenhoangson@gmail.com</li>
                                <li>Chuyên laptop và phụ kiện</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="https://www.facebook.com/nguyen.hoang.son.4499/"><i class="fa fa-facebook"></i></a>
                                <!-- <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a> -->
                            </div>
                            <div class="header__top__right__auth">
                                <a href="login.html"><i class="fa fa-user"></i> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="Index.aspx"><h3 style="font-weight: bold;">HS-Laptop</h3></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="Index.aspx">Trang Chủ</a></li>
                            <li><a href="./shop-grid.html">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                </ul>
                            </li>
                           
                            <li><a href="./contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>

            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh mục</span>
                        </div>
                        <ul>
                            <%foreach (var items in lstTheLoai)
                                { %>
                            <li><a href="DanhSachSP.aspx?param=<%=items.idTheLoai %>"><%= items.tenTheLoai %></a>
                                <ul>
                                    <%foreach (var itemHangSX in lstHangSX)
                                        { %>
                                            <li><a href="DanhSachSPByTTVaHangSX.aspx?param1=<%=items.idTheLoai %>&param2=<%=itemHangSX.idHangSX %>" ><%=itemHangSX.tenHang %></a></li>
                                    <%} %>
                                </ul>
                            </li>
                                <%} %>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <input type="text" placeholder="Nhập thông tin tìm kiếm">
                                <button type="submit" class="site-btn">Tìm kiếm</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+84 123456789</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="/Lib/img/hero/banner-nen-laptop.png">
                        <div class="hero__text">
                            <span>HS-Laptop</span>
                            <h2>Laptop  <br />Chất lượng</h2>
                            <p>Dành cho mọi phân khúc</p>
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <%foreach (var items in lstHangSX)
                        { %>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/Dbimg/HangSX/<%= items.anh %>">
                            <h5><a href="#"><%= items.tenHang %></a></h5>
                        </div>
                    </div>
                    <%} %>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Danh sách sản phẩm</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">Tất cả</li>
                            <% foreach (var item in lstHangSX)
                                { %>
                                    <li data-filter=".<%=item.idHangSX %>" >Laptop <%=item.tenHang %> </li>
                            <%} %>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
            <% foreach (var itemSP in lstSanPham8)
                {%>
                <div class="col-lg-3 col-md-4 col-sm-6 mix <%=itemSP.maHang %> fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/Dbimg/SanPham/<%= itemSP.anh %>">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            
                            <h6><a href="#"><%=itemSP.tenSP %></a></h6>
                            <h5><%=itemSP.gia %></h5>
                        </div>
                    </div>
                </div>
                 <%} %>
            </div>
           
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="/Lib/img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="/Lib/img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Laptop</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <% foreach (var itemSP in lstSanPham3)
                                    { %>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width:110px; height:110px; background-size:contain; background-repeat:no-repeat;" src="/Dbimg/SanPham/<%= itemSP.anh %>" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=itemSP.tenSP %></h6>
                                        <span><%=itemSP.gia %></span>
                                    </div>
                                </a>
                                <%} %>
                                
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <% foreach (var itemSP in lstSanPham3)
                                    { %>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width:110px; height:110px; background-size:contain; background-repeat:no-repeat;" src="/Dbimg/SanPham/<%= itemSP.anh %>" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=itemSP.tenSP %></h6>
                                        <span><%=itemSP.gia %></span>
                                    </div>
                                </a>
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Bàn phím</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <% foreach (var itemSP in lstSanPham3)
                                    { %>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width:110px; height:110px; background-size:contain; background-repeat:no-repeat;" src="/Dbimg/SanPham/<%= itemSP.anh %>" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=itemSP.tenSP %></h6>
                                        <span><%=itemSP.gia %></span>
                                    </div>
                                </a>
                                <%} %>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <% foreach (var itemSP in lstSanPham3)
                                    { %>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width:110px; height:110px; background-size:contain; background-repeat:no-repeat;" src="/Dbimg/SanPham/<%= itemSP.anh %>" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=itemSP.tenSP %></h6>
                                        <span><%=itemSP.gia %></span>
                                    </div>
                                </a>
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Chuột</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <% foreach (var itemSP in lstSanPham3)
                                    { %>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width:110px; height:110px; background-size:contain; background-repeat:no-repeat;" src="/Dbimg/SanPham/<%= itemSP.anh %>" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=itemSP.tenSP %></h6>
                                        <span><%=itemSP.gia %></span>
                                    </div>
                                </a>
                                <%} %>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <% foreach (var itemSP in lstSanPham3)
                                    { %>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width:110px; height:110px; background-size:contain; background-repeat:no-repeat;" src="/Dbimg/SanPham/<%= itemSP.anh %>" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><%=itemSP.tenSP %></h6>
                                        <span><%=itemSP.gia %></span>
                                    </div>
                                </a>
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->


    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><h3 style="font-weight: bold;">HS-Laptop</h3></a>
                        </div>
                        <ul>
                            <li>Address: Đại Học Công Nghiệp Hà Nội</li>
                            <li>Phone: 123456789</li>
                            <li>Email: 123@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">Trang chủ</a></li>
                            <li><a href="#">Liên hệ</a></li>
                            <li><a href="#">Giới thiệu</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Nguyễn Hoàng Sơn <i class="fa fa-heart" aria-hidden="true"></i>
</p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/Lib/js/jquery-3.3.1.min.js"></script>
    <script src="/Lib/js/bootstrap.min.js"></script>
    <script src="/Lib/js/jquery.nice-select.min.js"></script>
    <script src="/Lib/js/jquery-ui.min.js"></script>
    <script src="/Lib/js/jquery.slicknav.js"></script>
    <script src="/Lib/js/mixitup.min.js"></script>
    <script src="/Lib/js/owl.carousel.min.js"></script>
    <script src="/Lib/js/main.js"></script>

</body>
</html>
