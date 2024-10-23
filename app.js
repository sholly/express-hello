const express = require('express');
const app = express();
const port = 8080;
app.get('/', (req, res) => {
    res.send("Hello express")
})

app.get('/goodbye', (req, res) => {
    res.send("Goodbye")
})


app.listen(port, () => {
    console.log("Express server listening on port " + port);
})