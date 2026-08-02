# OC-ASRS-Projet-6-Raccordez-une-entite-et-ses-postes-de-travail-au-SI-de-votre-entreprise
OpenClassrooms : Administrateur Systèmes, Réseaux et Sécurité 2024-2025
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Qu'allez-vous apprendre dans ce projet ?

Dans ce projet, vous serez chargé de configurer un environnement ADDS-RODC-VPN pour assurer une connexion sécurisée et efficace pour qu’une équipe puisse collaborer entre deux sites géographiques. Vous utiliserez VirtualBox pour simuler votre installation avant la mise en production réelle. Vous configurerez Windows Server 2019, intégrerez les utilisateurs et ordinateurs à l'AD principal, et déployerez les GPO nécessaires. En outre, vous préparerez un script PowerShell pour automatiser la copie des données importantes vers un stockage externe sécurisé, assurant ainsi une sauvegarde efficace et fiable.
 
En quoi ces compétences sont-elles importantes pour votre carrière ?

Ce projet est crucial pour assurer l'intégrité et la sécurité des informations de l'entreprise tout en facilitant la gestion et l'administration des systèmes à travers différents sites. Les compétences développées ici sont fondamentales pour tout administrateur système souhaitant garantir la continuité des activités d'une entreprise étendue, notamment dans le secteur bancaire où la sécurité et la conformité sont essentielles. Vous apprendrez à mettre en place des solutions d'infrastructure critiques qui sont essentielles pour le support et la croissance de l'entreprise à long terme.
 
Prêt à démarrer votre projet ?

Vous allez réaliser un projet réaliste, présenté sous forme de mission en entreprise. Il se rapproche d' une mission typique effectuée sur le terrain.

Le projet est découpé en trois sections :

    Mission - Présentation, qui présente le contexte de votre mission,
    Mission - Détails, qui présente les détails de la mission, sous forme d’échanges avec les collègues,
    Livrables et Soutenance, qui décrit les livrables à fournir et le déroulement de la soutenance de validation.

Prenez soin de lire le projet en entier avant de commencer, pour comprendre ce qui est attendu de vous.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Mission - Présentation
Bannière de scénario

Vous êtes administrateur systèmes et réseaux junior depuis quelques mois dans une entreprise bancaire, OpenBank. Vous faites partie de l’équipe IT composée d’un DSI, Samir Assaf, et d’un administrateur systèmes et réseaux senior, Paul Bokadi.
Logo bleu représentant 5 i accolés situés à gauche du titre Open Bank en noir

OpenBank, dont le siège est situé à Paris, est spécialisée dans les prêts bancaires en ligne. L’entreprise vient d'acquérir de nouveaux locaux situés à Nantes. La nouvelle équipe, fraîchement recrutée, composée pour l’instant de 3 collaborateurs, intégrera les nouveaux locaux de Nantes dans les prochaines semaines. 

En tant qu’administrateur systèmes et réseaux junior, votre mission consistera donc à déployer et à relier informatiquement le site de Nantes au site de Paris.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Mission - Détails

Pour lancer le projet, votre DSI, Samir Assaf, s’adresse à vous dans le cadre de la réunion technique pour vous expliquer l'objectif général de la mission.

  

Pour être sûr de ne rien oublier, vous avez enregistré ses consignes (script de la réunion) afin de vous y référer plus tard.

 

2 heures plus tard

 

Vous recevez un mail de cadrage de Samir : 

 

De : Samir Assaf

À : Moi

Objet : Détails de la mission de mise en place ADDS-RODC-VPN

Hello,

 

Suite à notre réunion de ce matin, tu trouveras en pièces jointes de ce mail, les documents dont tu vas avoir besoin pour ta mission : 

    le cahier des charges, dans lequel sont définis les besoins — ce document contient toutes les configurations à effectuer sur les deux sites ;
    la procédure VirtualBox, pour t’aider à tester ton installation de manière virtuelle avant de te lancer dans la production.

Pour effectuer tes tests, une seule machine virtuelle sous Windows 10 branchée sur le site de Nantes suffira.

 

