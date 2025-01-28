const express = require("express");
const User = require("../models/user");

const authRouter = express.Router();

authRouter.post("/api/signup", async (req, res) => {
  //get the data from client
  //post the data in the db
  //return that data to the user
  const { name, email, password } = req.body;

  const existingUser = await User.findOne({
    email,
  });
  if (existingUser) {
    return res.status(400).json({ msg: "User with same email already exits!" });
  }
});

module.exports = authRouter;
