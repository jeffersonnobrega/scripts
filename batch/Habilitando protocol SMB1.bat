rem ###################################################
rem Esse script tem por objetivo ativas o protocolo SMB1
rem Server Message Block (SMB) é um protocolo de compartilhamento de arquivos em rede que permite 
rem que os aplicativos de um computador leiam e gravem em arquivos e solicitem serviços dos programas do servidor em uma rede de computadores.

rem O script pode ser executado quando o Windows não faz o mapeamento dos drives mesmo com as permissões concedidas

rem Desenvolvido por Jefferson Nóbrega, qualquer alteração favor avisar.

Dism /online /Enable-Feature /FeatureName:SMB1Protocol /All