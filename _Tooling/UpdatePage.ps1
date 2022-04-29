$file = gci (Join-Path $PSScriptRoot "../_Outputs") | sort LastWriteTime | select FullName -last 1
$newPath = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot "../docs/index.html"))
Copy-Item $file.FullName $newPath