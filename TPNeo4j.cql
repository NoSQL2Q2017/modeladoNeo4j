//Creacion de Nodos
CREATE 
 (Gu:Alumno:Docente { apellido: "Crespi", nombre: "Gustavo", legajo: 1491696 }),
 (H:Alumno:Docente { apellido: "Fernandes dos Santos", nombre: "Juan", legajo: 1491738  }),
 (J:Alumno:Docente { apellido: "Rios", nombre: "Juan", legajo: 1493346 }),
 (G:Alumno:Docente { apellido: "Santoalla", nombre: "Gaston", legajo: 1493243 }),
 (HURLEY:Alumno { apellido: "Reyes", nombre: "Hugo", legajo: 1324567 }),
 (R:Alumno { apellido: "Vazquez", nombre: "Ramiro", legajo: 1491611 }),
 (DZN:Alumno { apellido: "Daniel", nombre: "Zinghini", legajo: 1492800 }),
 (SRLMP:Alumno { apellido: "Sarlomp", nombre: "Juan", legajo:1330298 }),
 (AED:Materia { nombre: "Algoritmos y Estructura de Datos", electiva: false }),
 (DDS:Materia { nombre: "Diseño de Sistemas", electiva: false }),
 (GDD:Materia { nombre: "Gestion de Datos", electiva: false }),
 (CRIP:Materia { nombre: "Criptografia", electiva: true }),
 (PDEP:Materia { nombre: "Paradigmas de Programacion", electiva: false }),
 (AG:Materia { nombre: "Administracion Gerencial", electiva: false }),
 (SO:Materia { nombre: "Sistemas Operativos", electiva: false }),
 (ADP:Materia { nombre: "Administracion de Personal", electiva: true }),
 (TADP:Materia { nombre: "Tecnicas Avanzadas de Programacion", electiva: true });
 
//Creacion de Relaciones
MATCH (Gus:Alumno { legajo: 1491696 }), (dds:Materia { nombre: "Diseño de Sistemas"}),
      (Juan:Alumno { legajo: 1493346 }), (tadp:Materia { nombre: "Tecnicas Avanzadas de Programacion"}),
      (Gas:Alumno { legajo: 1493243 }), (crip:Materia { nombre: "Criptografia" }),
      (R:Alumno { legajo: 1491611 }), (pdep:Materia { nombre: "Paradigmas de Programacion"}),
      (Jfds:Alumno { legajo: 1491738 }), (gdd:Materia { nombre: "Gestion de Datos" }),
      (dzn:Alumno { legajo: 1492800 }), (so:Materia { nombre: "Sistemas Operativos"}),
      (srlmp:Alumno { legajo:1330298 }), (aed:Materia { nombre: "Algoritmos y Estructura de Datos"}), 
      (hurley:Alumno { legajo: 1324567 }), (adp:Materia { nombre: "Administracion de Personal"}),
      (ag:Materia { nombre: "Administracion Gerencial"})
