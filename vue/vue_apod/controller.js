const dbConnection = require("../../db/dbConnection");
const catchAsync = require("../../utils/catchAsync");
const download = require('image-downloader')
const axios = require('axios')
var path = require("path");
const {
    getData
} = require("./service");

module.exports = {
    home: catchAsync(async (req, res, next) => {
        res.render('index.ejs');
    }),
    getApodData: catchAsync(async (req, res, next) => {
        let connection;
        let rows;
        let datamage;
        let apiPicOfTheDay;
        let checkDatavalue
        let currDate = new Date();
        let status = "yes"
        let dateCheck
        try{
            connection  = await dbConnection.getConnection();
            await dbConnection.beginTransaction(connection);
            if(req.query.apod_date_check == "")
                checkDatavalue = "Date Filed Cannot be blank"


            req.query.APOD_DATE = req.query.apod_date_check.toLocaleString('fr-CA');
            dateCheck = new Date(req.query.apod_date_check)
            if(currDate.getTime() < dateCheck.getTime()){
                status = "no"
                checkDatavalue = "Date Cannot be Greater than Current Date"
            }
                
            rows = await getData(connection,req.query);
            
            if(rows == "" && status != "no")
            {
                rows = await axios.get(`https://api.nasa.gov/planetary/apod?date=${req.query.APOD_DATE}&api_key=${process.env.NASAAPEY}`)
                let currDate = new Date()
                
                let options = {
                    url: rows.data.url,
                    dest: '../../public/images',
                    extractFilename: true     
                  }

                let filedetails = await download.image(options);
                var file = path.basename(filedetails.filename);
                
                req.body.MODE = "create"
                req.body.name = rows.data.copyright
                req.body.apod_date = rows.data.date
                req.body.description = rows.data.explanation
                req.body.imagename = file
                rows = await getData(connection,req.body);
            }
            
            await dbConnection.commitTransaction(connection);
            
            let userViewData = rows[0]
            res.render('apod_data.ejs',{'userViewData': userViewData, checkData : checkDatavalue});
            
            
        }
        catch(e){
            if(connection)
                await dbConnection.rollbackTransaction(connection);
            next(e);
        }
        finally{
            if(connection)
                connection.release();
        }
    })
}
