Feature:Delete Status Control

  Background:
    * url 'https://petstore.swagger.io/v2'
    * header content-type = 'application/json'

    @delete-user-with-username
    Scenario: Delete user with username
      And path '/user/test'
      When method DELETE

      * status 200
      * print response.message='test'