<#
    .SYNOPSIS
        Parse the key value string provided and adds the values to the machine enviromnental settings
        
        Example:
        .\setenvironment.ps1 -keyvaluepairs "key1=value1|key2=value2"
#>


Param (
 [string]$keyvaluepairs
)


# Create hashtable
$dictionary = @{}
# Split input string into pairs
$keyvaluepairs.Split('|') |ForEach-Object {
    # Split each pair into key and value
    $key,$value = $_.Split('=')
    # Populate $Dictionary
    $dictionary[$key] = $value
}


foreach ($enum in $dictionary.GetEnumerator())
{
  [Environment]::SetEnvironmentVariable($enum.Key, $enum.Value, "Machine") 
}

