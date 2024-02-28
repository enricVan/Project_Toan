<%-- 
    Document   : panner
    Created on : Feb 19, 2024, 10:56:02 AM
    Author     : Van Minh Tuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Header -->
        <header class="header shop">
            <!-- Topbar -->
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-12">
                            <!-- Top Left -->
                            <div class="top-left">
                                <ul class="list-main">
                                    <li>Phạm Khánh Toàn</li>
                                    <li> HE173035</li>
                                </ul>
                            </div>
                            <!--/ End Top Left -->
                        </div>
                        <div class="col-lg-8 col-md-12 col-12">
                            <!-- Top Right -->
                            <div class="right-content">
                                <ul class="list-main">
                                    <li><i class="ti-user"></i> <a href="#">Register</a></li>
                                    <li>
                                        <i class="ti-power-off"></i><a href="login.html#">Login</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- End Top Right -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Topbar -->
            <div class="middle-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-12">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.html"
                                   ><img src="images/logo.png" alt="logo"
                                      /></a>
                            </div>
                            <!--/ End Logo -->
                            <!-- Search Form -->
                            <div class="search-top">
                                <div class="top-search">
                                    <a href="#0"><i class="ti-search"></i></a>
                                </div>
                                <!-- Search Form -->
                                <div class="search-top">
                                    <form class="search-form">
                                        <input
                                            type="text"
                                            placeholder="Search here..."
                                            name="search"
                                            />
                                        <button value="search" type="submit">
                                            <i class="ti-search"></i>
                                        </button>
                                    </form>
                                </div>
                                <!--/ End Search Form -->
                            </div>
                            <!--/ End Search Form -->
                            <div class="mobile-nav"></div>
                        </div>
                        <div class="col-lg-8 col-md-7 col-12">
                            <div class="search-bar-top">
                                <div class="search-bar">
                                    <select>
                                        <option selected="selected">All Category</option>
                                        <option>watch</option>
                                        <option>mobile</option>
                                        <option>kid’s item</option>
                                    </select>
                                    <form>
                                        <input
                                            name="search"
                                            placeholder="Search Products Here....."
                                            type="search"
                                            />
                                        <button class="btnn"><i class="ti-search"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-12">
                            <div class="right-bar">
                                <!-- Search Form -->
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"
                                       ><i class="fa fa-heart-o" aria-hidden="true"></i
                                        ></a>
                                </div>
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"
                                       ><i class="fa fa-user-circle-o" aria-hidden="true"></i
                                        ></a>
                                </div>
                                <div class="sinlge-bar shopping">
                                    <a href="#" class="single-icon"
                                       ><i class="ti-bag"></i>
                                        <span class="total-count">2</span></a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header Inner -->
            <div class="header-inner">
                <div class="container">
                    <div class="cat-nav-head">
                        <div class="row">
                            <div class="col-lg-3"></div>
                            <div class="col-lg-9 col-12">
                                <div class="menu-area">
                                    <!-- Main Menu -->
                                    <nav class="navbar navbar-expand-lg">
                                        <div class="navbar-collapse">
                                            <div class="nav-inner">
                                                <ul class="nav main-menu menu navbar-nav">
                                                    <li class="active"><a href="#">Home</a></li>
                                                    <li><a href="#">Product</a></li>
                                                    <li><a href="#">Service</a></li>
                                                    <li><a href="#">Pages</a></li>
                                                    <li>
                                                        <a href="#">Blog</a>
                                                    </li>
                                                    <li><a href="contact.html">Contact Us</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </nav>
                                    <!--/ End Main Menu -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Header Inner -->
        </header>
        <!--/ End Header -->

        <!-- Slider Area -->
        <section class="hero-slider">
            <!-- Single Slider -->
            <div class="single-slider">
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-lg-9 offset-lg-3 col-12">
                            <div class="text-inner">
                                <div class="row">
                                    <div class="col-lg-7 col-12">
                                        <div class="hero-text">
                                            <h1><span>UP TO 50% OFF </span>Shirt For Man</h1>
                                            <p>
                                                Maboriosam in a nesciung eget magnae <br />
                                                dapibus disting tloctio in the find it pereri <br />
                                                odiy maboriosm.
                                            </p>
                                            <div class="button">
                                                <a href="#" class="btn">Shop Now!</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Single Slider -->
        </section>
        <!--/ End Slider Area -->

    </body>
</html>
