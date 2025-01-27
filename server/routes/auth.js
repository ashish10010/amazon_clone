const express = require("express");

const authRouter = express.Router();

authRouter.post('/api/signup', (res,req)=>{
  //get the data from client
  //post the data in the db
  //return that data to the user
 const {name, email, password} = req.body;

});

module.exports =authRouter;