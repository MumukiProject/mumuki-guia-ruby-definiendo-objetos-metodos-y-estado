Volar hacia un cierto punto no es tarea tán fácil: en realidad, `Pepita` pierde tanta energía como la mitad de kilómetros que tenga que recorrer.

Aunque en el mapa real no sea así, imaginaremos que las ciudades están ubicadas en línea recta, para facilitar los cálculos:

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-definiendo-objetos-metodos-y-estado/master/assets/ciudades.png" width="400" alt="Tres círculos en una recta horizontal. El primero es Buenos Aires en el kilómetro cero, el segundo es Oberá en el kilómetro mil cuarenta y el tercer es Iruya en el kilómetro mil setecientos diez"/>

Por ejemplo, si `Pepita` está en `Obera` y quiere volar a `Iruya` debe recorrer 670 kilómetros, por lo que perderá 335 unidades de energía. :sweat:

¿Y si `Pepita` está en `Iruya` y quiere volar a `Obera`? :thinking: ¡También! La distancia entre dos ciudades siempre es un valor positivo :heavy_plus_sign:. Para resolver esto contamos con el mensaje `abs` que entienden los números y nos retorna su valor absoluto:

``` ruby
ム 17.abs
=> 17

ム (-17).abs
=> 17

ム (1710 - 1040).abs
=> 670

ム (1040 - 1710).abs
=> 670

ム (1040 - 1710).abs / 2
=> 335
```

> Sabiendo esto: 
> 
> * Definí el objeto que representa a `BuenosAires`.
> * Definí en `Obera`, `Iruya` y `BuenosAires` un método `kilometro` que retorne la altura a la que se encuentran, según el esquema. ¡Cuidado! No tenés que guardar el valor en un atributo `@kilometro` sino simplemente retornar el número que corresponde.
> * Modificá el método `volar_hacia!` de `Pepita` para hacer el cálculo de la distancia y alterar su energía. Para acceder al kilometro inicial de `Pepita` tenes que hacer `@ciudad.kilometro`.

Para que el ejemplo tenga sentido, vamos a hacer que `Pepita` arranque con la energía en 1000. :muscle: