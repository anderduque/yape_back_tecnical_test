#Author Anderson Duque
Feature: Returns the ids of all the bookings that exist within the API. Can take optional query strings to search and return a subset of booking ids.
  Background:
    * url urlApi

  @Test-017 @RC-HP @SmokeTest
  Scenario: CP 01 - Validar que se pueda eliminar una recerva luego de crearla
  Dado que creo una recerva y luego quiero eliminarla
  Cuando ejecute el servicio se debe eliminar la recerva
  Entonces podemos validar que el servicio funciona correctamente

    * def createBooking = call read('classpath:com/back/yape/qa/Booking/createbooking.feature@Test-007')
    * def idBooking = createBooking.idBooking
    * print idBooking
    * string apiPath = '/booking/' + idBooking
    * headers var_headers
    * path apiPath

    Given method delete
    When status 201

    * print response
    * print responseTime

    And assert response == 'Created'
