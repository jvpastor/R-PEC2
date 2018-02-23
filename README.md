# R-PEC2_1
Ejercicio 1: Con el conjunto de datos titanic.csv de la práctica 1:
1. Representar, en un mismo gráfico, dos histogramas de la variable age,
uno para los pasajeros con sexo masculino y otro para los pasajeros
con sexo femenino. En caso de que se solapen los histogramas, usar
colores con transparencias.
2. Examinar la variable name, ¿qué otra variable podemos extraer de la
misma? Extraer los distintos valores de esa variable.
3. Crear una nueva variable title con los valores Master (hombre soltero),
Miss (mujer soltera), Mr. (hombre casado), Mrs. (mujer casada) y
Otro a partir de la variable nombre. Es importante tener en cuenta
que el título Miss está en ocasiones codificado con su abreviatura en
frances Mlle (mademoiselle) y lo mismo ocurre con Mrs., que en ocasiones
aparece como Ms. o Mme (madame).
4. Explorar la relación entre las variables age y la nueva variable title
mediante un boxplot para cada uno de los valores de la misma. ¿Tienen
alguna relación?
5. Ver la relación entre la supervivencia la nueva variable title con un
gráfico de barras. En el caso del valor Otros de la variable title,
¿nos proporciona este alguna información sobre la supervivencia? ¿A
qué se debe?
6. Corregir el problema anterior con el grupo Otros dividiendo el mismo
en dos nuevos títulos.

# R-PEC2_2
Ejercicio 2: Con el conjunto de datos diabetes.data:
1. Cargar los datos en un dataframe de R y eliminar los missing values,
que están codificados como -9999.00.
2. Ver el tipo de cada una de las variables y realizar un análisis estadístico
de las variables numéricas: calcular la media, varianza, rangos, etc.
¿Tienen las distintas variables rangos muy diferentes?
3. Hacer un gráfico de cajas donde se pueda ver la información anterior de forma gráfica.
4. Calcular la media para las filas que tienen SEX=M y la media para las filas que
tienen SEX=F, utilizando la función tapply.
5. Calcular la correlación de todas las variables numéricas con la variable Y.
6. Realizar un gréfico de dispersión para las variables que tienen mayor y
menor correlación con Y.
7. Transformar la variable SEX, que es un factor, en una variable numérica utilizando,
por ejemplo, la codificación M=1 y F=2.
8. Definimos los outliers como los elementos de los datos para los que cualquiera de
las variables (numéricas) está por encima o por debajo de la mediana más/menos 3 veces
el MAD (Median Absolute Deviation). Identificar estos outliers y quitarlos.
9. Separar el conjunto de datos en dos subconjuntos disjuntos de forma
aleatoria, el primero conteniendo un 70% de los datos y el segundo un 30%.
10. Escalar los datos para que tengan media 0 y varianza 1, es decir,
restar a cada variable numérica su media y dividir por la desviación
típica. Calcular la media y desviación en el conjunto grande (70% de
los datos), escalarlo, y utilizar esa mismas medias y desviaciones para
escalar el conjunto de pequeño (30% de los datos).
