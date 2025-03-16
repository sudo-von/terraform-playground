import express from 'express';

const app = express();
const port = 3000;

app.use((_req, res) => {
  res.status(200).json({
    message: 'Hello World',
  });
});

app.listen(port, () => console.log(`Listening at http://localhost:${port}`));