$source="C:\temp\source"
$target="C:\temp\target"

$files = "$source\test.txt"

$i = 0
function get-sleep{
    Start-Sleep -Seconds 5
    
}

while($i -eq 0)
{
    $filefound = $true
    foreach ($file in $files)
    {

       if($filefound -eq $false)
       {

       }
       else
       {

            if(Test-Path $file)
            {
                $filefound = $true
            }
            else
            {
                $filefound = $false
                "$file not found"
                get-sleep
            }
        }


    }
    
    if($filefound -eq $true)
    {
        $i = 1

    }

}

######### Your operation comes here ##########
Move-Item $files $target 
