
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
