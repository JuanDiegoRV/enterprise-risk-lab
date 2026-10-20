$projectRoot = Split-Path -Parent $PSScriptRoot
$env:JAVA_HOME = Join-Path $projectRoot '.tools\jdk'
$env:MAVEN_HOME = Join-Path $projectRoot '.tools\maven'
$env:NODE_HOME = Join-Path $projectRoot '.tools\node'
$env:GIT_HOME = Join-Path $projectRoot '.tools\git'
$env:PATH = "$env:NODE_HOME;$env:MAVEN_HOME\bin;$env:JAVA_HOME\bin;$env:GIT_HOME\cmd;$env:PATH"
Write-Host "Entorno portable activado para esta terminal."
node --version
java -version
mvn --version
git --version
