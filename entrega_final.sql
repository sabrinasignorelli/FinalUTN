-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 26-06-2022 a las 22:34:29
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `entrega_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Dos sanjuaninas crearon viandas para mascotas y son furor\r\n', 'Se trata de María Carmona y Sofía Bustos quienes tuvieron una idea original de la que actualmente viven y disfrutan.', 'María Carmona (31) y Sofía Bustos (28) iniciaron un emprendimiento luego de la necesidad de la perrita de una de ellas. Actualmente cuentan con un abanico de menúes para diferentes patologías y ahora dieron detalles de cómo iniciaron con esta novedosa opción de alimentación animal.\r\n\r\nLa mascota de María tenía sobrepeso y en un control con Sofía, veterinaria y amiga, le habló sobre la importancia de la nutrición natural de los animales y cómo los alimentos procesados perjudican la salud de los perros y gatos.\r\n\r\nDesde ese momento, María decidió hacerle de comer a su perrita y dejar de darle alimento embolsado. Con el correr de los días notó cambios asombrosos en el semblante de su mascota como así también en el pelaje y se vieron reflejados en los posteriores controles veterinarios.\r\n\r\nLuego de hacer cursos y con la guía de su amiga profesional, en el 2021, arrancó con el emprendimiento de realizar viandas para animales con el objetivo de ofrecer un servicio que mejora la calidad de vida de muchas mascotas. “Lo que a varios les causa sorpresa es que lo mismo que gastan en bolsones de alimento, es el costo que tienen por mes de las viandas. Con el plus que son comidas supervisadas por veterinaria capacitada”, expresó.\r\n\r\nSofía se encarga de realizar controles a los animales y depende de la patología que presente es la dieta que prepara María. Es un equipo que se complementa con el fin de darle una atención completa a perros y gatos, tanto de raza como mestizos. “Hay personas que tienen perros que no son de raza y por ejemplo, uno tiene diabetes y le da una alimentación específica que ayuda a controlar el azúcar del animal”, remarcó.\r\n\r\nTambién destacaron que trabajan con productos en crudo y que los animales requieren un proceso de transición para poder adoptar la alimentación que ofrecen ellas. “Las primeras viandas son cocidas y se va pasando a crudo de manera paulatina”, sentenció.\r\n\r\nLo importante es que las personas lleven a sus mascotas a un control antes de recibir una dieta especial porque puede presentar problemas intestinales, sobrepeso, insuficiencia renal, erliquiosis (ehrlichia), diabetes, cáncer o simplemente ser un animal añoso o como cariñosamente le decimos “abuelitos”.\r\n\r\nPor ejemplo, un caniche con sobrepeso (6kg) cuenta con una vianda por día que cuesta $6.000 por mes o un dálmata que padece dermatitis tiene una dieta que incluye arroz y el valor mensual de la dieta es de $7.200. Costos que van variando dependiendo de las necesidades y patologías de cada animal, como así también del incremento de la materia prima. María y Sofía destacaron que son sólo algunos pesos más de lo que cuesta un bolsón de alimentos que cubre la nutrición cotidiana de las mascotas. Pero marcan la diferencia que las viandas que realizan mejoran la calidad de vida de los animalitos.\r\n\r\nPara crear la dieta específica de cada mascota, María sostuvo que le prestan suma atención al PH de cada paciente y que han notado asombrosos cambios en el comportamiento de perros y gatos que sufrían ansiedad, por nombrar una característica.\r\n\r\nBajo el nombre @barfsanjuan, las emprendedoras y amantes de los animales ofrecen una innovadora carta alimenticia para cuidar y mimar a los integrantes animales de la familia.'),
(2, 'La crisis climática está modificando para siempre la migración de las mariposas monarca', 'Cada otoño, las mariposas monarca migran de la costa este de Estados Unidos al sur de Norteamérica para pasar el invierno en las sierras mexicanas.', 'Los números sugieren que la cantidad de mariposas que migran cada año se ha desplomado dramáticamente los últimos inviernos, lo que provoca incertidumbre sobre el futuro de la especie y su riesgo de desaparición. Sin embargo, nuevos estudios sugieren lo contrario.\r\n\r\nUna investigación publicada recientemente en Global Change Biology afirma que, durante las últimas tres décadas, la población de mariposas monarca se ha mantenido constante y que incluso ha aumentado durante las temporadas de verano. Una de las explicaciones que dan los autores es que menos mariposas migran en invierno: “A las Monarcas les está yendo bien en el verano,” dijo Andrew Davis, uno de los autores de la investigación.\r\n\r\nLos científicos de este estudio también propusieron respuestas para el contraste entre el número de mariposas que solía migrar en invierno y el que migra ahora. Una de las causas es el calentamiento global: al ser más cálidos los espacios donde pasan el verano, no tienen necesidad de trasladarse durante el invierno.\r\n\r\nSólo una sombra de lo que solían ser\r\nPor otro lado, grupos distintos de científicos difieren con esta propuesta, pues consideran que la especie sí está en peligro. Los números indican que la población va en descenso. Quienes toman esta postura argumentan que los lugares donde se ha registrado un incremento de mariposas no son los hogares de las mismas.\r\n\r\nCorn Belt es una región maicera del Medio Oeste de Estados Unidos. Como tal, también es el lugar de cultivo de las mariposas monarca. Karen Oberhauser, bióloga en la Universidad de Wisconsin-Madison, menciona que ha habido una fuerte disminución de mariposas monarca en el área:\r\n\r\n“Son solo una sombra de lo que solían ser,” comenta Jeffrey Glassberg, presidente de la asociación norteamericana de mariposas.\r\n\r\nLa baja de la población se ha atribuido a distintos factores. Entre ellos, la crisis climática y el uso de herbicidas en el pasto de las áreas donde habitan las mariposas monarca. Estos químicos también se deshacen del algodoncillo, que juega un rol fundamental en el ciclo de vida de esta especie. El uso de dicho producto aumentó significativamente durante la década de los 90 y principios del nuevo milenio.\r\n\r\nLa situación de esta especie sigue en discusión. Por ello, los investigadores afirman que no ha sido fácil la investigación ni la conservación de esta especie, pero que hacen lo posible para saber qué ocurre y cómo lidiar con ello.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuarios` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuarios`, `password`) VALUES
(1, 'Sabrina', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Nahuel', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
