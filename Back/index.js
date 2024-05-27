const dotenv = require ('dotenv');

dotenv.config({path:".env.local"});
const mysql = require('mysql');
var cors = require('cors')
var db_host = process.env.db_host;
var db_user = process.env.db_user;
var db_psw = process.env.db_psw;
var db_name = process.env.db_name;
console.log(`database host = '${db_host}'`)
console.log(`database user = '${db_user}'`)
console.log(`database password = '${db_psw}'`)
console.log(`database name = '${db_name}'`)

// Настройки для подключения к MySQL базе данных
const connection = mysql.createConnection({
  host: db_host,
  user: db_user, // Пользователь базы данных
  password: db_psw, // Пароль пользователя
  database: db_name // Название базы данных
});

// Подключение к базе данных
connection.connect((err) => {
  if (err) {
    console.error('Ошибка подключения к базе данных: ', err);
    return;
  }
  console.log('Подключение к базе данных успешно');
});

// Пример выполнения запроса к базе данных
/* connection.query('SELECT * FROM assortment', (err, results) => {
  if (err) {
    console.error('Ошибка выполнения запроса: ', err);
    return;
  }
  console.log('Результаты запроса: ', results);
});
 */
const express = require('express')
const app = express()
const bodyParser = require('body-parser');

app.use(cors())

app.use(bodyParser.json());

app.get('/', function (req, res) {
  res.send('Hello World'+req.query.a)
})


app.post('/calculate', (req, res) => {
  const { num1, num2, operation } = req.body;
  let result;

  switch(operation) {
      case 'add':
          result = Number(num1) + Number(num2);
          break;
      case 'subtract':
          result = Number(num1) - Number(num2);
          break;
      case 'multiply':
          result = Number(num1) * Number(num2);
          break;
      case 'divide':
          result = Number(num1) / Number(num2);
          break;
  }

  res.status(200).json({ result: result });
});
app.listen(3000)
// Закрытие соединения с базой данных
connection.end();