USE scalaDB
GO
EXEC sp_addsubscription 
@publication = PublicationScalaAM31, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
USE scalaDB
GO
EXEC sp_addsubscription 
@publication = PublicationScalaAM35, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
USE scalaDB
GO
EXEC sp_addsubscription 
@publication = PublicationScalaAM36, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO


EXEC sp_addsubscription 
@publication = PublicationScalaGL03, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL06, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL07, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL10, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL14, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL16, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL41, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL45, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL46, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaGL53, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'


GO
EXEC sp_addsubscription 
@publication = PublicationScalaOR01, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaOR20, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPC01, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPC41, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPL01, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPL03, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPL04, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPL05, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPL17, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaPL21, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSC01, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSC03, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSC07, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSC10, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSC25, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSC33, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSCGL, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSL01, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSL03, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSL04, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSL05, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSL17, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSL21, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSY18, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSY24, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSY29, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSY34, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSYCD, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSYCH, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaSca, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaUnifiedLog0000, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO
EXEC sp_addsubscription 
@publication = PublicationScalaVAOA, 
@subscriber = 'VM-TAL-SAP01', 
@destination_db = scalaDB,
@sync_type = 'initialize with backup',
@backupdevicetype ='disk',
@backupdevicename = '\\VM-TLN-SCP01\Backup\VM-TLN-SCP01\scalaDB\FULL\VM-TLN-SCP01_scalaDB_FULL_20180930_095000.bak'
GO