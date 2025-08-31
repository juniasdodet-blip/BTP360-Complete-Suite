@echo off
echo Installation de BTP360...
echo.

REM Vérifier si Office est installé
reg query "HKLM\SOFTWARE\Microsoft\Office\16.0\Common\InstallRoot" /v Path >nul 2>&1
if %errorlevel% neq 0 (
    echo Microsoft Office 2016 ou ultérieur n'est pas installé.
    pause
    exit /b 1
)

REM Créer les dossiers nécessaires
if not exist "..\Database" mkdir "..\Database"
if not exist "..\Backups" mkdir "..\Backups"
if not exist "..\Exports" mkdir "..\Exports"

echo Structure de dossiers créée.
echo.
echo Veuillez maintenant:
echo 1. Créer la base de données Access à partir des scripts SQL
echo 2. Configurer les connexions dans le fichier Excel
echo.
pause
