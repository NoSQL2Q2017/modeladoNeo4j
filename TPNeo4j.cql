//Creacion de Nodos
CREATE 
 (Gu: Alumno:Docente { apellido: "Crespi", nombre: "Gustavo", legajo: 1491696 } ),
 (H: Alumno:Docente { apellido: "Fernandes dos Santos", nombre: "Juan", legajo: 1491738  } ),
 (J: Alumno:Docente { apellido: "Rios", nombre: "Juan", legajo: 1493346 } ),
 (G: Alumno:Docente { apellido: "Santoalla", nombre: "Gaston", legajo: 1493243 } ),
 (R: Alumno { apellido: "Vazquez", nombre: "Ramiro", legajo: 1491611 } ),
 (AED:  Materia { nombre: "Algoritmos y Estructura de Datos", electiva: false } ),
 (DDS:  Materia { nombre: "Diseño de Sistemas", electiva: false } ),
 (GDD:  Materia { nombre: "Gestion de Datos", electiva: false } ),
 (CRIP:  Materia { nombre: "Criptografia", electiva: true } ),
 (PDEP: Materia { nombre: "Paradigmas de Programacion", electiva: false } ),
 (AG:   Materia { nombre: "Administracion Gerencial", electiva: false } ),
 (SO:   Materia { nombre: "Sistemas Operativos", electiva: false } ),
 (ADP:   Materia { nombre: "Administracion de Personal", electiva: true } ),
 (TADP: Materia { nombre: "Tecnicas Avanzadas de Programacion", electiva: true } );
 
//Creacion de Relaciones
MATCH (Gus:  Alumno { legajo: 1491696 } ),    (dds: Materia { nombre: "Diseño de Sistemas"} ),
      (Juan: Alumno { legajo: 1493346 } ),      (tadp: Materia { nombre: "Tecnicas Avanzadas de Programacion"} ),
      (Gas:  Alumno { legajo: 1493243 } ), (crip: Materia { nombre: "Criptografia" } ),
      (R:    Alumno { legajo: 1491611 } ),   (pdep: Materia { nombre: "Paradigmas de Programacion"} ),
      (gdd: Materia { nombre: "Gestion de Datos" } ), (ag: Materia { nombre: "Administracion Gerencial"} ),
      (Jfds: Alumno { legajo: 1491738 } ), (so: Materia { nombre: "Sistemas Operativos"} ),
      (aed: Materia { nombre: "Algoritmos y Estructura de Datos"} ), (adp: Materia { nombre: "Administracion de Personal"} )
