<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Home</title>
    <style>
        :root {
            --bg-gradient: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            --card-bg: rgba(255, 255, 255, 0.9);
            --text-primary: #2d3436;
            --text-secondary: #636e72;
            --accent-color: #6c5ce7;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: var(--bg-gradient);
            overflow: hidden;
        }

        /* Floating Animation */
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }

        .welcome-card {
            background: var(--card-bg);
            padding: 3rem;
            border-radius: 30px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.05);
            text-align: center;
            max-width: 500px;
            width: 90%;
            animation: float 5s ease-in-out infinite;
            border: 1px solid rgba(255,255,255,0.8);
        }

        .icon-circle {
            width: 80px;
            height: 80px;
            background: #eef2ff;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
            font-size: 2rem;
        }

        h1 {
            color: var(--text-primary);
            font-size: 2.2rem;
            font-weight: 800;
            margin-bottom: 0.5rem;
            letter-spacing: -1px;
        }

        .name-highlight {
            color: var(--accent-color);
            background: linear-gradient(to right, #6c5ce7, #a29bfe);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        p {
            color: var(--text-secondary);
            font-size: 1.1rem;
            margin-bottom: 2rem;
        }

        .btn-primary {
            display: inline-block;
            padding: 1rem 2rem;
            background: var(--accent-color);
            color: white;
            text-decoration: none;
            border-radius: 12px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 10px 20px rgba(108, 92, 231, 0.2);
        }

        .btn-primary:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 25px rgba(108, 92, 231, 0.3);
        }
    </style>
</head>
<body>

    <div class="welcome-card">
        <div class="icon-circle">✨</div>

        <h1>Welcome, <span class="name-highlight">${name}</span></h1>

        <p>It's a beautiful day to start working on your university projects. Your dashboard is ready.</p>

        <a href="list-todo" class="btn-primary">Go to Todo</a>
    </div>

</body>
</html>