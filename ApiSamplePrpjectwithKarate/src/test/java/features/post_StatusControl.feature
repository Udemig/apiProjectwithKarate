Feature: postStatusControl

  Background:
    * url 'https://petstore.swagger.io/v2'
    * header content-type = 'application/json'
    * def jsonPath = '../Json/'

  @create-user
  Scenario : Create user

    * def jsonBody = read(jsonPath + 'userInfo.json')
    * jsonBody.username = 'abilici2'
    * jsonBody.firstName = 'aysel'
    * jsonBody.lastName = 'bilici'
    * jsonBody.email = 'a.bilici@sdfdsf'
    * jsonBody.password = 'abc'
    * jsonBody.phone = '1111111'
    * jsonBody.userStatus = '1'

    And path '/v2/user'
    * request jsonBody
    When method POST

    * status 200
    * print response

  @not-create-order
  Scenario: Not Create order

    And path '/v2/store/order'
    * request null
    When method POST

    * status 400
    * print response
    * assert response.type == 'error'
    * print response.message= 'No data'





