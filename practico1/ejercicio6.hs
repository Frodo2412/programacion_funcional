{- Se desea procesar informacion relativa a estudiantes.
Cada estudiante esta dado por su nombre (cadena de caracteres),
CI (entero), año de ingreso (entero) y lista de cursos aprobados.
Cada curso esta dado por el nombre del curso (cadena de caracteres),
codigo del curso (entero) y nota de aprobacíon (entero). -}

type NombreEstudiante = String
type CI = Int
type Anio = Int

type NombreCurso = String
type CodigoCurso = Int
type NotaAprobacion = Int

type Curso = (NombreCurso, CodigoCurso, NotaAprobacion)

type Cursos = [Curso]

type Estudiante = (NombreEstudiante, CI, Anio, Cursos)


getCI :: Estudiante -> (NombreEstudiante, CI)
getCI (nombre, ci, _, _) = (nombre, ci)

getAnioIngreso :: Estudiante -> Anio
getAnioIngreso (_, _, anio, _) = anio

getCursosAprobadosPorNota :: Estudiante -> NotaAprobacion -> [CodigoCurso]
getCursosAprobadosPorNota (_, _, _, cursos) nota = getCursosAprobados cursos nota

getCursosAprobados :: Cursos -> NotaAprobacion -> [CodigoCurso]
getCursosAprobados [] _ = []
getCursosAprobados ((_, codigo, nota):tail) notaAprobacion =
  if nota <= notaAprobacion then [codigo] ++ getCursosAprobados tail notaAprobacion
  else  getCursosAprobados tail notaAprobacion

getEstudiantesIngresadosSegunAnio :: [Estudiante] -> Anio -> [(NombreEstudiante,CI)]
getEstudiantesIngresadosSegunAnio [] _ = []
getEstudiantesIngresadosSegunAnio ((nombre, ci, anioEstudiante, _) : resto) anio =
    if anioEstudiante == anio then [(nombre, ci)] ++ getEstudiantesIngresadosSegunAnio resto anio
    else  getEstudiantesIngresadosSegunAnio resto anio