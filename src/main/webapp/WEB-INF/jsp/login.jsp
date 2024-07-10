<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyERP</title>
    <!---- include ---->
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- font-awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/login.css">
</head>
<body>
    <div class="main-wrapper">
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center">
            <div class="auth-box row" style="max-width:700px;">
                <div class="col-sm-6">
                    <div class="pb-2" style="font-size:36px;color:#33003d;font-family:impact;text-shadow: 1px 1px #d6f597;">My ERP 1.0</div>
                </div>
                <div class="col-sm-6">
                    <form id="auth-form" class="form-horizontal mt-2" method="post">
                        <div class="d-flex justify-content-between align-content-end">
                            <div class="fw-normal fw-bold mb-1" style="font-size:22px;color:#366;">Sign In</div>
                        </div>
                        <div class="input-group mt-2 mb-3">
                            <span class="input-group-text" id="basic-addon1"><i class="far fa-user"></i></span>
                            <input type="text" class="form-control form-control-md" placeholder="Email" id="email" name="email">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon2"><i class="fas fa-unlock-alt"></i></span>
                            <input type="password" class="form-control form-control-md" placeholder="Password" id="password" name="password">
                        </div>
                        <div class="mb-1 form-check">
                            <input type="checkbox" class="form-check-input" id="customCheck1" checked>
                            <label class="form-check-label small" for="customCheck1">아이디 저장</label>
                        </div>
                        <div class="message-container text-danger mb-1">
                            <span class="form-control-static text-danger m-0" id="altmsg"></span>
                        </div>
                        <div class="d-grid mb-1">
                            <button type="button" class="btn btn-xl btn-primary" onclick="handleAuthSubmit('/login')">Log In</button>
                        </div>
                        <div class="card-footer text-center">
                            <a href="/signup">Don't have an account? Sign up here</a>
                        </div>
                        <input type="hidden" id="error-message" value="${errorMessage}">
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/resources/js/auth.js"></script>
</body>
</html>