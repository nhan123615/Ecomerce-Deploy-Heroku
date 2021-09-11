<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../components/header.jsp"></jsp:include>
<jsp:include page="../components/sidebar.jsp"></jsp:include>

<div class="ps-page--my-account">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>My account</li>
            </ul>
        </div>
    </div>
    <div class="ps-my-account">
        <div class="container">
            <%--            <jsp:include page="../message/message.jsp"></jsp:include>--%>


            <div class="ps-form--account ps-tab-root">
                <ul class="ps-tab-list">
                    <li class="active"><a href="#sign-in">Login</a></li>
                </ul>
                <div class="ps-tabs">
                    <div class="ps-tab active" id="sign-in">
                        <form action="${pageContext.servletContext.contextPath}/login" method="post"
                              modelAttribute="user">
                            <div class="ps-form__content">
                                <h5>Log In Your Account</h5>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Username" name="username">
                                </div>
                                <div class="form-group form-forgot">
                                    <input class="form-control" type="password" placeholder="Password"
                                           name="password"><a
                                        href="${pageContext.servletContext.contextPath}/forgot-password">Forgot?</a>
                                </div>
                                <div class="form-group">
                                    <div class="ps-checkbox">
                                        <input class="form-control" type="checkbox" id="remember-me" name="remember-me">
                                        <label for="remember-me">Rememeber me</label>
                                    </div>
                                </div>

                                <div style="border: 2px solid rgba(253, 200, 69, .5);border-radius: 4px;background-color: rgba(253, 200, 69, 0.3);padding: 16px">
                                    <b>#Admin accounts</b>
                                    <br><br>
                                    <div style="display: flex;justify-content: space-between">
                                        <div>
                                            <b>ROLE ADMIN</b>
                                            <br>
                                            Username: <b>nhan</b>
                                            <br>
                                            Password: <b>le</b>
                                        </div>
                                        <div>
                                            <b>ROLE ADMIN_TRAINEE</b>
                                            <br>
                                            Username: <b>trainee</b>
                                            <br>
                                            Password: <b>123</b>
                                        </div>
                                    </div>
                                    <br>
                                    <b>#Facebook test account</b>
                                    <br><br>
                                    Username: <b>testing_wqycvda_facebook@tfbnw.net</b>
                                    <br>
                                    Password: <b>nhanle</b>
                                </div>
                                <div class="form-group submtit" style="margin-top: 10px">
                                    <button class="ps-btn ps-btn--fullwidth">Login</button>
                                </div>
                            </div>
                        </form>
                        <div class="ps-form__footer" style="padding: 0px 30px 30px 30px">
                            <p>Connect with:</p>
                            <ul class="ps-list--social">
                                <li><a class="facebook" href="/oauth2/authorization/facebook"><i
                                        class="fa fa-facebook"></i></a></li>
                                <li><a class="google" href="/oauth2/authorization/google"><i
                                        class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<jsp:include page="../components/footer.jsp"></jsp:include>
</body>

