[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$webSiteName
)

$ErrorActionPreference = "Stop";

Import-Module WebAdministration

$ilw_site = Get-Item "IIS:\Sites\$webSiteName"
$ilw_logdirectory = "{0}\w3svc{1}\*.log" -f $ilw_site.logfile.directory, $ilw_site.id
$ilw_logdirectory = [System.Environment]::ExpandEnvironmentVariables($ilw_logdirectory)
$ilw_lastLogFile = gci $ilw_logdirectory | sort LastWriteTime | select -last 1
$ilw_lastLogFileContents = Get-Content $ilw_lastLogFile

while (1)
{
    start-sleep -Seconds 1

    $ilw_recentLogFile = gci $ilw_logdirectory | sort LastWriteTime | select -last 1
    $ilw_logFileContents = Get-Content $ilw_recentLogFile
    if ($ilw_logFileContents.Length -gt $ilw_lastLogFileContents.Length)
    {
        for ($i=$ilw_lastLogFileContents.Length-1; $i -lt $ilw_logFileContents.Length; $i++)
        {
            Write-Host $ilw_logFileContents[$i]
        }
        $ilw_lastLogFile = $ilw_recentLogFile
        $ilw_lastLogFileContents = $ilw_logFileContents
    }
}