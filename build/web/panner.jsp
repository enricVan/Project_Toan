<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="model.CartItem, model.Product, java.text.DecimalFormat" %>
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
                                    <c:if test="${sessionScope.user eq null}">
                                        <li><i class="ti-user"></i><a href="register.jsp">Register</a></li>
                                        <li><i class="ti-power-off"></i><a href="login">Login</a></li>
                                            </c:if>

                                    <c:if test="${sessionScope.user ne null}">
                                        <li>
                                            <c:if test="${sessionScope.user ne null}">
                                                <a class="navbar-brand" href="#!">Welcome ${user.fullname}</a>
                                            </c:if>
                                            <i class="ti-power-off"></i><a href="logout">Logout</a>
                                        </li>
                                    </c:if>
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
                        </div>
                        <div class="col-lg-8 col-md-7 col-12">
                            <div class="search-bar-top">
                                <div class="search-bar">                                   
                                    <select onchange="handleFilterBrand(this.value)">
                                        <option>All Category</option>
                                        <c:forEach items="${requestScope.brands}" var="b">
                                            <option value="${b.id}">
                                                ${b.name}
                                            </option>
                                        </c:forEach>
                                    </select>
                                    <script>
                                        function handleFilterBrand(brandId) {
                                            const urlParams = new URLSearchParams(window.location.search);

                                            window.location.href = "customer?service=filter-brand&brand-id=" + brandId;
                                        }
                                    </script>
                                    <form action="customer">
                                        <input
                                            name="keyword"
                                            placeholder="Search by Products name..."
                                            type="text"
                                            value="${requestScope.currentValue}"
                                            />
                                        <input type="hidden" name="service" value="search"/>
                                        <button class="btnn"><i class="ti-search"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-12">
                            <div class="right-bar">
                                <!-- Search Form -->
                                <c:if test="${sessionScope.user ne null}">
                                <div class="sinlge-bar shopping">
                                    <a href="cart.jsp" class="single-icon"><i class="ti-bag"></i>
                                        <span class="total-count"></span></a>
                                </div>
                                </c:if>
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
                                                    <li class="active"><a href="customer">Home</a></li>
                                                    <li><a href="customer">Product</a></li>
                                                    <li><a href="customer">Service</a></li>
                                                    <li><a href="customer">Pages</a></li>
                                                    <li>
                                                        <a href="customer">Blog</a>
                                                    </li>
                                                    <li><a href="customer">Contact Us</a></li>
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
    </body>
</html>
