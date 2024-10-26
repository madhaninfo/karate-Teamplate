Feature: NFC Detail API 

Background:

# Define the base URL for your API


# Hardcoded credentials for Basic Auth
# * def username = 'By3I7fX' // Replace with your actual username
# * def password = 'platform' // Replace with your actual password

# * def authHeader = 'Basic ' + java.util.Base64.getEncoder().encodeToString((username + ':' + password).getBytes())
# * header Authorization = authHeader
# * header Content-Type = 'application/json'

# Print the Authorization header for debugging
# * print 'Authorization header:', authHeader



#   karate.configure('headers', { Authorization: config.authHeader });

#   * header Authorization = 'Bearer '+ 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtZXJjaGFudF9jb2RlIjoiUldQSSIsImlhdCI6MTcyMTMwMTA4MiwiZXhwIjoxNzIxMzI5ODgyfQ.uINw9FQGlrVtTOn5GhisCh1zU3WIUDOZMVVSNjFpbBU'
#   * header Content-Type = 'application/json'


Scenario: invalid method
  # * def csvData = read('classpath:examples/users/Serial.csv')

 Given url Merchant_Signup_API
* print Merchant_Signup_API
Given text query = 
"""
query {
    EmailValidation(query: {
       UserEmail:"alexhawkins.mt@outlook.com"
    }) {
        IsAvailable
        Message
    }
}

"""

And request { query: '#(query)' }
When method get
Then status 422
* print response

Scenario: invalid url
  # * def csvData = read('classpath:examples/users/Serial.csv')

 Given url Merchant_Signup_API_invalidUrl
* print Merchant_Signup_API
Given text query = 
"""
query {
    EmailValidation(query: {
       UserEmail:"alexhawkins.mt@outlook.com"
    }) {
        IsAvailable
        Message
    }
}

"""

And request { query: '#(query)' }
When method post
Then status 404
* print response


Scenario: invalid Token
  # * def csvData = read('classpath:examples/users/Serial.csv')

 Given url Merchant_Signup_API
* print Merchant_Signup_API
Given text query = 
"""
query {
    EmailValidation(query: {
       UserEmail:"alexhawkins.mt@outlook.com"
    }) {
        IsAvailable
        Message
    }
}

"""

And request { query: '#(query)' }
When method post
Then status 200
* print response

Scenario: Remove Body data
  # * def csvData = read('classpath:examples/users/Serial.csv')

 Given url Merchant_Signup_API
* print Merchant_Signup_API
Given text query = 
"""


"""

And request { query: '#(query)' }
When method post
Then status 422
* print response


 