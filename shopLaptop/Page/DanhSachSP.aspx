<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachSP.aspx.cs" Inherits="shopLaptop.Page.DanhSachSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách sản phẩm</title>

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

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li>
                    <a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->
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
                            <li class="active"><a href="Index.aspx">Trang chủ</a></li>
                            <li><a href="./shop-grid.html">Shop</a></li>
                            <li>
                                <a href="#">Pages</a>
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
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh Mục</span>
                        </div>
                        <ul>
                            <%foreach (var items in lstTheLoai)
                                { %>
                            <li><a href="DanhSachSP.aspx?param=<%=items.idTheLoai %>"><%= items.tenTheLoai %></a></li>
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
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="/Lib/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>HS-Laptop</h2>
                        <div class="breadcrumb__option">
                            <span>Chất lượng - Uy tín - Tận tình</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>Danh mục</h4>
                            <ul>
                                <%foreach (var items in lstTheLoai)
                                { %>
                                    <li><a href="DanhSachSP.aspx?param=<%=items.idTheLoai %>"><%= items.tenTheLoai %></a></li>
                                <%} %>
                            </ul>
                        </div>
                        
                        <div class="sidebar__item">
                            <div class="latest-product__text">
                                <h4>Đề Cử</h4>
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
                <div class="col-lg-9 col-md-7">
                    
                   
                    <div class="row">
                        <%foreach (var items in lstSanPhamByTheLoai)
                            { %>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/Dbimg/SanPham/<%=items.anh %>">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#"><%=items.tenSP %></a></h6>
                                    <h5><%=items.gia %></h5>
                                </div>
                            </div>
                        </div>
                        <%} %>
                        
                    </div>

                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>Sản phẩm tương tự</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">
                                <%foreach (var item in lstSPBy8)
                                    {%>
                                        <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                             data-setbg="/Dbimg/SanPham/<%=item.anh %>">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Sản phẩm dành cho bạn</span>
                                            <h5><a href="#"><%=item.tenSP %></a></h5>
                                            <div class="product__item__price"><%=item.gia %> <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                   <% } %>
                            </div>
                        </div>
                    </div>
                    <!-- phân trang -->
                    <!--<div class="product__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div>-->
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
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
                        <div class="footer__copyright__text">
                            <p>
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | Nguyễn Hoàng Sơn <i class="fa fa-heart" aria-hidden="true"></i>
                            </p>
                        </div>
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
