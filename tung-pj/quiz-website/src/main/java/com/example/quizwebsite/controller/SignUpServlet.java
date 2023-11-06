package com.example.quizwebsite.controller;

import com.example.quizwebsite.model.User;
import com.example.quizwebsite.service.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="SignUpServlet", value="/signup")
public class SignUpServlet extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        // Khởi tạo UserDAO trong phương thức init() của Servlet
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Hiển thị trang đăng ký người dùng khi gửi yêu cầu GET
        request.getRequestDispatcher("/sign-up/sign-up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin người dùng từ các tham số gửi lên
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int permission = Integer.parseInt(request.getParameter("permission"));

        // Kiểm tra các thông tin người dùng
        if (username.isEmpty() || email.isEmpty() || password.isEmpty() || (permission !=1) || (permission !=2)) {
            // Nếu thiếu thông tin, chuyển hướng người dùng đến trang lỗi
            response.sendRedirect("error.jsp");
            return;
        }

        // Tạo đối tượng User từ thông tin người dùng
        User user = new User(username, email, password, permission);

        // Thêm người dùng vào cơ sở dữ liệu
        userDAO.addUser(user);

        // Chuyển hướng người dùng đến trang thành công
        response.sendRedirect("success.jsp");
    }
}
