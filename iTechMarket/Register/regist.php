<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Oswald:wght@200&family=Playfair:wght@300&family=Roboto+Slab:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/Register/style.css">
    <link rel="icon" href="/image/plumbob.ico">
<title>Регистрация</title>
</head>
<header>
<div class="header_inner">
                <div class="logo">
                    <a class="logo_icon"><img src="/image/logo.png" alt="123" width="130" height="70"></a>
                </div>
                <nav>  
                    <a class="nav_item" href="http://thesims/index.html#Галерея">Галерея</a>
                    <a class="nav_item" href="http://thesims/index.html#О%20игре">О игре</a>
                    <a class="nav_item" href="http://thesims/index.html#Прайс%20лист">Дополнения</a>
                    <a class="nav_item" href="http://thesims/index.html#Контакты">Контакты</a>
                </nav>
                <div class="button">
                    <a href="/index.html" class="nav_element" style="text-decoration: none; color: white; font-size: 15px;">На главную</a>
                </div>
    </div>
</header>
<body>
    <div class="containerR">
                        <div class="login_text">Регистрация</div>
                        <form action="" method="post">
                            <input class="input_register" type="email" placeholder="Почта" name="email"><br>
                            <input class="input_register" type="text" placeholder="Логин" name="login"><br>
                            <input class="input_register" type="password" placeholder="Пароль" name="pass"><br>
                            <input class="input_register" type="password" placeholder="Подтверждение пароля" name="repeatpass">
                            <input type="hidden" name="form" value="users"><br>
                            <button class="button_register" type="submit"> Зарегистрироваться </button>
                        </form>
        <?php
        require_once('db.php');
        if ($_POST['form'] === 'users') {

        $email = $_POST['email']; // Изменяем $name на $email для регистрации
        $login = $_POST['login']; // Добавляем $login вместо $email
        $pass = $_POST['pass'];
        $repeatpass = $_POST['repeatpass'];


        if (empty($email) || empty($login) || empty($pass) || empty($repeatpass)) { // Проверяем $email и $login
            echo 'Заполните все поля формы.';
        } elseif ($pass !== $repeatpass) {
            echo 'Пароли не совпадают.';
        } else {
            $stmt = $conn->prepare("SELECT * FROM users WHERE login = ?"); // Проверяем наличие логина
            $stmt->bind_param('s', $login);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                echo "Пользователь с таким логином уже существует!";
            } else {
                $hashed_password = password_hash($pass, PASSWORD_BCRYPT);

                $stmt = $conn->prepare("INSERT INTO `users` (email, login, pass) VALUES (?, ?, ?)"); // Исправляем порядок и названия полей
                $stmt->bind_param('sss', $email, $login, $hashed_password); // Привязываем параметры в соответствующем порядке
                $stmt->execute();

                echo 'Пользователь успешно зарегистрирован.';
            }
        }
        }
        $conn->close();
        ?>
    </div>
</body>
</html>
