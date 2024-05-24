<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Oswald:wght@200&family=Playfair:wght@300&family=Roboto+Slab:wght@100&display=swap" rel="stylesheet">
    <link rel="icon" href="/image/favicon.ico">
    <link rel="stylesheet" href="/Register/style.css"> 
    <title>Авторизация</title>
</head>

<header>
    <div class="header_inner">
                <div class="logo">
                    <a class="logo_icon"><img src="/image/logo.png" alt="123"  width="65" height="50"></a>
                </div>
                <nav>  
                    <a class="nav_item" href="#О игре">О нас</a>
                    <a class="nav_item" href="#Галерея">Корзина</a>
                </nav>
                <div class="button">
            <a href="/index.php" class="nav_element"  style="text-decoration: none; color: white; font-size: 15px;">На главную</a>
        </div>
    </div>
</header>
<body>
        <div class="container">
                    <div class="login_form">
                        <div class="login_text">Авторизация</div>
                        <form action="" method="post">
                            <input class="input_register" type="text" placeholder="Логин" name="login"><br>
                            <input class="input_register" type="password" placeholder="Пароль" name="password"><br>
                            <input type="hidden" name="form" value="login">
                            <button class="button_register" type="submit"> Войти </button><br> 
                        </form>
                    </div>
        
                    <?php
                    require_once('db.php');
                    // Login =================================================================
                    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                        if ($_POST['form'] === 'login') {

                            $login = $_POST['login'];
                            $pass = $_POST['password'];
                            if (empty($login) || empty($pass)) {
                                echo "Заполните все поля";}
                                 else {
                                    $stmt = $conn->prepare("SELECT * FROM `users` WHERE login = ?"); // Изменен запрос на поиск по login
                                    $stmt->bind_param('s', $login); // Привязываем только login
                                    $stmt->execute();
                                    $result = $stmt->get_result();

                                if ($result->num_rows > 0) {
                                    $user = $result->fetch_assoc();
                                    if (password_verify($pass, $user['pass'])) {
                                        $user_id = $user['id'];
                                        $login = $user['login']; // Получаем логин пользователя
                                    } else {
                                        echo "Неправильный пароль.";
                                    }
                                } else {
                                    echo "Пользователь с таким логином не найден.";
                                }
                            }
                        }
                    }
                    ?>
            <div class="regist_link">Нет аккаунта?
                <a href="/Register/regist.php" class="nav_element" style="text-decoration: none; color: white; font-size: 25px;">Зарегистрируйся</a>
            </div>
        </div>
</body>

</html>