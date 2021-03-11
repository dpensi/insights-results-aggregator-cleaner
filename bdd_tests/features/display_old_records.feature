Feature: Ability to display old records


  Scenario: Read old records from empty database
    Given the system is in default state
      And the database is named test
      And database user is set to postgres
      And database password is set to postgres
      And database connection is established
      And the database is empty
     When I prepare database schema
     Then I should find that all tables are empty
     When I run the cleaner to display all records older than 90 days
     Then I should see empty list of records
     When I delete all tables from database
     Then I should find that the database is empty


  Scenario: Read old records from empty database giving different time period
    Given the system is in default state
      And the database is named test
      And database user is set to postgres
      And database password is set to postgres
      And database connection is established
      And the database is empty
     When I prepare database schema
     Then I should find that all tables are empty
     When I run the cleaner to display all records older than 10 days
     Then I should see empty list of records
     When I delete all tables from database
     Then I should find that the database is empty
