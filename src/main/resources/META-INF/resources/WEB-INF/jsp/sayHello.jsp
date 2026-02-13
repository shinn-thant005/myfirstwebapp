<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pure Elegance | Minimalist Design</title>
    <style>
        /* CSS Variables for easy customization */
        :root {
            --primary: #2d3436;
            --accent: #6c5ce7;
            --bg: #f9f9fb;
            --text: #636e72;
            --white: #ffffff;
        }

        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            line-height: 1.6;
            color: var(--text);
            background-color: var(--bg);
        }

        /* Navigation */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 2rem 10%;
            background: transparent;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 800;
            color: var(--primary);
            letter-spacing: -1px;
        }

        nav ul {
            display: flex;
            list-style: none;
        }

        nav ul li {
            margin-left: 2rem;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--text);
            font-weight: 500;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: var(--accent);
        }

        /* Hero Section */
        .hero {
            height: 80vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 0 10%;
        }

        .hero h1 {
            font-size: clamp(2.5rem, 8vw, 4.5rem);
            color: var(--primary);
            margin-bottom: 1.5rem;
            line-height: 1.1;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 600px;
            margin-bottom: 2rem;
        }

        .btn {
            padding: 1rem 2.5rem;
            background-color: var(--accent);
            color: var(--white);
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 10px 20px rgba(108, 92, 231, 0.2);
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 30px rgba(108, 92, 231, 0.3);
        }

        /* Features Section */
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            padding: 5rem 10%;
            background-color: var(--white);
        }

        .card {
            padding: 3rem 2rem;
            border-radius: 20px;
            background: var(--bg);
            transition: transform 0.3s;
            text-align: center;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card h3 {
            margin-bottom: 1rem;
            color: var(--primary);
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 4rem 0;
            font-size: 0.9rem;
            opacity: 0.7;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                gap: 1rem;
            }
            nav ul li {
                margin: 0 1rem;
            }
        }
    </style>
</head>
<body>

    <nav>
        <div class="logo">GEMINI.STUDIO</div>
        <ul>
            <li><a href="#">Work</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>

    <header class="hero">
        <h1>Design is thinking<br>made visual.</h1>
        <p>We create digital experiences that blend sophisticated aesthetics with intuitive functionality.</p>
        <a href="#" class="btn">View Our Projects</a>
    </header>

    <section class="features">
        <div class="card">
            <h3>Branding</h3>
            <p>Building unique identities that resonate with your target audience.</p>
        </div>
        <div class="card">
            <h3>Interface</h3>
            <p>Clean, user-centric designs focused on conversion and clarity.</p>
        </div>
        <div class="card">
            <h3>Strategy</h3>
            <p>Data-driven approaches to ensure your brand stands the test of time.</p>
        </div>
    </section>

    <footer>
        <p>&copy; 2026 Gemini Studio. Built with pure HTML & CSS.</p>
    </footer>

</body>
</html>