
Feature: Registro e inicio de sesión
  Como usuario de la aplicación,
  quiero registrarme e iniciar sesión con mis datos personales en la aplicación
  para poder acceder a ella desde cualquier sitio.

  Scenario: El usuario se registra al ingresar a la aplicación por primera vez.
    Given el usuario instala la aplicación 
    When el usuario ingrese a la aplicación
    And seleccione el botón "Crear cuenta nueva",
    Y el usuario ingresa su correo electrónico 
    Y crea una contraseña
    Y crea su nombre de usuario
    Y selecciona el botón “Registrarse”,
    Then se le muestra el mensaje "Cuenta creada exitosamente".

    Examples:
    | Email                | Contraseña   | NombreUsuario   |
    | usuario1@example.com | password123  | user1           |
    | usuario2@example.com | abc123       | user2           |

  Scenario: El usuario ya tiene una cuenta creada en la aplicación.
    Dado que el usuario ya creó una cuenta anteriormente 
    When el usuario ingrese a la aplicación
    And seleccione el botón "Iniciar sesión",
    And ingrese su nombre de usuario y contraseña,
    Then el usuario ingresa a la aplicación.

    Examples:
    | NombreUsuario   | Contraseña   |
    | usuario1        | password123  |
    | user2           | abc123       |
    | miUsuario       | secreto456   |
    
#################################################################################

Feature: Disponibilidad en distintos sistemas operativos
  Como usuario de la aplicación,
  quiero que esta se pueda utilizar en diversos dispositivos y sistemas operativos
  para acceder a sus funcionalidades según mejor se me facilite.

  Scenario: El usuario utiliza la aplicación en un dispositivo Android.
    Given el usuario necesita acceder a la aplicación por medio de un dispositivo Android
    When ingrese a la aplicación Play Store
    And busque la aplicación "Chambea Ya"
    And seleccione la opción "Instalar",
    Then podrá acceder a la aplicación por medio de un dispositivo Android.

    Examples:
    | NombreApp        |
    | Chambea Ya       |
    | MiApp Favorita   |
    | App Android      |


  Scenario: El usuario utiliza la aplicación en un dispositivo IOS.
    Given el usuario necesita acceder a la aplicación por medio de un dispositivo IOS
    When ingrese a la aplicación App Store
    And busque la aplicación "Chambea Ya"
    And seleccione la opción "Instalar",
    Then podrá acceder a la aplicación por medio de un dispositivo IOS.

    Examples:
    | NombreApp        |
    | Chambea Ya       |
    | MiApp Favorita   |
    | App IOS      |
    
#################################################################################

Feature: Acceso a preguntas frecuentes
  Como usuario de la aplicación, 
  quiero acceder a las preguntas realizadas frecuentemente en una entrevista laboral 
  para tener una preparación previa.

  Scenario: El usuario accede a las preguntas más frecuentes de una entrevista laboral.
    Given el usuario desea conocer las preguntas en una entrevista,
    When seleccione la categoría de su preferencia,
    And seleccione la opción "Preguntas frecuentes",
    Then podrá visualizar las preguntas que se realizan con mayor frecuencia en una entrevista laboral.

    Examples:
    | Pregunta frecuente                |
    | ¿Podrías contarme un poco de ti? | 
    | ¿Cuáles son tus debilidades?     |

#################################################################################

Feature: Preguntas por categorías
  Como usuario de la aplicación, 
  quiero que las preguntas estén agrupadas según el tipo de empresa 
  para que estas sean acordes a mis preferencias y necesidades.

  Scenario: El usuario realiza la búsqueda de preguntas por categoría
    Given el usuario desea visualizar las preguntas ordenadas por categorías,
    When el usuario abra la aplicación en su dispositivo 
    And visualice las categorías en la página principal,
    And seleccione la categoría de su preferencia,
    And seleccione la opción "Conocer preguntas frecuentes",
    Then podrá visualizar las preguntas más frecuentes realizadas por categoría.

    Examples:
    | Categoría              |
    | Ventas                 |
    | Tecnología             |
    | Servicio al Cliente    |

#################################################################################

Feature: Simulación de una entrevista laboral
  Como usuario de la aplicación, 
  quiero simular una entrevista de trabajo para practicar y prepararme 
  para futuras entrevistas.

  Scenario: El usuario habilita cámara y micrófono.
    Given el usuario desea realizar una simulación de una entrevista laboral
    And no tiene habilitado los permisos de cámara y micrófono, 
    When el usuario seleccione la categoría de su preferencia,
    And seleccione la opción "Simular entrevista"
    Then aparecerán los mensajes "Permitir acceso al micrófono", "Permitir acceso a cámara".

  Examples:
  | Permiso de cámara | Permiso de micrófono  |
  | No habilitado     | No habilitado         |

  Scenario: El usuario realiza una simulación de una entrevista de trabajo
    Given el usuario desea realizar una simulación de una entrevista laboral
    And habilitó previamente los permisos de cámara y micrófono, 
    When el usuario seleccione la categoría de su preferencia,
    And seleccione la opción "Simular entrevista",
    Then el usuario podrá realizar la simulación de una entrevista.

  Examples:
  | Permiso de cámara | Permiso de micrófono  |
  | Habilitado        | Habilitado            |
