Feature: Create users
  Background:
    * url 'https://gorest.co.in/'
    * header Authorization = 'Bearer 40e9553b03e87d3d4cd4902cdc9798f98fe9a47850b69e5dd38573447035a91a'

    Scenario: Succesful creation
      Given path 'public/v2/users'
      And request read('body.json')
      When method POST
      Then status 201
      And print 'Response',response
      And match response == read('expectedvalues.json')
      And match response == read('expectedformats.json')
