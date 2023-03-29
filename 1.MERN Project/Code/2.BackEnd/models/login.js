let mongoose = require('mongoose')

//2. Schema
let schema = new mongoose.Schema({
    email:{
        type:String,
        required: true
    },
    password:{
        type: String,
    }
})

//3. model
module.exports = mongoose.model("Login", schema)