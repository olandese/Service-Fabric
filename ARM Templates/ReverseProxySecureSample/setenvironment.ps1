<#
    .SYNOPSIS
        Parse the key value string provided and adds the values to the machine enviromnental settings
        
        Example:
        .\setenvironment.ps1 -keyvaluepairs "key1=value1 `n key2=value2"
#>


Param (
 [string]$keyvaluepairs
)

$parsed = ConvertFrom-StringData $keyvaluepairs 

$parsed

foreach ($enum in $parsed.GetEnumerator())
{
  [Environment]::SetEnvironmentVariable($enum.Key, $enum.Value, "Machine") 
}

