Feature: As a potential client i need to search in google to find a web site

  @Smoke
  Scenario Outline: test based on search criteria
    Given The client is on google page
    When The client search for word  "<Criteria>"
    Then The client verify that results are shown properly
    Examples:
      | Criteria        |
      | Crowdar Academy |
      | Calidad         |
      | Software        |
      | Testing         |