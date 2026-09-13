Import-Module MsrcSecurityUpdates

$csvdoc = Get-MsrcCvrfDocument -ID "2026-Sep" 

$csvdoc | Get-MsrcCvrfAffectedSoftware | Where-Object {$_.Severity -EQ "Critical" -and $_.FullProductName -like "Windows Server*" -and $_.FullProductName -notlike "*Server core*"} | Sort-Object CVE, FullProductName -Unique |Select-Object FullProductName, CVE, Impact, RestartRequired, CvssScoreSet | Out-GridView

