# Description : Script PowerShell pour copier les données du lecteur D:\ vers Google Drive
# Auteur : Samuel P
# Date de création : 2024.12.27
# Version : 1.0.0

#Définir les chemins source et destination
$SourcePath = "D:\Sauvegarde" #Dossier source sur le serveur
$DrivePath = "\\Vboxsvr\g_drive\Mon Drive\Openbank" #Dossier de destination Google Drive

#Définir les chemins des fichiers log
$ReussiteLog = "D:\Logs\reussite_drive.log" #Fichier log des copies réussies
$ErrorLog = "D:\Logs\error_drive.log" #Fichier log des erreurs lors de la copie

#Variable pour récupérer la date et l'heure
$Date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

#Création du répertoire de destination s'il n'existe pas
if (-Not (Test-Path -Path $DrivePath)) {
    Write-Host "Le dossier n'existe pas. Création en cours !"
    New-Item -Path $DrivePath -ItemType Directory
}

#Copier les fichiers du lecteur D: vers Google Drive
if (Test-Path $DrivePath) {
    Copy-Item -Path $SourcePath -Destination $DrivePath -Recurse -Force
    "$Date - L'opération a bien été réalisé" | Out-File -FilePath $ReussiteLog
    Write-Host "Tous les fichiers ont bien été copié !"

#Message d'erreur
} else {
    "$Date - L'opération a rencontré un souci" | Out-File -FilePath $ErrorLog
    Write-Warning "Une erreur est survenue ! : $DrivePath"
}
