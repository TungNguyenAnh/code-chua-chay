<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pik Quizz-login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        body {
            padding: 40px;
            background: #ffbdf4;
        }

        .form-container {
            max-width: 400px;
            margin: 0 auto;
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        /* CSS cho popup */
        .popup {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            z-index: 9999;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Register</h1>
    <form id="form-signup" action="/login/login.jsp" method="post">
        <!-- Các trường đăng ký -->
        <div class="form-group">
            <label for="display-name">Name:</label>
            <input type="text" id="display-name" name="displayName" class="form-control">
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" onchange="check_Password()" name="password" class="form-control"
                   minlength="6" required>
        </div>

        <div class="form-group">
            <label for="confirm-password">Confirm Password:</label>
            <input type="password" id="confirm-password" name="confirmPassword" class="form-control" minlength="6"
                   required>
            <p id="notify"></p>
        </div>


        <div class="form-group">
            <label for="role">Role:</label>
            <select id="role" name="role" class="form-control">
                <option value="student">Student</option>
                <option value="teacher">Teacher</option>
            </select>
        </div>

        <div class="d-grid">
            <input type="submit" value="Register" class="btn btn-primary">
        </div>
    </form>

    <script>

        const password = document.getElementById("password")
        const confirmPassword = document.getElementById("confirm-password")
        const notify = document.getElementById("notify")

        confirmPassword.addEventListener("input", check_Password)
        password.addEventListener("input", check_Password)


        function check_Password() {
            let pass = password.value;
            let passwordConfirm = confirmPassword.value;

            if (pass === "" || passwordConfirm === "") {
                notify.textContent = "";
            } else if (pass === passwordConfirm) {
                notify.textContent = "Check!"
            } else {
                notify.textContent = "Password mismatch!"
            }
        }


    </script>
    <div class="text-center mt-3">
        <p>Already have an account? <a href="/login/login.jsp">Login here</a></p>
    </div>
    <div class="text-center mt-3">
        <p>Love the bunny? <a href="/home/home.jsp">Back home</a></p>
    </div>
</div>

<script src="js/bootstrap.min.js"></script>

</body>
</html>