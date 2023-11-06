<%--
  Created by IntelliJ IDEA.
  User: tuancd
  Date: 25/10/2023
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
</head>
<body>
<h1>Admin Page</h1>
<form method="post" action="AdminServlet">
    <input type="hidden" name="action" value="viewStudents">
    <input type="submit" value="Xem danh sách học viên">
</form>
<form method="post" action="AdminServlet">
    <input type="hidden" name="action" value="searchStudents">
    <input type="text" name="searchQuery" placeholder="Tìm kiếm theo tên hiển thị hoặc email">
    <input type="submit" value="Tìm kiếm học viên">
</form>
<form method="post" action="AdminServlet">
    <input type="hidden" name="action" value="viewTeachers">
    <input type="submit" value="Xem danh sách giáo viên">
</form>
<form method="post" action="AdminServlet">
    <input type="hidden" name="action" value="searchTeachers">
    <input type="text" name="searchQuery" placeholder="Tìm kiếm theo tên hiển thị hoặc email">
    <input type="submit" value="Tìm kiếm giáo viên">
</form>
<form method="post" action="AdminServlet">
    <input type="hidden" name="action" value="approveTeacher">
    <input type="text" name="teacherEmail" placeholder="Email tài khoản giáo viên">
    <input type="submit" value="Duyệt tài khoản giáo viên">
</form>
<form method="post" action="AdminServlet">
    <input type="hidden" name="action" value="deleteAccount">
    <input type="text" name="accountEmail" placeholder="Email tài khoản">
    <input type="submit" value="Xóa tài khoản">
</form>
</body>
</html>
