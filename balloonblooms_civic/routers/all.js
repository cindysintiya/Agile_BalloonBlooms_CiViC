const express = require('express');
const user_controller = require('../controllers/user.js');

const router = express.Router();

router.get("/login", user_controller.login)
router.get("/logout", user_controller.logout)
router.get("/signup", user_controller.signup)
router.post("/signup", user_controller.create)
router.post("/login", user_controller.auth)

module.exports = router;