function Edit-Module{
    [CmdletBinding()]
    Param([string]$name)
    
    $module=get-module -Name $name -ListAvailable
    if($module){
        psedit $module.RootModule
    } else {
        write-error "Module $name not found!"
    }
}

function Set-ISELocation{
    [CmdletBinding()]
    $folder=$PSISE.CurrentFile.FullPath
    set-location (Split-Path -Path $folder -Parent)
}