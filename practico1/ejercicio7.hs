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

data Curso = Curso NombreCurso CodigoCurso NotaAprobacion
    deriving(Show, Eq)

type Cursos = [Curso]

data Estudiante = Estudiante NombreEstudiante CI Anio Cursos

getCI :: Estudiante -> (NombreEstudiante, CI)
getCI (Estudiante nombre ci _ _) = (nombre, ci)

getAnioIngreso :: Estudiante -> Anio
getAnioIngreso (Estudiante _ _ anio _) = anio

getCursosAprobados :: Estudiante -> NotaAprobacion -> [CodigoCurso]
getCursosAprobados (Estudiante _ _ _ cursos) nota = [codigo | Curso _ codigo notaAprobacion  <- cursos, nota >= notaAprobacion]

{-
getCursosAprobadosPorNota :: Estudiante -> NotaAprobacion -> [CodigoCurso]
getCursosAprobadosPorNota Estudiante _ _ _ cursos nota = getCursosAprobados cursos nota


getCursosAprobados :: Cursos -> Nota -> [CodigoCurso]
getCursosAprobados (Curso codigo _ _ notaCurso:cursos) nota = if nota >= notaCurso then [codigo] ++ getCursosAprobados cursos nota
                                                                else getCursosAprobados cursos nota
-}

getEstudiantesIngresadosSegunAnio :: [Estudiante] -> Anio -> [(NombreEstudiante,CI)]
getEstudiantesIngresadosSegunAnio estudiantes anio =
    [(nombreEstudiante, ci) | Estudiante nombreEstudiante ci anioEstudiante _ <- estudiantes, anioEstudiante == anio] 
