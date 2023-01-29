#Auhtor Anderson Duque
Feature: Returns a specific booking based upon the booking id provided
  Background:
    * url urlApi

  @Test-005 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar que el servicio devuelva la informacion realacionada al id 200
  Dado que al ejecutar el servicio se envia el id 200 en el path
  Cuando se ejecute el servico debe devolver todos los datos existentes para este Id
  Entonces podemos validar que la ejecucion es correcta

    * def id = 209
    * string apiPath = '/booking/' + id
    * headers var_headers

    Given path apiPath
    When method get
    Then status 200

    * print response
    * print responseTime

    And assert response.firstname == 'John'
    And assert response.lastname == 'Smith'
    And assert response.totalprice == 111
    And assert response.depositpaid == true

  @Test-006 @RC-EXC @SmokeTest
  Scenario: CP 02 - Validar error controlado del servicio al no pasarle paramentro en el Path
  Dado que al ejecutar el servicio no se envian parametros en el path
  Cuando se ejecute el servico debe devolver error relacionado a la ejecucion
  Entonces podemos validar que el error es correcto

    * string apiPath = '/booking/:id'
    * headers var_headers

    Given path apiPath
    When method get
    Then status 404

    * print response
    * print responseTime

    And assert response == 'Not Found'
