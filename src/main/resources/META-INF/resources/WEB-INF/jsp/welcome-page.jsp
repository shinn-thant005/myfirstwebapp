<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Todo App</title>
    <style>
        /* Minimalist Reset & Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            background-color: #ffffff;
            color: #1a1a1a;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Simple Navigation Bar */
        nav {
            padding: 1.5rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-weight: 700;
            letter-spacing: -0.5px;
            text-decoration: none;
            color: #000;
        }

        /* Main Content Area */
        main {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding-bottom: 10vh; /* Visual balance */
        }

        .hero {
            text-align: center;
            max-width: 400px;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            letter-spacing: -1px;
        }

        p {
            color: #666;
            margin-bottom: 2rem;
            line-height: 1.5;
        }

        /* Minimal Button */
        .btn {
            display: inline-block;
            background: #000;
            color: #fff;
            padding: 0.8rem 1.5rem;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 500;
            transition: transform 0.1s ease;
        }

        .btn:active {
            transform: scale(0.98);
        }

        footer {
            padding: 2rem;
            text-align: center;
            font-size: 0.8rem;
            color: #999;
        }
    </style>
</head>
<body>

<nav>
    <a href="#" class="logo">TaskFlow</a>
    <div class="nav-links">
    </div>
</nav>

<main>
    <section class="hero">
        <h1>Hi, ${name}.</h1>
        <p>Your day is waiting. Organized tasks lead to a focused mind.</p>
        <a href="list-todo" class="btn">View My Todos</a>
    </section>
</main>

<footer>
    &copy; 2026 TaskFlow. All rights reserved.
</footer>

</body>
</html>