CREATE (Gus)-[:Conoce]->(Juan), (Gus)-[:Conoce]->(Gas), (Gus)-[:Conoce]->(R), (Gus)-[:Conoce]->(Jfds), 
 (Juan)-[:Conoce]->(Gas), (Juan)-[:Conoce]->(R), (Juan)-[:Conoce]->(Jfds), 
 (Gas)-[:Conoce]->(R), (Gas)-[:Conoce]->(Jfds), 
 (R)-[:Conoce]->(Jfds),
 (Gas)-[:Conoce]->(dzn), (dzn)-[:Conoce]->(srlmp),
 (Juan)-[:Dicto]->(pdep), (Juan)-[:Dicto]->(dds),
 (Gus)-[:Dicto]->(pdep), (Gus)-[:Dicto]->(dds),
 (Jfds)-[:Dicto]->(pdep), (Jfds)-[:Dicto]->(tadp),
 (Gas)-[:Dicto]->(pdep),
 (Gas)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 10, grupo: "Grupo 4" }]->(dds),
 (Gas)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 9, grupo: "Grupo 2" }]->(tadp),
 (Gas)-[:Curso { nroCurso: "K2004", ano: 2014, cuatrimestre: "A", nota: 4, grupo: "Grupo 4" }]->(pdep),
 (Gas)-[:Curso { nroCurso: "K5054", ano: 2017, cuatrimestre: "1C", nota: 10  }]->(ag),
 (Gas)-[:Curso { nroCurso: "K3053", ano: 2015, cuatrimestre: "2C", nota: 4, grupo: "SACHIDA" }]->(so),
 (Gas)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 10 }]->(aed),
 (Gas)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 8, grupo: "Ñuflo" }]->(gdd),
 (Gas)-[:Curso { nroCurso: "K4071", ano: 2016, cuatrimestre: "2C", nota: 10, grupo: "Clefia" }]->(crip),
 (Juan)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 4, grupo: "Grupo 4" }]->(dds),
 (Juan)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 8, grupo: "Grupo 8" }]->(tadp),
 (Juan)-[:Curso { nroCurso: "K2004", ano: 2014, cuatrimestre: "A", nota: 6, grupo: "Grupo 3" }]->(pdep),
 (Juan)-[:Curso { nroCurso: "K3013", ano: 2015, cuatrimestre: "2C", nota: 4, grupo: "socketes planificaDOS" }]->(so),
 (Juan)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 5 }]->(aed),
 (Juan)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 7, grupo: "Ñuflo" }]->(gdd),
 (Juan)-[:Curso { nroCurso: "K4071", ano: 2016, cuatrimestre: "2C", nota: 10, grupo: "Clefia" }]->(crip),
 (Jfds)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 4, grupo: "Grupo 5"  }]->(dds),
 (Jfds)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 8, grupo: "Grupo 2" }]->(tadp),
 (Jfds)-[:Curso { nroCurso: "K2004", ano: 2014, cuatrimestre: "A", nota: 8, grupo: "Grupo 4" }]->(pdep),
 (Jfds)-[:Curso { nroCurso: "K3013", ano: 2015, cuatrimestre: "2C", nota: 6, grupo: "socketes planificaDOS" }]->(so),
 (Jfds)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 9 }]->(aed),
 (Jfds)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 10, grupo: "Ñuflo" }]->(gdd),
 (Jfds)-[:Curso { nroCurso: "K4071", ano: 2016, cuatrimestre: "2C", nota: 10, grupo: "Clefia" }]->(crip),
 (hurley)-[:Curso { nroCurso: "K4071", ano: 2016, cuatrimestre: "2C", nota: 9, grupo: "Mickey" }]->(crip),
 (Gus)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 8, grupo: "Grupo 4" }]->(dds),
 (Gus)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 10, grupo: "Grupo 2" }]->(tadp),
 (Gus)-[:Curso { nroCurso: "K2005", ano: 2014, cuatrimestre: "A", nota: 10, grupo: "Grupo 3" }]->(pdep),
 (Gus)-[:Curso { nroCurso: "XXX", ano: 2017, cuatrimestre: "1C", nota: 6 }]->(ag),
 (Gus)-[:Curso { nroCurso: "K3053", ano: 2015, cuatrimestre: "2C", nota: 4, grupo: "F" }]->(so),
 (Gus)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 8 }]->(aed),
 (Gus)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 7, grupo: "B" }]->(gdd),
 (Gus)-[:Curso { nroCurso: "K0000", ano: 2016, cuatrimestre: "2C", nota: 10 }]->(adp),
 (R)-[:Curso { nroCurso: "K3001", ano: 2015, cuatrimestre: "A", nota: 8, grupo: "Grupo 4" }]->(dds),
 (R)-[:Curso { nroCurso: "K3021", ano: 2015, cuatrimestre: "2C", nota: 6, grupo: "Grupo 8" }]->(tadp),
 (R)-[:Curso { nroCurso: "K2001", ano: 2014, cuatrimestre: "A", nota: 8, grupo: "Grupo 3" }]->(pdep),
 (R)-[:Curso { nroCurso: "XXX", ano: 2017, cuatrimestre: "1C", nota: 10 }]->(ag),
 (R)-[:Curso { nroCurso: "K3013", ano: 2015, cuatrimestre: "2C", nota: 7, grupo: "socketes planificaDOS" }]->(so),
 (R)-[:Curso { nroCurso: "K1025", ano: 2013, cuatrimestre: "A", nota: 10 }]->(aed),
 (R)-[:Curso { nroCurso: "K3022", ano: 2015, cuatrimestre: "2C", nota: 7, grupo: "Ñuflo" }]->(gdd)

