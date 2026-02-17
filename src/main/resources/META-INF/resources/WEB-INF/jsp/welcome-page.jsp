<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Developer Workspace | Welcome</title>
    <style>
        /* --- CSS STYLES --- */
        :root {
            --bg-dark: #0f172a;
            --card-bg: rgba(30, 41, 59, 0.7);
            --accent: #10b981; /* Spring Boot Green */
            --secondary: #3b82f6; /* React/MySQL Blue */
            --text-main: #f8fafc;
            --text-dim: #94a3b8;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        }

        body {
            background-color: var(--bg-dark);
            /* Subtle grid background for a "blueprint" feel */
            background-image: radial-gradient(circle at 2px 2px, #1e293b 1px, transparent 0);
            background-size: 32px 32px;
            color: var(--text-main);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
        }

        .container {
            width: 100%;
            max-width: 550px;
            padding: 20px;
            animation: fadeIn 0.8s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .card {
            background: var(--card-bg);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 24px;
            padding: 3rem;
            text-align: center;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }

        h1 {
            font-size: 2.2rem;
            margin-bottom: 0.5rem;
            letter-spacing: -0.5px;
        }

        .highlight {
            background: linear-gradient(to right, var(--accent), var(--secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .subtitle {
            color: var(--text-dim);
            margin-bottom: 2.5rem;
            font-size: 1.1rem;
        }

        /* Progress Section */
        .project-status {
            background: rgba(15, 23, 42, 0.4);
            border-radius: 16px;
            padding: 1.5rem;
            margin-bottom: 2rem;
            border: 1px solid rgba(255, 255, 255, 0.05);
        }

        .project-info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 12px;
            font-size: 0.9rem;
        }

        .progress-container {
            height: 10px;
            background: #334155;
            border-radius: 5px;
            overflow: hidden;
        }

        .progress-bar {
            height: 100%;
            width: 70%; /* Adjust manually as you hit milestones */
            background: var(--accent);
            box-shadow: 0 0 15px var(--accent);
            border-radius: 5px;
            transition: width 1s ease-in-out;
        }

        /* Tech Tags */
        .tags {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 2.5rem;
            flex-wrap: wrap;
        }

        .tag {
            background: #1e293b;
            border: 1px solid #334155;
            padding: 6px 14px;
            border-radius: 100px;
            font-size: 0.75rem;
            font-weight: 600;
            color: var(--text-dim);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .tag:hover {
            border-color: var(--accent);
            color: var(--text-main);
        }

        /* Quote Box */
        .quote {
            font-style: italic;
            color: var(--text-dim);
            padding: 0 1rem;
            margin-bottom: 2.5rem;
            line-height: 1.6;
            position: relative;
        }

        /* Buttons */
        .btn-group {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 12px;
        }

        .btn {
            padding: 14px;
            border-radius: 12px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.2s;
            cursor: pointer;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--accent);
            color: #fff;
            border: none;
        }

        .btn-primary:hover {
            background: #059669;
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 1px solid #475569;
            color: var(--text-main);
        }

        .btn-outline:hover {
            background: rgba(255, 255, 255, 0.05);
            border-color: var(--text-dim);
        }
    </style>
</head>
<body>

<div class="container">
    <main class="card">
        <h1>Guten Tag, <span class="highlight">${name}</span></h1>
        <p class="subtitle">Keep pushing. The logic is coming together.</p>

        <div class="project-status">
            <div class="project-info">
                <span><strong>Exam Seating Plan</strong></span>
                <span style="color: var(--accent);">70% Complete</span>
            </div>
            <div class="progress-container">
                <div class="progress-bar"></div>
            </div>
        </div>

        <div class="tags">
            <div class="tag">Spring Boot</div>
            <div class="tag">MySQL</div>
            <div class="tag">React</div>
            <div class="tag">German B1.2</div>
        </div>

        <div class="quote">
            "It’s not a bug, it’s an undocumented feature... and you’re just the person to solve it."
        </div>

        <div class="btn-group">
            <a href="list-todo" class="btn btn-primary" style="text-align: center; display: block;">Start Sprint</a>

            <a href="https://github.com/shinn-thant005/myfirstwebapp" class="btn btn-primary" style="text-align: center; display: block;">Check GitHub</a>
        </div>
    </main>
</div>

</body>
</html>