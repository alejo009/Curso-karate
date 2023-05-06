Feature: Validate Created Users

  Background:
    * url 'https://gorest.co.in/'

      Scenario: Get Details of one user filtering data
        Given path 'public/v2/users'
        And param email = 'arora_akshaj@daugherty.example'
        When method GET
        Then status 200
        And print 'Response',response
        And def usersResponse = response
        And match usersResponse[*].email contains ["arora_akshaj@daugherty.example"]
        And match usersResponse[*].name contains ["Akshaj Arora"]