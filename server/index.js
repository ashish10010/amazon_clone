//imports from packages
const express = require("express");
const mongoose = require("mongoose");

//Imports from other files
const authRouter = require("./routes/auth");
const e = require("express");

//Iinitialization
const PORT = 3000;
const app = express();
const DB =
  "mongodb+srv://aashish:ashish123@cluster0.qtgdu.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

//middlewares
app.use(express.json());
app.use(authRouter);

//connection

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Succesfull!");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", function () {
  console.log(`connected at ${PORT}`);
});
