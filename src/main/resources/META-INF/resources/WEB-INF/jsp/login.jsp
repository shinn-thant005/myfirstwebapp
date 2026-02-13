<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Login | Secure Access</title>
    <style>
        :root {
            --primary-clr: #4f46e5;
            --text-main: #1f2937;
            --text-sub: #6b7280;
            --bg-gradient: linear-gradient(135deg, #e0e7ff 0%, #f3f4f6 100%);
            --white: #ffffff;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: var(--bg-gradient);
            padding: 20px;
        }

        .login-card {
            background: var(--white);
            width: 100%;
            max-width: 400px;
            padding: 40px;
            border-radius: 24px;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
        }

        .header {
            text-align: center;
            margin-bottom: 32px;
        }

        .header h1 {
            font-size: 24px;
            color: var(--text-main);
            font-weight: 700;
            margin-bottom: 8px;
        }

        .header p {
            color: var(--text-sub);
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            font-weight: 600;
            color: var(--text-main);
            margin-bottom: 8px;
        }

        .form-group input {
            width: 100%;
            padding: 12px 16px;
            border: 1.5px solid #e5e7eb;
            border-radius: 12px;
            font-size: 16px;
            transition: all 0.3s ease;
            outline: none;
        }

        .form-group input:focus {
            border-color: var(--primary-clr);
            box-shadow: 0 0 0 4px rgba(79, 70, 229, 0.1);
        }

        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
            font-size: 14px;
        }

        .options a {
            color: var(--primary-clr);
            text-decoration: none;
            font-weight: 600;
        }

        .login-btn {
            width: 100%;
            padding: 14px;
            background-color: var(--primary-clr);
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .login-btn:hover {
            background-color: #4338ca;
        }

        .footer {
            margin-top: 24px;
            text-align: center;
            font-size: 14px;
            color: var(--text-sub);
        }

        .footer a {
            color: var(--primary-clr);
            text-decoration: none;
            font-weight: 600;
        }
    </style>
</head>
<body>

    <div class="login-card">
        <div class="header">
            <h1>Welcome Back</h1>
            <p>Please enter your details to sign in.</p>
        </div>

        <form>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" placeholder="you@example.com" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="••••••••" required>
            </div>

            <div class="options">
                <label style="display: flex; align-items: center; gap: 8px; cursor: pointer;">
                    <input type="checkbox" style="width: 16px; height: 16px;"> Remember me
                </label>
                <a href="#">Forgot password?</a>
            </div>

            <button type="submit" class="login-btn">Sign In</button>
        </form>

        <div class="footer">
            Don't have an account? <a href="#">Create one</a>
        </div>
    </div>

</body>
</html>