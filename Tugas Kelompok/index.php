<?php
session_start();

// Cek apakah pengguna sudah login
if (isset($_SESSION["username"])) {
    // Jika sudah login, arahkan ke halaman dashboard
    header("Location: dashboard.php");
    exit();  // Menghentikan eksekusi lebih lanjut
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Menyertakan Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menyertakan Google Fonts (Roboto) -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(50deg, rgba(2,0,36,1) 0%, rgba(9,13,121,1) 35%, rgba(0,151,255,1) 100%);
        }
        h1 {
            font-family: monospace;
        }
        .btn-login {
            background-color: #00bfff;
            color: white;
            transition: background-color 0.5s ease;
        }
        .btn-login:hover {
            background-color: #4f53b9;
            color: white;
        }
        .register {
            display: flex;
        }
    </style>
</head>

<body class="bg-light">
    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="card p-4 shadow-lg" style="max-width: 400px; width: 100%; border-radius: 12px;">
            <h1 class="text-center mb-4">Login</h1>
            <form method="POST" action="proses_login.php">
                <!-- Username -->
                <div class="mb-3">
                    <label for="username" class="form-label">Username :</label>
                    <input type="text" class="form-control form-control-lg" name="username" id="username" required>
                </div>
                <!-- Password -->
                <div class="mb-3">
                    <label for="password" class="form-label">Password :</label>
                    <input type="password" class="form-control form-control-lg" name="password" id="password" required>
                </div>
                <!-- Error Message -->
                <?php
                if (isset($_GET['error']) && $_GET['error'] == '1') {
                    echo "<div class='alert alert-danger'>Login salah, coba lagi</div>";
                }
                ?>
                <!-- Submit Button -->
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-login btn-lg">Login</button>
                </div>
                <div class="d-flex justify-content-center align-items-center mt-2">
                <div class="register">
                    <p>Belum punya akun?</p>
                    <a href="register.php" class="text-decoration-none mx-2">Register</a>
                </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Menyertakan Bootstrap JS dan dependensinya -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
