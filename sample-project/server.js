const express = require('express');

//Create an app
const app = express();
app.get('/', (req, res) => {
    res.send('Hello world, you are succeed to deploy you first app.\n');
});

//Listen port
const PORT = 8080;
app.listen(PORT);
console.log(`Running on port ${PORT}`);
