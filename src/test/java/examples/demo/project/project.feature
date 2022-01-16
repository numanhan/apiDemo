Feature: Numan

  Background:
    * url 'https://petstore.swagger.io/'

  Scenario: Get Pets By Status Scenario
    Given path 'v2/pet/findByStatus'
    And param status = 'pending'
    When method GET
    Then status 200

  Scenario: Create a new Pet
    * def requestBody =
    """
      {
        "id": 07071717,
        "category": {
          "id": 0,
          "name": "string"
        },
        "name": "Ghost",
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 0,
            "name": "string"
          }
        ],
        "status": "available"
      }
    """
    Given path 'v2/pet'
    And request requestBody
    When method POST
    Then status 200

  Scenario: Create a User
    * def requestBody =
    """
      {
        "id": 17174646,
        "username": "numanhanduran",
        "firstName": "numanhan",
        "lastName": "duran",
        "email": "numanhanduran@gmail.com",
        "password": "Qwert123!",
        "phone": "string",
        "userStatus": 0
      }
    """
    Given path 'v2/user'
    And request requestBody
    When method POST
    Then status 200
