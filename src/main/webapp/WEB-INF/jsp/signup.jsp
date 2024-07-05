<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign Up</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-header text-center">
                        <h3>Sign Up</h3>
                    </div>
                    <div class="card-body">
                        <form id="signupForm">
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <button type="button" class="btn btn-primary btn-block" onclick="signup()">Sign Up</button>
                        </form>
                        <div class="text-danger mt-2" id="error-message">
                            <c:if test="${not empty error}">
                                ${error}
                            </c:if>
                        </div>
                    </div>
                    <div class="card-footer text-center">
                        <a href="${pageContext.request.contextPath}/login">Already have an account? Login here</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function signup() {
            const email = $('#email').val();
            const password = $('#password').val();

            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/signup',
                contentType: 'application/json',
                data: JSON.stringify({ email: email, password: password }),
                success: function(response) {
                    // Redirect to the main page upon successful signup
                    window.location.href = '${pageContext.request.contextPath}/login';
                },
                error: function(xhr, status, error) {
                    // Show error message on signup failure
                    $('#error-message').text('Signup failed. Email might be already in use.');
                }
            });
        }
    </script>
</body>
</html>