//Consultas
//1. Listado de alumnos que cursaron materias juntos, pero en esta materia son de distintos grupos.
MATCH (a1:Alumno)-[c1:Curso]-(m: Materia), (a2:Alumno)-[c2:Curso]-(m)
WHERE c1.nroCurso = c2.nroCurso
AND c1.ano = c2.ano
AND c1.cuatrimestre = c2.cuatrimestre
AND c1.grupo <> c2.grupo
RETURN m.nombre as Materia, a1 as Alumno, collect(a2) as `Alumnos de otros Grupos`

//2. Listado de docentes que dictaron más de una materia.
MATCH (d:Docente)-[di:Dicto]->(m:Materia)
WITH d as Docente, count(di) as materias
WHERE materias > 1
RETURN Docente

//3. Tu propio promedio de calificaciones.
//De un alumno especifico
MATCH (a:Alumno { legajo: 1493243 })-[c:Curso]->()
RETURN toFloat(sum(c.nota))/count(c) as Promedio

//De todos los alumnos
MATCH (a:Alumno)-[c:Curso]->()
RETURN a as Alumno, toFloat(sum(c.nota))/count(c) as Promedio

//4. Listado para recomendación de alumnos que cursaron en el mismo curso y cuatrimestre pero no se conocen entre sí.
MATCH (a1:Alumno)-[c1:Curso]->(m:Materia), (a2:Alumno)-[c2:Curso]->(m)
WHERE c1.nroCurso = c2.nroCurso
AND c1.ano = c2.ano
AND c1.cuatrimestre = c2.cuatrimestre
AND NOT (a1)-[:Conoce]-(a2)
RETURN a1 as Alumno, collect(a2) as Desconocidos

//5. Listado de los conocidos de tus conocidos, hasta longitud 2, e indefinida.
//Longitud 2
MATCH (a:Alumno { legajo: 1493346 })-[:Conoce*..2]-(b)
WHERE a <> b
RETURN DISTINCT b as Conocido

//Longitud Indenifida
MATCH (a:Alumno  { legajo: 1493346 })-[:Conoce*]-(b)
WHERE a <> b
RETURN DISTINCT b as Conocido

//6. Apellido y nombre de alumnos que también son docentes (ver pedido adicional para esta consulta).
MATCH (a:Alumno:Docente)
RETURN DISTINCT a.nombre, a.apellido

//Variante: En vez de tener un nodo Alumno y uno Docente, tener un Nodo Persona que tenga ambas relaciones (curso y dicto)
MATCH (p:Persona)-[:Curso]-(), (p)-[:Dicto]-()
Return DISTINCT p.nombre, p.apellido

//7. Dado un alumno en particular, recomendación de materias electivas que no haya cursado, en base al criterio de haber sido cursadas por otros alumnos que cursaron por lo menos una en común con él.
MATCH (a1:Alumno { legajo: 1493243 })-[:Curso]-(m:Materia), (a2:Alumno)-[:Curso]-(m), (a2)-[:Curso]-(e:Materia { electiva: true })
WHERE NOT (a1)-[:Curso]-(e)
RETURN DISTINCT e as `Electiva Recomendada`

//8. Hacer una variante del ítem anterior, recomendando sólo si el otro alumno es un contacto (directo o indirecto).
MATCH (a1:Alumno { legajo: 1493243 })-[:Conoce*]-(a2:Alumno), (a1)-[:Curso]-(m:Materia), (a2)-[:Curso]-(m), (a2)-[:Curso]-(e:Materia { electiva: true })
WHERE NOT (a1)-[:Curso]-(e)
RETURN DISTINCT e as `Electiva Recomendada`

//9. Consulta adicional, decidida por el grupo.
//Listado para recomendación de compañeros de grupo teniendo como criterio que hayan cursado mas de 5 materias juntos.
MATCH (a1:Alumno)-[c1:Curso]-(m:Materia), (a2:Alumno)-[c2:Curso]-(m)
WHERE c1.ano = c2.ano
AND c1.cuatrimestre = c2.cuatrimestre
AND c1.nroCurso = c2.nroCurso
WITH a1, a2, count(c1) as cantMateriasJuntos
WHERE cantMateriasJuntos > 5
RETURN a1 as Alumno, collect(DISTINCT a2) as Recomendados