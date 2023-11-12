const express=require('express');
const app= express();
const port= 5000;
const cors=require("cors");
const mongoose=require("mongoose");
const mongoUrl = require("./keys")


app.use(cors());

require("./models/models")
app.use(express.json())
app.use(require("./routes/auth")) 


mongoose.connect(mongoUrl);

mongoose.connection.on("connected",()=>{
    console.log("Successfully connected to mongodb")
});

mongoose.connection.on("error",()=>{
    console.log("Not connected to mongodb")
});

app.listen(port,()=>{
    console.log("Server is running on "+port);
});
