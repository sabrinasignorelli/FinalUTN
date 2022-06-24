var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

var nodemailer = require('nodemailer');

router.post('/', async(req, res, next) => {

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var mensaje = req.body.mensaje;

  console.log(req.body)

  var obj= {
    to: 'sabri.signorelli@gmail.com',
    subject: 'Quiero otra novedad',
    html: nombre + " se contacto a través de la web y quiere saber mas novedades a este correo: " + email + ". <br> Además, hizo este comentario: " + mensaje + ". <br>Su apellido es: " + apellido
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transporter.sendMail(obj);

  res.render('index', {
    message: 'mensaje enviado correctamente 😀'
  });
});

module.exports = router;
