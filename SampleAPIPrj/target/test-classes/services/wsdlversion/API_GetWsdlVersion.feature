Feature: To get the WSDAL version.

Background:
Given url wsdalUrl
And header Content-Type = "application/json"

Scenario: API_001: To Get the WSDAL version back 
#--------------- Get the WSDAL Version -------------#
Given path getVersion
When method GET
Then status 200
#And print response
And match response == '"10.1 build 39778"'