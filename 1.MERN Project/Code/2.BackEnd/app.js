const express = require('express');
const app = express()
const PORT = 3000
const mongoose = require('mongoose')
const cors = require('cors')

let Login = require('./models/login.js')

app.use(express.json())
app.use(cors())

//1. database connection
const dbURL = "mongodb://localhost:27017/Project"
mongoose.connect(dbURL).then(()=>{
    console.log("Connected to database.");
})

app.post("/login", async(req,res)=>{
    //4.Adding data
    let login = new Login({
        email: req.body.email,
        password: req.body.password
    })
    try{
        //5. save data
        await login.save()
        res.send({message: "Login Successfully"})
    }catch(err){
        res.send({message: "Login Failed. Try Again..!"})
    }
})


app.listen(PORT, ()=>{
    console.log("Listining to server...!");
})