$baseURL = "https://services.nvd.nist.gov/rest/json/cves/2.0"
$cveID = "CVE-2013-3900"

$fullURL = "$($baseURL)?cveID=$cveID"

$response = Invoke-RestMethod -Uri $fullURL

$response.vulnerabilities.cve | Format-List *