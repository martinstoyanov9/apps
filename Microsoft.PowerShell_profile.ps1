function Do-ActualThing {
    # do actual thing
   
    & C:\Users\martin.stoyanov\AppData\Local\Programs\Opera\launcher.exe
    & C:\WINDOWS\system32\dsa.msc
    & 'C:\Program Files (x86)\IBM\Lotus\Notes\notes.exe'
    & 'C:\Users\martin.stoyanov\Desktop\Outlook 2016.lnk'

    }

Set-Alias apps Do-ActualThing

function Get-Temperature {
    $t = Get-WmiObject MSAcpi_ThermalZoneTemperature -Namespace "root/wmi"
    $returntemp = @()

    foreach ($temp in $t.CurrentTemperature)
    {


    $currentTempKelvin = $temp / 10
    $currentTempCelsius = $currentTempKelvin - 273.15

    $currentTempFahrenheit = (9/5) * $currentTempCelsius + 32

    $returntemp += $currentTempCelsius.ToString() + " C : " + $currentTempFahrenheit.ToString() + " F : " + $currentTempKelvin + "K"  

    
    }
    return $returntemp
}

Set-Alias gt Get-Temperature

