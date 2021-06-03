# Website :  http://dummy.restapiexample.com/api/v1

Feature: Verify Employee

  Background:
    Given url 'http://dummy.restapiexample.com/api/v1'

  @employee-test
  Scenario: Get all employees
    Given path 'employees'
    When method get
    Then status 200

  @employee-test
  Scenario: Get Single Employee
      Given path 'employee/1'
      When method get
      Then status 200
      # use def keyword fo the variable
      * def id = response.data.id
      Then match id == 1
      # contains example
      Then match response.data.employee_name ==  'Tiger Nixon'

  @employee-test
    Scenario: Delete employee by id
        Given path 'delete/1'
        When method DELETE
        Then status 200
        Then match response.message ==  'Successfully! Record has been deleted'