CREATE (Gus)-[:Conoce ]->(Juan), (Gus)-[:Conoce ]->(Gas), (Gus)-[:Conoce ]->(R), (Gus)-[:Conoce ]->(Jfds), 
 (Juan)-[:Conoce ]->(Gas), (Juan)-[:Conoce ]->(R), (Juan)-[:Conoce ]->(Jfds), 
 (Gas)-[:Conoce ]->(R), (Gas)-[:Conoce ]->(Jfds), 
 (R)-[:Conoce ]->(Jfds),
 (Juan)-[:Dicto ]->(pdep), (Juan)-[:Dicto ]->(dds),
 (Gus)-[:Dicto ]->(pdep), (Gus)-[:Dicto ]->(dds),
 (Jfds)-[:Dicto ]->(pdep), (Jfds)-[:Dicto ]->(tadp),
 (Gas)-[:Dicto ]->(pdep),
 (Gas)-[:FormoGrupoCon { materia: "Paradigmas de Programacion" } ]->(Jfds), 
 (Gas)-[:FormoGrupoCon { materia: "Paradigmas de Programacion" } ]->(Juan),
 (Juan)-[:FormoGrupoCon { materia: "Paradigmas de Programacion" } ]->(Jfds),
 (Gas)-[:FormoGrupoCon { materia: "Criptografia" } ]->(Jfds),
 (Gas)-[:FormoGrupoCon { materia: "Criptografia" } ]->(Juan),
 (Juan)-[:FormoGrupoCon { materia: "Criptografia" } ]->(Jfds),
 (Gas)-[:FormoGrupoCon { materia: "Tecnicas Avanzadas de Programacion" } ]->(Jfds),
 (Gas)-[:FormoGrupoCon { materia: "Tecnicas Avanzadas de Programacion" } ]->(Gus),
 (Gus)-[:FormoGrupoCon { materia: "Tecnicas Avanzadas de Programacion" } ]->(Jfds),
 (R)-[:FormoGrupoCon { materia: "Tecnicas Avanzadas de Programacion" } ]->(Juan),
 (R)-[:FormoGrupoCon { materia: "Sistemas Operativos" } ]->(Juan),
 (R)-[:FormoGrupoCon { materia: "Sistemas Operativos" } ]->(Jfds),
 (Jfds)-[:FormoGrupoCon { materia: "Sistemas Operativos" } ]->(Juan),
 (Gas)-[:FormoGrupoCon { materia: "Gestion de Datos" } ]->(Jfds),
 (Gas)-[:FormoGrupoCon { materia: "Gestion de Datos" } ]->(Juan),
 (Gas)-[:FormoGrupoCon { materia: "Gestion de Datos" } ]->(R),
 (Juan)-[:FormoGrupoCon { materia: "Gestion de Datos" } ]->(Jfds),
 (Juan)-[:FormoGrupoCon { materia: "Gestion de Datos" } ]->(R),
 (R)-[:FormoGrupoCon { materia: "Gestion de Datos" } ]->(Jfds),
 (Gas)-[:FormoGrupoCon { materia: "Diseño de Sistemas" } ]->(Juan),
 (Gas)-[:FormoGrupoCon { materia: "Diseño de Sistemas" } ]->(Gus),
 (Gas)-[:FormoGrupoCon { materia: "Diseño de Sistemas" } ]->(R),
 (R)-[:FormoGrupoCon { materia: "Diseño de Sistemas" } ]->(Juan),
 (Gas)-[:FormoGrupoCon { materia: "Diseño de Sistemas" } ]->(Gus),
 (Gus)-[:FormoGrupoCon { materia: "Diseño de Sistemas" } ]->(Juan),
 (Gas)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 10 } ]->(dds),
 (Gas)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 9 } ]->(tadp),
 (Gas)-[:Curso { nroCurso: "K2004", ano: 2014, cuatrimestre: "A", nota: 4 } ]->(pdep),
 (Gas)-[:Curso { nroCurso: "K5054", ano: 2017, cuatrimestre: "1C", nota: 10 } ]->(ag),
 (Gas)-[:Curso { nroCurso: "K3053", ano: 2015, cuatrimestre: "2C", nota: 4 } ]->(so),
 (Gas)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 10 } ]->(aed),
 (Gas)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 8 } ]->(gdd),
 (Gas)-[:Curso { nroCurso: "K4071", ano: 2016, cuatrimestre: "2C", nota: 10 } ]->(crip),
 (Juan)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 4 } ]->(dds),
 (Juan)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 8 } ]->(tadp),
 (Juan)-[:Curso { nroCurso: "K2004", ano: 2014, cuatrimestre: "A", nota: 6 } ]->(pdep),
 (Juan)-[:Curso { nroCurso: "K3013", ano: 2015, cuatrimestre: "2C", nota: 4 } ]->(so),
 (Juan)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 5 } ]->(aed),
 (Juan)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 7 } ]->(gdd),
 (Juan)-[:Curso { nroCurso: "K4071", ano: 2016, cuatrimestre: "2C", nota: 10 } ]->(crip),
 (Jfds)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 4 } ]->(dds),
 (Jfds)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 8 } ]->(tadp),
 (Jfds)-[:Curso { nroCurso: "K2004", ano: 2014, cuatrimestre: "A", nota: 8 } ]->(pdep),
 (Jfds)-[:Curso { nroCurso: "K3013", ano: 2015, cuatrimestre: "2C", nota: 6 } ]->(so),
 (Jfds)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 9 } ]->(aed),
 (Jfds)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 10 } ]->(gdd),
 (Jfds)-[:Curso { nroCurso: "K4071", ano: 2016, cuatrimestre: "2C", nota: 10 } ]->(crip),
 (Gus)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 8 } ]->(dds),
 (Gus)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 10 } ]->(tadp),
 (Gus)-[:Curso { nroCurso: "K2005", ano: 2014, cuatrimestre: "A", nota: 10 } ]->(pdep),
 (Gus)-[:Curso { nroCurso: "XXX", ano: 2017, cuatrimestre: "1C", nota: 6 } ]->(ag),
 (Gus)-[:Curso { nroCurso: "K3053", ano: 2015, cuatrimestre: "2C", nota: 4 } ]->(so),
 (Gus)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 8 } ]->(aed),
 (Gus)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 7 } ]->(gdd),
 (Gus)-[:Curso { nroCurso: "K0000", ano: 2016, cuatrimestre: "2C", nota: 10 } ]->(adp),
 (R)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 8 } ]->(dds),
 (R)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 6 } ]->(tadp),
 (R)-[:Curso { nroCurso: "K2001", ano: 2014, cuatrimestre: "A", nota: 8 } ]->(pdep),
 (R)-[:Curso { nroCurso: "XXX", ano: 2017, cuatrimestre: "1C", nota: 10 } ]->(ag),
 (R)-[:Curso { nroCurso: "K3013", ano: 2015, cuatrimestre: "2C", nota: 7 } ]->(so),
 (R)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 10 } ]->(aed),
 (R)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 7 } ]->(gdd)

 //Consultas
 //1. Listado de alumnos que cursaron materias juntos, pero en esta materia son de distintos grupos.
 MATCH (a1: Alumno)-[c1:Curso]-(m: Materia), (a2: Alumno)-[c2:Curso]-(m), (a1)-[f:FormoGrupoCon]-(b: Alumno)
 WHERE a1 <> a2
 AND a2 <> b
 AND f.materia <> m.nombre
 AND c1.nroCurso = c2.nroCurso
 AND c1.ano = c2.ano
 AND c1.cuatrimestre = c2.cuatrimestre
 RETURN DISTINCT a1


 //2. Listado de docentes que dictaron más de una materia.
