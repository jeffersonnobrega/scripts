Enter-PSSession -ComputerName nomeServidor -Credential dominio\usuario

Add-ADGroupMember -Identity "Nome Grupo de Destino" -Members (Get-ADGroupMember -Identity "Nome Grupo de Origem" -Recursive)