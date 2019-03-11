:: Désactivation des services Impero sur l'ordinateur
net stop ImperoGuardianSVC
net stop ImperoClientSVC


::Supression de la clé qui force l'installation du plugin Impero sur chrome
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist /v 1 /f

::Ajout de la clé registre qu permet d'avoir accès au Task Manager intégré à Chrome
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome\ /v TaskManagerEndProcessEnabled /d true /f


::Modification de la valeur pour pouvoir passer en mode incognito dans chrome (désactivé par défaut par le CPLN)
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome\ /v IncognitoModeAvailability /d true /f


::Modification de la valeur pour pouvoir activer la synchronisation de Chrome (Avec un compte google par exemple)
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome /v SyncDisabled /d false /f 
pause