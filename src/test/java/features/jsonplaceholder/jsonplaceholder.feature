Feature: Validate payload
  Scenario: Success Response
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method GET
    Then status 200
    And print 'Respuesta del servicio: ',response

    Scenario: Payload not found
      Given url 'https://jsonplaceholder.typicode.com/users/400'
      When method GET
      Then status 404
      And print 'Respuesta del servicio',response