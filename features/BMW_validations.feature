Feature: Filter and validate AUTO1 BMW cars
  As a user
  I want to Access AUTO1 website and filter by BMW manufacture
  So I can view all BMW cars available

  @javascript
  Scenario: Filter by BMW and validate the results
    Given  I access our-cars page
     When  I filter by BMW manufacture
     Then  All results are from BMW cars
     And   Each car has a picture
     And   Each car has complete information
