var express = require('express');
const pool = require('../../modelos/bd');
var router = express.Router();
var novedadesModel = require('../../modelos/novedadesModel');

//router.get('/', function (req, res, next) {
//  res.render('admin/novedades', {
//    layout: 'admin/layout',
//    usuario: req.session.nombre,
//  })
//});

/* GET home page. */
router.get('/', async function(req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  res.render('admin/novedades', {
    layout:'admin/layout',
    usuario: req.session.nombre,
    novedades
    });
});


/*para eliminar novedad*/
router.get('/eliminar/:id', async (req, res, next) => {
  var id = req.params.id;
  await novedadesModel.deleteNovedadesById(id);
  res.redirect('/admin/novedades')

}); // cierra get de eliminar

// Formulario para novedades
router.get('/agregar', (req, res, next) => {
  res.render('admin/agregar', {
  layout: 'admin/layout'
  })
}) // cierra

//agregar cuando se guarda
router.post('/agregar', async (req, res, next) => {

  console.log(req.body)
  try {
    if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
      await novedadesModel.insertNovedad(req.body);
      res.redirect('/admin/novedades')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los campos son requeridos'
      })
    } 
  } catch (error) {
    console.log(error)
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se cargo la novedad'
    })
  }
});

//modificar y novedad seleccionada
router.get('/modificar/:id', async (req, res, next) => {
  var id = req.params.id;
  var novedad = await novedadesModel.getNovedadById(id);
  res.render('/admin/modificar', {
    layout: 'admin/layout',
    novedad
  });

});

router.post('/modificar', async (req, res, next) => {
  try {
    console.log(req.body.id); //para ver si trae ID
    console.log(req.body); // si trae el cuerpo
    var obj = {
      titulo: req.body.titulo,
      subtitulo: req.body.subtitulo,
      cuerpo: req.body.cuerpo
    }

    console.log(obj) // para ver si trae los datos
    await novedadesModel.modificarNovedadById(obj, req.body.id);
    res.redirect('/admin/novedades');
  } catch (error) {
    console.log(error)
    res.render('admin/modificar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se modifico la novedad'
    })
  }
})

module.exports = router;