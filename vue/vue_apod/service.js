const { v4: uuidv4 } = require('uuid');
const AppError = require("../../utils/appError");

module.exports = {
    getData: (connection,body) => {
        return new Promise((resolved,rejected) => {
            let data;
            switch(body.MODE)
            {
                case "select":
                    connection.query('SELECT * FROM apod_data WHERE apod_date = ?', [body.APOD_DATE], (err, rows) => {
                        if (!err)
                            return resolved(rows);
                        else
                            return rejected(err);
                    })
                break;
                case "create":
                    data = {
                        apod_data_id : "",
                        name : body.name,
                        imagename : body.imagename,
                        description : body.description,
                        apod_date : body.apod_date
                    }
                    data.apod_data_id = uuidv4()
                    connection.query('INSERT INTO apod_data SET ?', [data], (err, rows) => {
                        if(!err) {
                            connection.query('SELECT * FROM apod_data WHERE apod_data_id = ?', [data.apod_data_id], (errdata, rowsdata) => {
                                if (!errdata)
                                    return resolved(rowsdata);
                                else
                                    return rejected(errdata);
                            })
                        }
                        else {
                            return rejected(err);
                        }
                    });
                break;
                default : throw new AppError("Invalid Mode",420)
            }
        })
    }
}