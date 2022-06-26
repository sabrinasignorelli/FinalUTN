var express = require('express');
var router = express.Router();
var usuariosModel = require('./../../modelos/usuariosModel');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('admin/login', {
    layout:'admin/layout'
    });
});

router.get('/logout', function (req, res, next) {
    req.session.destroy(); // destruir
    res.render('admin/login', {
        layout: 'admin/layout'
    });
});

router.post('/', async (req, res, next) => {
    try {
        var usuarios = req.body.usuarios;
        var password = req.body.password;

        console.log(req.body);

        var data = await usuariosModel.getUserAndPassword(usuarios, password);

        if (data != undefined) {
//            req.session.id.usuarios = data.id;
//            req.session.usuarios = data.usuarios;
            res.redirect('/admin/novedades');
        } else {
            res.render('admin/login', {
                layout: 'admin/layout',
                error: true
            })
        }
    } catch (error) {
        console.log(error)
    }
});

module.exports = router;