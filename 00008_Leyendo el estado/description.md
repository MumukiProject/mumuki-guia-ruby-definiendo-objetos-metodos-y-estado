Antes te mostramos que si enviamos el mensaje `energia`, fallará:

```ruby
ム  Pepita.energia
pepita[energia=100] does not understand energia()
```

El motivo es simple: **los atributos NO son mensajes**. 

Entonces, ¿cómo podríamos consultar la energía de pepita? ¡Declarando un método, por supuesto!

```scala
object pepita {
   /*...atributos y método anteriores...*/
   
   method energia() {
      return energia
   }
}
```

> Ya agregamos el método `energía` por vos. Probá en la consola ahora las siguientes consultas: 
>
> * `ム Pepita.energia`
> * `ム Pepita.energia = 120`
> * `ム energia`

> 
> ¿Todas las consultas funcionan? ¿Por qué?
