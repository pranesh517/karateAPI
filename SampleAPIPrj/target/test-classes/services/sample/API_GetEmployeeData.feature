Feature: To Verify the Employee Functionality

Background:
Given url baseUrl
And def createEmployeeReq = read('data/standardCreateEmployeeReq.json')
And def callingJavaMethod = Java.type('com.utils.GenerateUtility')

Scenario: SampleTest123: To Verify Get Employee API
#--------------- Generating New Employee -----------------#
Given def employeeName = callingJavaMethod.generateRandomName();
And set createEmployeeReq.name = employeeName
And header Content-Type = "application/json"
And path create
And request createEmployeeReq
When method POST
Then status 200
And match response.name == employeeName
And def employeeId = response.id
#--------------- Getting New Employee Details -----------------#
Given path employee+'/'+ employeeId
And header Content-Type = "application/json"
When method GET
Then status 200
And match response.id == employeeId
And match response.employee_name == employeeName