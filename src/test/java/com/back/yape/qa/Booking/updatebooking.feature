#Author Anderson Duque
Feature: Updates a current booking
  Background:
    * url urlApi
    * def data = read('classpath:com/back/yape/qa/resources/booking/updatebooking/dataTest.json')

  @Test-011 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar que se pueda editar una recerva
  Dado que como usuario realicé una recerva que deseo modificar
  Cuando ingreso todos los nuevos datos el servicio debe generarme la actualizacion
  Entonces se puede realizar el update correctamente

    * def id = 456
    * json dataTest = data[datajson].sc01
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/updatebooking/request.json')
    * print apiRequest
    * string apiPath = '/booking/' + id
    * path apiPath

    Given request apiRequest
    When method put
    Then status 200

    * print response
    * print responseTime

    And assert response.firstname == 'Anderson'
    And assert response.lastname == 'Duque'
    And assert response.totalprice == '1110'

  @Test-012 @RC-EXC
  Scenario: CP 02 - Validar bad request al enviar campo firtsname null
  Dado que al enviar valor requerido null en el servicio
  Cuando responda debe devolver un error asociado al campo
  Entonces podemos validar que el servicio maneja las excepciones correctamente

    * json dataTest = data[datajson].sc02
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/updatebooking/request.json')
    * print apiRequest
    * path apiPath = '/booking/566'


    Given request apiRequest
    When method put
    Then status 400

    * print response
    * print responseTime
    And assert response == 'Bad Request'


  @Test-013 @RC-EXC
  Scenario: CP 03 - Validar bad request al enviar campo lastname null
  Dado que al enviar valor requerido null en el servicio
  Cuando responda debe devolver un error asociado al campo
  Entonces podemos validar que el servicio maneja las excepciones correctamente

    * json dataTest = data[datajson].sc03
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/updatebooking/request.json')
    * print apiRequest
    * path apiPath = '/booking/566'


    Given request apiRequest
    When method put
    Then status 400

    * print response
    * print responseTime
    And assert response == 'Bad Request'

  @Test-014 @RC-EXC
  Scenario: CP 04 - Validar bad request al enviar campo totalprice null
  Dado que al enviar valor requerido null en el servicio
  Cuando responda debe devolver un error asociado al campo
  Entonces podemos validar que el servicio maneja las excepciones correctamente

    * json dataTest = data[datajson].sc04
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/updatebooking/request.json')
    * print apiRequest
    * path apiPath = '/booking/566'


    Given request apiRequest
    When method put
    Then status 400

    * print response
    * print responseTime
    And assert response == 'Bad Request'


  @Test-015 @RC-EXC
  Scenario: CP 05 - Validar bad request al enviar campo depositpaid null
  Dado que al enviar valor requerido null en el servicio
  Cuando responda debe devolver un error asociado al campo
  Entonces podemos validar que el servicio maneja las excepciones correctamente

    * json dataTest = data[datajson].sc04
    * headers var_headers
    * def apiRequest = read('classpath:com/back/yape/qa/resources/booking/updatebooking/request.json')
    * print apiRequest
    * path apiPath = '/booking/566'


    Given request apiRequest
    When method put
    Then status 400

    * print response
    * print responseTime
    And assert response == 'Bad Request'




