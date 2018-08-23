require('dotenv').config();
const pg = require('pg');
const express = require('express');

const PORT = process.env.PORT;
const app = express();
const client = new pg.Client(process.env.DATABASE_URL);
client.connect();

app.set('view engine', 'ejs');

app.use(express.static('./public'));



app.get('/ping', (request, response) => {
  response.send('pong');
})

app.get('/hello', (request, response) => {
  // render out index.ejs
  response.render('index');
});

app.get('/books', (request, response) => {
  
  // we need books!
  client.query('SELECT title, author, image_url FROM books;')
    .then(results => {
      response.render('index', {books : results.rows});
    });

});

app.get('*', (request, response) => {
  response.render('pages/error');
})

app.listen(PORT, () => console.log('Listening on PORT', PORT));


