var express = require("express");
var watson = require("watson-developer-cloud");
var config = require("../config.js");
var router = express.Router();
var authorization = new watson.AuthorizationV1(config.watson);

router.get('/watson', function(req, res, next) {
	authorization.getToken(function (err, token) {
		if (!token) return next(err);
		res.send({url: config.watson.url, token: token});
	});
});

router.get('/google', function(req, res, next) {
	res.send({url: config.google.url, token: config.google.token});
});

module.exports = router;
