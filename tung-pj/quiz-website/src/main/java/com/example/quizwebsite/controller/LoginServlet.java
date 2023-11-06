package com.example.quizwebsite.controller;

import com.example.quizwebsite.model.User;
import com.example.quizwebsite.service.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Hiển thị trang đăng nhập
        request.getRequestDispatcher("/login/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                try {
                    loginToHomePage(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                break;
        }
    }

    public void loginToHomePage(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ClassNotFoundException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Kiểm tra xem email và mật khẩu có hợp lệ hay không (ví dụ: không được để trống)
        if (email.trim().isEmpty() || password.trim().isEmpty()) {
            // Xử lý lỗi - email hoặc mật khẩu không hợp lệ
            response.sendRedirect("login.jsp?error=invalid");
            return;
        }

        List<User> list = userDAO.getAllUsers();
        boolean isLoginSuccessful = false;

        for (User user : list) {
            User user1 = userDAO.getUserByEmail(email);
            if (user1.getEmail() != null && user1.getEmail().equals(user.getEmail())) {
                if (password.equals(user.getPassword())) {
                    int permission = user.getPermission(); // Giá trị này sẽ được lấy từ cơ sở dữ liệu

                    // Phân biệt giáo viên và sinh viên dựa trên trường "permission"
                    if (permission == 1) {
                        // Đăng nhập thành công cho giáo viên
                        response.sendRedirect("home/teacher_home.jsp");
                    } else if (permission == 2) {
                        // Đăng nhập thành công cho sinh viên
                        response.sendRedirect("home/student_home.jsp");
                    } else {
                        // Nếu giá trị permission không phù hợp, xử lý lỗi
                        response.sendRedirect("");
                    }
                    isLoginSuccessful = true;
                    break;
                }
            }
        }

        if (!isLoginSuccessful) {
            // Hiển thị thông báo lỗi sử dụng JavaScript
            String errorMessage = "Wrong email or password! Pls try again!!";
            String script = "<script type='text/javascript'>alert('" + errorMessage + "'); window.location.href='/login';</script>";
            response.getWriter().write(script);
        }
    }
}