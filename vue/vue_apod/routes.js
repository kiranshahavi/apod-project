const router = require("express").Router()

const {
    home,
    getApodData
} = require("./controller");

router.get("/home", home)
router.get("/getApodData", getApodData)

module.exports = router;
  