Feature: putStatusControl

  Background:
    * url 'https://petstore.swagger.io/v2'
    * header content-type = 'application/json'
    * def jsonPath = '../Json/'

  @put-user-with-username
  Scenario : Put user with username

    * def jsonBody = read(jsonPath + 'userInfo.json')
    * jsonBody.username = 'abilici2'
    * jsonBody.firstName = 'aysel'
    * jsonBody.lastName = 'bilici'
    * jsonBody.email = 'a.bilici@sdfdsf'
    * jsonBody.password = 'abc'
    * jsonBody.phone = '1111111'
    * jsonBody.userStatus = '1'

    And path '/user/deneme'
    * request jsonBody
    When method PUT

    * status 200
    * print response