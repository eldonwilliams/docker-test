const express = require('express');

const app = express();

app.get('*', (req, res) => res.send(process.env));

app.listen(3000, () => console.log("hi"));