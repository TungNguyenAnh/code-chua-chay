<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pik Quiz - Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
    </style>
</head>
<body>
<div class="form-container">
    <h1>Add Category</h1>
    <form action="/login?action=login" method="post">
        <div class="mb-3">
            <label for="categories" class="form-label">Category Name:</label>
            <input type="text" id="categories" name="categories" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="describe" class="form-label">Description:</label>
            <input type="text" id="describe" name="describe" class="form-control" required>
        </div>

        <div class="d-grid gap-2">
            <input type="submit" value="Create" class="btn btn-primary">
            <input type="reset" value="Reset" class="btn btn-secondary">
        </div>
    </form>

    <div class="text-center mt-3">
        <p>Nothing to do? <a href="/home/teacher_home.jsp">Back to Home</a></p>
        <p>List Categories <a href="/category/Categories_List.jsp">Here</a></p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>