#Author Anderson Duque
Feature: Feature para crear token
  Background:
    * url urlApi
    * path '/auth'
    * def data = read('classpath:com/back/yape/qa/Auth/dataTest.json')

  @Test-001 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar que se pueda crear correctamente el token
  Dado un request valido y con datos correctos
  Cuando ejecuto el servicio me responde correctamente
  Entonces se puede validar que la respuesta es exitosa

    * json dataTest = data[datajson].sc01
    * def someData = {'Content-Type':'application/json'}
    * headers someData
    * def apiRequest = read('classpath:com/back/yape/qa/Auth/request.json')

    Given request apiRequest
    Then method get
    When status 200

    * print response
    * print responseTime
    And match response.token contains '#notnull'