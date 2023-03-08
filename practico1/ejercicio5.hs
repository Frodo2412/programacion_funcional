type Fecha = (Int, Int, Int)

calcularEdad :: Fecha -> Fecha -> Int
calcularEdad (_, _, anio1) (_, _, anio2) = anio1 - anio2