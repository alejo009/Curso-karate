Feature: Validate Created Users

  Background:
    * url 'https://gorest.co.in/'

      Scenario: Get Details of one user filtering data
        Given path 'public/v2/users'
<<<<<<< HEAD
        And param email = 'arora_akshaj@daugherty.example'
=======
        And param email = 'kaniyar_bharadwaj@kertzmann.test'
        And param status = 'active'
>>>>>>> b7b623d7c7af10e5857736883ae8de033b2001f1
        When method GET
        Then status 200
        And print 'Response',response
        And def usersResponse = response
<<<<<<< HEAD
        And match usersResponse[*].email contains ["arora_akshaj@daugherty.example"]
        And match usersResponse[*].name contains ["Akshaj Arora"]
=======
        And match usersResponse[*].email contains ["kaniyar_bharadwaj@kertzmann.test"]
        And match usersResponse[*].name contains ["Bharadwaj Kaniyar"]
        And match usersResponse[*].status contains ["active"]
>>>>>>> b7b623d7c7af10e5857736883ae8de033b2001f1
