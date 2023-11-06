<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


    <style>
        body {
            font-family: "Arial", sans-serif;
            font-size: 18px;
        }

        .navbar-brand {
            font-size: 24px;
        }

        .navbar-nav .nav-link {
            font-size: 18px;
            color: #333;
        }

        .navbar .dropdown-menu {
            right: auto;
            left: 0;
        }

        .search-bar {
            display: flex;
            align-items: center;
            position: relative;
        }

        .search-input {
            font-size: 18px;
            color: #333;
            background: url('https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/img/favicons/favicon-16x16.png') no-repeat center right 8px/16px;
            padding-right: 40px;
            border: none;
            border-radius: 20px;
            transition: box-shadow 0.3s;
        }

        .search-input:focus {
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
        }

        .search-button {
            position: absolute;
            top: 50%;
            right: 20px;
            transform: translateY(-50%);
            background: none;
            border: none;
            padding: 0;
            font-size: 18px;
            color: #333;
        }

        .navbar-nav {
            flex-grow: 1;
            justify-content: space-evenly;
        }

        .navbar-nav .nav-item {
            margin-left: 10px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><strong>Quizizz</strong> </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="d-flex me-auto">
                <div class="search-bar">
                    <input class="search-input form-control me-2" type="search" placeholder="Find a Quiz"
                           aria-label="Search">
                    <button class="search-button" type="submit"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Account
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Edit Account</a></li>
                        <li><a class="dropdown-item" href="#">Log Out</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Delete Account</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
