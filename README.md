# R5 ToDo

## :book: Arquitectura y gestión de estados

![Texto alternativo](images/clean_architecture_graphic.jpg)

Para la arquitectura completa del proyecto exceptuando las Cloud Functions se usó una variante de Clean Architecture con el gestor de estados Provider y la inyección de dependencias para que el flujo sea coherente con el bajo acoplamiento de los modulos.

Por lo tanto los modulos se componen de las 3 capas mencionadas y una clase que está fuera de todas las clases que sería la inyección de dependencias.

lib<br>
└── modulo<br>
    ├── interface<br>
    │   ├── widgets<br>
    │   │   └── modulo_widget.dart<br>
    │   └── modulo_page.dart<br>
    ├── external<br>
    │   └── modulo_external.dart<br>
    ├── domain<br>
    │   ├── modulo_provider.dart<br>
    │   └── models<br>
    │       └── modulo_model.dart<br>
    └── modulo_injection.dart<br>

## :mag: Navegación

Siguiendo esta estructura a dónde se hace la navegación no es al Scaffold() como de costumbre si no a la inyección que tiene de hijo la clase del Scaffold()


##  Contacto
<a href="https://www.linkedin.com/in/julián-botero-montoya-246171226/" style="color: blue;" >
  <img src="https://cdn.jsdelivr.net/npm/simple-icons@v3.0.0/icons/linkedin.svg" alt="LinkedIn" width="30" />
</a>

<a href="mailto:julianboteromontoya113@gmail.com">
  <img src="https://simpleicons.org/icons/gmail.svg" alt="Correo electrónico" width="30" />
</a>

<a href="https://api.whatsapp.com/send?phone=573184526678">
  <img src="https://cdn.jsdelivr.net/npm/simple-icons@v3.0.0/icons/whatsapp.svg" alt="WhatsApp" width="30" />
</a>

:speech_balloon: Ese numero de Whatsapp es solo de Whatsapp no de llamadas el de llamadas es: **3027493759**
