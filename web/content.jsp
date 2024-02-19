<%-- 
    Document   : content
    Created on : Feb 19, 2024, 10:59:01 AM
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
        <!-- Start Product Area -->
        <div class="product-area section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>Item</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-info">
                            <div class="nav-main">
                                <!-- Tab Nav -->
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a
                                            class="nav-link active"
                                            data-toggle="tab"
                                            href="#man"
                                            role="tab"
                                            >Man</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#women"
                                            role="tab"
                                            >Woman</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#kids"
                                            role="tab"
                                            >Kids</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#accessories"
                                            role="tab"
                                            >Accessories</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#essential"
                                            role="tab"
                                            >Essential</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a
                                            class="nav-link"
                                            data-toggle="tab"
                                            href="#prices"
                                            role="tab"
                                            >Prices</a
                                        >
                                    </li>
                                </ul>
                                <!--/ End Tab Nav -->
                            </div>
                            <div class="tab-content" id="myTabContent">
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade show active" id="man" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img
                                                                class="default-img"
                                                                src="https://via.placeholder.com/550x750"
                                                                alt="#"
                                                                />
                                                            <img
                                                                class="hover-img"
                                                                src="https://via.placeholder.com/550x750"
                                                                alt="#"
                                                                />
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a
                                                                    data-toggle="modal"
                                                                    data-target="#exampleModal"
                                                                    title="Quick View"
                                                                    href="#"
                                                                    ><i class="ti-eye"></i
                                                                    ><span>Quick Shop</span></a
                                                                >
                                                                <a title="Wishlist" href="#"
                                                                   ><i class="ti-heart"></i
                                                                    ><span>Add to Wishlist</span></a
                                                                >
                                                                <a title="Compare" href="#"
                                                                   ><i class="ti-bar-chart-alt"></i
                                                                    ><span>Add to Compare</span></a
                                                                >
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3>
                                                            <a href="product-details.html"
                                                               >Awesome Cap For Women</a
                                                            >
                                                        </h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="women" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img
                                                                class="default-img"
                                                                src="https://via.placeholder.com/550x750"
                                                                alt="#"
                                                                />
                                                            <img
                                                                class="hover-img"
                                                                src="https://via.placeholder.com/550x750"
                                                                alt="#"
                                                                />
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a
                                                                    data-toggle="modal"
                                                                    data-target="#exampleModal"
                                                                    title="Quick View"
                                                                    href="#"
                                                                    ><i class="ti-eye"></i
                                                                    ><span>Quick Shop</span></a
                                                                >
                                                                <a title="Wishlist" href="#"
                                                                   ><i class="ti-heart"></i
                                                                    ><span>Add to Wishlist</span></a
                                                                >
                                                                <a title="Compare" href="#"
                                                                   ><i class="ti-bar-chart-alt"></i
                                                                    ><span>Add to Compare</span></a
                                                                >
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3>
                                                            <a href="product-details.html"
                                                               >Awesome Cap For Women</a
                                                            >
                                                        </h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Product Area -->

        <!-- Start Shop Services Area -->
        <section class="shop-services section home">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-rocket"></i>
                            <h4>Free shiping</h4>
                            <p>Orders over $100</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-reload"></i>
                            <h4>Free Return</h4>
                            <p>Within 30 days returns</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-lock"></i>
                            <h4>Sucure Payment</h4>
                            <p>100% secure payment</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-tag"></i>
                            <h4>Best Peice</h4>
                            <p>Guaranteed price</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Services Area -->
    </body>
</html>
