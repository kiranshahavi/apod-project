const express = require('express');
const dotenv = require('dotenv');
const {createPool} = require("./db/dbConnection");
const bodyParser = require('body-parser');
const vueapodroutes = require("./vue/vue_apod/routes");

const app = express();
app.use('/public/', express.static('./public'));

app.use(bodyParser.json({
    limit: '50mb'
  }));

  app.use(bodyParser.urlencoded({
    limit: '50mb',
    parameterLimit: 100000,
    extended: true 
  }));
app.use(bodyParser.json());
app.set('view engine', 'ejs');
app.use("/api/vue/apod/", vueapodroutes);

app.all("*",(req, res, next) =>{
   console.log(req.path)
    //throw new AppError(`Request URL ${req.path} not found.`,404)
 });

 app.use((err,req,res,next) =>{
    const statusCode = err.statusCode || 500;
    res.status(statusCode).json({
       status:0,
       error: err.message,
       stack: err.stack
    })
})
dotenv.config();
   
   app.listen(process.env.PORT, async () => {
      console.log(`Server is listening to port ${process.env.PORT}`);

      createPool()
    });