J'aimerais pouvoir vérifier les configurations, mais je n'aurai pas accès à mon ordinateur… Peux-tu prévoir de m'envoyer des captures d'écran de : 

    ton installation de Windows serveur 2019 ;
    la page Utilisateurs et Ordinateurs de l’AD principal ;
    les différentes GPO au format PNG ;

et m'envoyer le fichier de configuration du VPN ?

 

On fait le point lorsque tu auras avancé sur ta maquette virtuelle avant de lancer la prod. 

 

Bonne journée !

 

Samir Assaf

Directeur des systèmes d'information 

Open Bank 

Pièces jointes :

    Cahier des charges
    Procédure Virtualbox

 

Le lendemain

Vous recevez un message sur Teams, de Samir : 
Samir : Salut ! Quand tu auras terminé ta maquette virtuelle, pourras-tu créer un script Powershell respectant les bonnes pratiques de développement, permettant de copier les données stockées dans le lecteur D: du serveur Windows Server 2019 ADDS (site de Paris) vers Google Drive stp ? Moi : Bonjour Samir, pas de souci, je te fais un script commenté, versionné, etc. :) Samir : Merci, bon courage !
Échanges par messagerie

Vous êtes prêt ?


Votre mission démarre ici : 

- Coupez dès à présent toutes les sources de distraction.
- Évitez les situations multi-tâches.
- Préparez votre environnement de travail (onglet, documents, raccourcis...) et commencez la mission en consultant les documents du projet.

 

Bon courage ! 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Livrables et soutenance

    Une copie d’écran de la page “À propos de votre PC “ Windows 2019, prouvant son installation, au format PNG.
    Une copie d’écran de la page Utilisateurs et Ordinateurs de l’AD principal, montrant les différents services créés et les utilisateurs présents, au format PNG.
    Une copie d’écran des différentes GPO au format PNG.
    Les fichiers de configuration du VPN dans une archive .zip.
    Le script PowerShell de la copie externalisée des données du serveur principal vers Google Drive au format PS1.

 

Pour faciliter votre passage devant le jury, déposez sur la plateforme, dans un dossier zip nommé “Titre_du_projet_nom_prénom”, tous les livrables du projet comme suit : Nom_Prénom_n° du livrable_nom du livrable_date de démarrage du projet. Cela donnera : 

    Nom_Prenom_1_copie_ecran_PC_mmaaaa
    Nom_Prenom_2_copie_ecran_utilisateurs_mmaaaa
    Nom_Prenom_3_copie_ecran_gpo_mmaaaa
    Nom_Prenom_4_copie_ecran_config_VPN_mmaaaa
    Nom_Prenom_5_script_powershell_mmaaaa

Par exemple, le premier livrable peut être nommé comme suit : Dupont_Jean_1_X_012022.

Durant la présentation orale, l’évaluateur interprétera le rôle de Siegfried. La soutenance est structurée de la manière suivante :

    Présentation des livrables (15 minutes) 
         Vous présenterez sous VirtualBox une maquette de vos différentes machines virtuelles, en faisant la démonstration que :
            Windows Server est bien installé ;
            la connexion VPN est bien établie ;
            les utilisateurs du site distant peuvent se connecter à l’ADDS ;
            les GPO sont bien appliquées ;
            le script Powershell est fonctionnel et copie bien les documents présents sur le serveur Windows principal vers Google Drive
    Discussion (10 minutes) 
        L’évaluateur jouera le rôle du DSI. Il vous challengera sur les points suivants :
            choix du type de VPN, rôle du VPN, caractéristiques d’un VPN ;
            utilisation de l’ADDS, rôle des GPO/UO ;
            fonction du RODC ;
            fonctionnement du script PowerShell.
    Débriefing (5 minutes)
        À la fin de la soutenance, l'évaluateur arrêtera de jouer le rôle du DSI pour vous permettre de débriefer ensemble.

 

Votre présentation devrait durer 15 minutes (+/- 5 minutes). Puisque le respect des durées des présentations est important en milieu professionnel, les présentations en dessous de 10 minutes ou au-dessus de 20 minutes peuvent être refusées. 
