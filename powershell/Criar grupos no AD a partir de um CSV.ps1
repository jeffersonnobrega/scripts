Enter-PSSession -ComputerName NomeServidor -Credential dominio\usuario

$permissions = Import-Csv "C:/temp/exemplo.csv"


$permissions | foreach {
    
New-ADGroup -Name $_.Name -SamAccountName $_.SamAccountName -GroupCategory Security -GroupScope Global -DisplayName $_.DisplayName -Path "OU=xxxx,OU=xxx,DC=dominio,DC=com,DC=br" -Description "Grupo de acesso ao diretório de rede"}


