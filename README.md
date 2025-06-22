# Ingenieria de Software - 1er Parcial - 1C2025

Hay 3 tests que no pasan (25, 32 y 34) pero segun lo que pude ver, esto no es debido a un error de implementación. Sino a que estos tests esperan recibir la dirección en que pateo el Delantero en lugar de la dirección a donde fue la pelota.

El problema ocurre por lo siguiente:

1- Al patear a matar hacia un angulo la direccion de remate se desvia a altura 1.
2- Ademas, si la pelota pateada a matar es una playera, y no se pateo a un angulo, se suman 2 a la altura de remate.

Ahora... yo creo que los calculos en la condicion 2 deberian hacerse en base a la direccion que pude ser actualizada en la condicion 1, pues sino ¿para que esta la condicion 1?

Es por esto que los test fallan.