MATCH (d: Docente)-[di:Dicto ]->(m: Materia)
WITH d as docente, count(di) as materias
WHERE materias > 1
RETURN docente

 //3. Tu propio promedio de calificaciones.
 //De un alumno especifico
 MATCH (a: Alumno { legajo: 1493243 })-[c: Curso]->()
 RETURN toFloat(sum(c.nota))/count(c) as promedio
 
 //De todos los alumnos
 MATCH (a: Alumno)-[c: Curso]->()
 RETURN a, toFloat(sum(c.nota))/count(c) as promedio

 //4. Listado para recomendación de alumnos que cursaron en el mismo curso y cuatrimestre pero no se conocen entre sí.
 //TODO Add one student who apply to this query 
 MATCH (a1: Alumno)-[c1: Curso]->(m: Materia), (a2: Alumno)-[c2: Curso]->(m)
 WHERE c1.nroCurso = c2.nroCurso
 AND c1.ano = c2.ano
 AND c1.cuatrimestre = c2.cuatrimestre
 AND NOT (a1)-[:Conoce]-(a2)
 RETURN DISTINCT a1, a2

 //5. Listado de los conocidos de tus conocidos, hasta longitud 2, e indefinida.
 //TODO Check this query
 //Sin el legajo entre {} se consigue todos los alumnos de manera similar a la query 3
 //Longitud 2
 MATCH (a: Alumno { legajo: 1493243 } )-[:Conoce*2]->(b)
 WHERE a <> b
 RETURN DISTINCT b
 
 //Longitud Indenifida
 MATCH (a: Alumno  { legajo: 1493243 } )-[:Conoce*]->(b), (b)-[:Conoce]->()
 WHERE a <> b
 RETURN DISTINCT b
 
 //6. Apellido y nombre de alumnos que también son docentes (ver pedido adicional para esta consulta).
 MATCH (a: Alumno: Docente)
 RETURN DISTINCT a.nombre, a.apellido

 //7. Dado un alumno en particular, recomendación de materias electivas que no haya cursado, en base al criterio de haber sido cursadas por otros alumnos que cursaron por lo menos una en común con él.
 MATCH (a1: Alumno { legajo: 1493243 } ), (e: Materia { electiva: true } ), (a1: Alumno)-[:Curso]-(m: Materia), (a2)-[:Curso]-(m), (a2)-[:Curso]-(e)
 WHERE a1 <> a2
 AND NOT (a1)-[:Curso]-(e)
 RETURN e

 //8. Hacer una variante del ítem anterior, recomendando sólo si el otro alumno es un contacto (directo o indirecto).
 MATCH (a1: Alumno { legajo: 1493243 } )-[:Conoce*]-(a2: Alumno), (e: Materia { electiva: true } ), (a2)-[:Curso]-(m: Materia)
 WHERE a1 <> a2
 AND NOT (a1)-[:Curso]-(e)
 AND (a1)-[:Curso]-(m)
 RETURN e

 //9. Consulta adicional, decidida por el grupo.