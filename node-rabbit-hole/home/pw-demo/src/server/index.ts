import express from "express";

const app = express();
const port = 3000;

app.get("/health", (_req, res) => {
  res.sendStatus(200);
});

app.get("/", (_req, res) => {
  res.send("Hello from Express!");
});

app.listen(port, () => {
  console.log(`Server listening on http://localhost:${port}`);
});
