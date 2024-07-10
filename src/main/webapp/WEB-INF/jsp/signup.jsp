<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <!---- include ---->
    <jsp:include page="/WEB-INF/jsp/include/cssInclude.jsp"></jsp:include>

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/signup.css">
</head>
<body>
    <div class="main-wrapper">
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center">
            <div class="auth-box row">
                <form id="auth-form" class="form-horizontal mt-2" method="post">
                    <div class="d-flex justify-content-between align-content-end">
                        <div class="fw-normal fw-bold mb-1" style="font-size:22px;color:#366;">Sign Up</div>
                    </div>
                    <div class="input-group mt-2 mb-3">
                        <span class="input-group-text" id="basic-addon1"><i class="far fa-user"></i></span>
                        <input type="text" class="form-control form-control-md" placeholder="Email : example@example.com" id="email" name="email">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon2"><i class="fas fa-unlock-alt"></i></span>
                        <input type="password" class="form-control form-control-md" placeholder="Password : 3글자 이상" id="password" name="password">
                    </div>
                    <div class="message-container text-danger mb-1">
                        <span class="form-control-static text-danger m-0" id="altmsg"></span>
                    </div>
                    <div class="d-grid mb-1">
                        <button type="button" class="btn btn-xl btn-primary" onclick="handleAuthSubmit('/signup')">Sign Up</button>
                    </div>
                    <div class="card-footer text-center">
                        <a href="/login">Already have an account? Login here</a>
                    </div>
                    <input type="hidden" id="error-message" value="${errorMessage}">
                </form>
            </div>
        </div>
    </div>
        
    <!-- include -->
    <jsp:include page="/WEB-INF/jsp/include/scriptInclude.jsp"></jsp:include>
    <!-- js -->
    <script type="text/javascript" src="/resources/js/auth.js"></script>
</body>
</html>
