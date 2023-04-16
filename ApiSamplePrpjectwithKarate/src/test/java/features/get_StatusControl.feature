Feature:Get Status Control

  Background:
    * url 'https://petstore.swagger.io/v2'
    * header content-type = 'application/json'

  @get-failed-username
  Scenario:Found user with username
    And path '/user/abilici'
    When method GET

    * status 404
    * assert response.type == 'error'
    * assert response.message = 'User not found'



    

    










