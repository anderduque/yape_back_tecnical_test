#Author Anderson Duque
Feature: Updates a current booking with a partial payload
  Background:
    * url urlApi

  @Test-016 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar que se pueda realizar una modificacion parcial a una recerva
  Dado que el usuario posee una recerva activa y desea modificar el nombre o apellido 
  Cuando se envie la peticion se debe realizar la modificacion
  Entonces se puede verificar que el servicio funciona correctamente
    
    * path 'booking/546'
    * def apiRequest =
    """
    {
      "firstname" : "Jose",
      "lastname" : "Moreno"
    }
    """
    * headers var_headers

    Given request apiRequest
    When method patch
    Then status 200

    * print response
    * print responseTime

    And assert response.firstname == 'Jose'
    And assert response.lastname == 'Moreno'
    And assert response.totalprice == 111
    And assert response.depositpaid == true