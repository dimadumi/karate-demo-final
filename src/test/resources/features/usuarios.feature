Feature: Usuarios API
  @regression
  Scenario: Obtener usuario 2

    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200

    * print 'GET:', response
  @regression
  Scenario: Obtener usuario 3

    Given url 'https://reqres.in/api/users/3'
    When method GET
    Then status 200

    * print 'GET:', response
  @solo
  Scenario: Crear usuario

    Given url 'https://reqres.in/api/users'

    And request
      """
      {
        "name": "Diana",
        "job": "QA"
      }
      """

    When method POST

    Then status 201

    * print 'POST:', response

  @solo2
  Scenario: Crear usuario 2

    Given url 'https://reqres.in/api/users'

    And request
      """
      {
        "name": "Piedad",
        "job": "QA"
      }
      """

    When method POST

    Then status 201

    * print 'POST:', response
  @regression
  Scenario: Eliminar usuario

    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204