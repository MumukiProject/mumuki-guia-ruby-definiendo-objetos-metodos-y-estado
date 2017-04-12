Miremos este método con más detenimiento: 

```ruby
def volar_en_circulos!
   @energia = @energia - 20
end
```

Lo que estamos haciendo es cambiar la energía de `Pepita`: pasa de su valor actual, `@energia` a ese valor, menos `20`. Por ejemplo, pasa de `100` a `80`. ¿Significa esto que el `100` _se transforma_ en un `80` ? :frowning: :thought_balloon:

No, en absoluto. En objetos trabajamos con **referencias**: `energia` (un atributo) es una referencia a un objeto, que inicialmente _apunta_  al objeto `100`.

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-definiendo-objetos-metodos-y-estado/master/assets/pepita-energia-100.png" width="300" />

Luego, la operación de asignación cambia ese apuntador, que pasa a referenciar al `80`.

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-definiendo-objetos-metodos-y-estado/master/assets/pepita-energia-80.png" width="300" />

En este caso se da una particularidad: el objeto asignado a la referencia es el resultado de **enviar el mensaje** `-` al objeto apuntado originalmente por la referencia: `energia = energia - 20`. Y como esto es tan común, se puede escribir de forma más compacta: `energia -= 20`

> Veamos si queda claro, reescribí los métodos en el editor para que usen cuando puedan el `-=`, y su contrapartida, el `+=`
