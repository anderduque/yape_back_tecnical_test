#Author Anderson Duque
Feature: Creates a new booking in the API
  Background:
    * url urlApi
    * path '/booking'
    * def data = read('classpath:com/back/yape/qa/resources/booking/createbooking/dataTest.json')

  @Test-007 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar que se pueda crear una nueva recerva a traves de la Api
  Dado que se envian todos los datos del cliente y valores requeridos
  Cuando se realice la consulta debe crearlo exitosamente
  Entonces podemos validar que funciona correctamente

    * json dataTest = data[datajson].sc01
    * def valueOfRecerve = dataTest.totalprice
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/createbooking/request.json')

    Given request apiRequest
    When method post
    Then status 200

    * print response
    * print responseTime

    And assert response.booking.firstname == 'Anderson'
    And assert response.booking.lastname == 'Duque'
    And assert response.booking.totalprice == valueOfRecerve
    * def idBooking = response.bookingid

  @Test-008 @RC-HP @SmokeTest
  Scenario: CP 02 - Validar error controlado del servicio al enviar firtsname en null
  Dado que se envia el campo en null
  Cuando se realice la consulta debe generar un error controlado
  Entonces podemos validar que funciona correctamente

    * json dataTest = data[datajson].sc02
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/createbooking/request.json')

    Given request apiRequest
    When method post
    Then status 500

    * print response
    * print responseTime
    And assert response == 'Internal Server Error'

  @Test-009 @RC-HP @SmokeTest
  Scenario: CP 03 - Validar error controlado del servicio al enviar lastname en null
  Dado que se envia el campo en null
  Cuando se realice la consulta debe generar un error controlado
  Entonces podemos validar que funciona correctamente

    * json dataTest = data[datajson].sc03
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/createbooking/request.json')

    Given request apiRequest
    When method post
    Then status 500

    * print response
    * print responseTime
    And assert response == 'Internal Server Error'


  @Test-010 @RC-HP @SmokeTest
  Scenario: CP 04 - Validar error controlado del servicio al enviar totalprice en null
  Dado que se envia el campo en null
  Cuando se realice la consulta debe generar un error controlado
  Entonces podemos validar que funciona correctamente

    * json dataTest = data[datajson].sc04
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/createbooking/request.json')

    Given request apiRequest
    When method post
    Then status 500

    * print response
    * print responseTime
    And assert response == 'Internal Server Error'

  @Test-011 @RC-HP @SmokeTest
  Scenario: CP 05 - Validar error controlado del servicio al enviar depositpaid en null
  Dado que se envia el campo en null
  Cuando se realice la consulta debe generar un error controlado
  Entonces podemos validar que funciona correctamente

    * json dataTest = data[datajson].sc05
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/createbooking/request.json')

    Given request apiRequest
    When method post
    Then status 500

    * print response
    * print responseTime
    And assert response == 'Internal Server Error'
