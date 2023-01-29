#Auhtor Anderson Duque
Feature: Returns the ids of all the bookings that exist within the API. Can take optional query strings to search and return a subset of booking ids.
  Background:
    * url urlApi
    * path '/booking'

  @Test-002 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar que el servicio devuelva todos los Ids en la BD
  Dado que al ejecutar el servicio no se envian parametros en el path
  Cuando se ejecute el servico debe devolver todos los datos existentes
  Entonces podemos validar que la ejecucion es correcta

    * def someData = {'Content-Type':'application/json'}
    * headers someData

    Given method get
    When status 200

    * print response
    * print responseTime
    And match response..bookingid contains '#notnull'

  @Test-003 @RC-HP @SmokeTest
  Scenario: CP 02 - Validar que el servicio devuelva datos asociados a la busqueda por nombre y apellido
  Dado que al ejecutar el servicio se envian estos parametros en el path
  Cuando se ejecute el servico debe devolver todos los datos existentes
  Entonces podemos validar que la ejecucion es correcta

    * def someData = {'Content-Type':'application/json'}
    * headers someData
    * param firstname = 'Jane'
    * param lastname = 'Doe'

    Given method get
    When status 200

    * print response
    * print responseTime
    And match response..bookingid contains '#notnull'

  @Test-004 @RC-HP @SmokeTest
  Scenario: CP 03 - Validar que el servicio devuelva datos dentro del rango de fechas consultadas
  Dado que al ejecutar el servicio se envia checkin y checkout en el path
  Cuando se ejecute el servico debe devolver todos los datos existentes
  Entonces podemos validar que la ejecucion es correcta

    * def someData = {'Content-Type':'application/json'}
    * headers someData
    * param checkin = '2019-05-21'
    * param checkout = '2021-05-21'

    Given method get
    When status 200

    * print response
    * print responseTime
    And match response..bookingid contains '#notnull'
    And assert response[0].bookingid == '8'
    And assert response[1].bookingid == '5'