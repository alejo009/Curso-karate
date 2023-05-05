Feature: Validate Created Users

  Background:
    * url 'https://gorest.co.in/'

      Scenario: Get Details of one user filtering data
        Given path 'public/v2/users'
        And param email = 'kaniyar_bharadwaj@kertzmann.test'
        And param status = 'active'
        When method GET
        Then status 200
        And print 'Response',response
        And def usersResponse = response
        And match usersResponse[*].email contains ["kaniyar_bharadwaj@kertzmann.test"]
        And match usersResponse[*].name contains ["Bharadwaj Kaniyar"]
        And match usersResponse[*].status contains ["active"]