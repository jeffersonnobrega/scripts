## script power shell para obter permissões de segurança de diretórios a partir de um arquivo CSV e coloca essas permissões em uma planilha
## Criado para o processo de migração de arquivos, mas pode ser usado para o dia dia, basta comentar a linha de import e substituir a variável $path pelo caminho do diretório que deseja;
## qualquer dúvida quanto a execução ou alteração pode falar com Jefferson Nóbrega - GERET

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# EFETUANDO LOGIN NO SERVDIRO DE DOMÍNIO

#Enter-PSSession -ComputerName nomeservidor_de_dominio_do_AD -Credential dominio\usuario

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#IMPORTANDO OS DADOS DA PLANILHA PARA A VARIÁVEL $path

# a planilha precisa está salva em formato UTF-8 e CSV
# coloque entre as aspas o caminho completo de onde a planilha está.

$path = Import-Csv "caminho do arquivo a ser exportado"

#---------------------------------------------------------------------------------------------------------------------------------------------------------------

$out = $path | foreach { 
$_.Path
(Get-ACL -Path $_.Path).Access | Select-Object -Property IdentityReference, FileSystemRights } 
$out | out-file -filepath  "caminho de destino" -Encoding ASCII -Width 110

#não esqueça de alterar o caminho de destino da exportação do arquivo.

#abaixo alguns objetos que podem ser usados na seleção a depender do que necessita.
#Format-Table IdentityReference #, FileSystemRights, AccessControlType, IsInherited, InheritanceFlags -AutoSize