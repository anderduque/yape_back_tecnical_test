#Author Anderson Duque
Feature: A simple health check endpoint to confirm whether the API is up and running.
  Background:
    * url urlApi
    * path '/ping'

  @Test-018 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar la conexion al servidor
  Dado que como usuario quiero saber el estado de la conexion
  Cuando ejecuto el healtcheck debe mostrarme el mensaje de created
  Entonces se puede verificar que la conexion es correcta

    Given method get
    When status 201

    * print response
    * print responseTime

    And assert response == 'Created'