Feature: as a user, I want to be able to see the title without http://paulswilliams.me.uk available 

  Scenario: As a user, with the website unavailable, I want to be able to see it.
    When I GET "/"
    And I should receive the JSON:
    """
    { "title" : "Paul S Williams :: Welcome" }
    """