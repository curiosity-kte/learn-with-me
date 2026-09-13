import requests
import json

# BaseUrl for NVD Queries
baseUrl = "https://services.nvd.nist.gov/rest/json/cves/2.0"

# Additional Parameters to add to the baseUrl to target specific CVEs
parameters = "?cveIds=CVE-2013-3900"

#print(baseUrl+parameters) Testing that the baseURL and Parameters send a correctly formed request

# Create response variable to hold results of requests.get
response = requests.get(baseUrl+parameters)

# Check response to make sure it was successful

if response.status_code == 200:
    # Load the response data as a json object
    json_data = response.json()

    # Use Json Dumps to print and format the data so it is readable
    print(json.dumps(json_data, indent=2))
else: 
    print (f"Error. Unable to load json due to {response.status_code} error.")