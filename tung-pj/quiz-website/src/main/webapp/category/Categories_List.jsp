<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Category List</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            flex-direction: column;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h1 {
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            max-width: 800px;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
            text-transform: uppercase;
        }

        td:last-child {
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        td:last-child a {
            text-decoration: none;
            color: #333;
            padding: 5px 10px;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }

        td:last-child a:hover {
            background-color: #f2f2f2;
        }

        .edit-button {
            background-color: #4CAF50;
            color: white;
        }

        .delete-button {
            background-color: #f44336;
            color: white;
            margin-left: 10px;
        }

        .button-group {
            display: flex;
            justify-content: flex-end;
        }

        @media screen and (max-width: 600px) {
            table {
                width: 100%;
            }

            th, td {
                display: block;
                width: 100%;
            }

            td:last-child {
                justify-content: flex-start;
            }

            td:last-child a {
                margin-top: 10px;
                margin-right: 10px;
            }
        }
    </style>
</head>
<body>
<h1>Category List</h1>
<table>
    <thead>
    <tr>
        <th>Category Name</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="account" items="${requestScope['list']}">
        <tr>
            <td>${account.getEmail()}</td>
            <td>${account.getDisplayName()}</td>
            <td>
                <div class="button-group">
                    <a class="edit-button" href="">Edit</a>
                    <a class="delete-button" href="">Delete</a>
                </div>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>