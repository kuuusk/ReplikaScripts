---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaPL17', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaPL17', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaPL17', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL17', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL17', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL17', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL17', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL17', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V500', @source_owner = N'dbo', @source_object = N'PL17V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V500]', @del_cmd = N'CALL [sp_MSdel_dboPL17V500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179P00', @source_owner = N'dbo', @source_object = N'PL179P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179P00]', @del_cmd = N'CALL [sp_MSdel_dboPL179P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175P00', @source_owner = N'dbo', @source_object = N'PL175P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175P00]', @del_cmd = N'CALL [sp_MSdel_dboPL175P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176P00', @source_owner = N'dbo', @source_object = N'PL176P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176P00]', @del_cmd = N'CALL [sp_MSdel_dboPL176P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177P00', @source_owner = N'dbo', @source_object = N'PL177P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177P00]', @del_cmd = N'CALL [sp_MSdel_dboPL177P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178P00', @source_owner = N'dbo', @source_object = N'PL178P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178P00]', @del_cmd = N'CALL [sp_MSdel_dboPL178P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL170100', @source_owner = N'dbo', @source_object = N'PL170100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL170100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL170100]', @del_cmd = N'CALL [sp_MSdel_dboPL170100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL170100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172P00', @source_owner = N'dbo', @source_object = N'PL172P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172P00]', @del_cmd = N'CALL [sp_MSdel_dboPL172P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL170200', @source_owner = N'dbo', @source_object = N'PL170200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL170200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL170200]', @del_cmd = N'CALL [sp_MSdel_dboPL170200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL170200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL170500', @source_owner = N'dbo', @source_object = N'PL170500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL170500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL170500]', @del_cmd = N'CALL [sp_MSdel_dboPL170500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL170500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL170600', @source_owner = N'dbo', @source_object = N'PL170600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL170600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL170600]', @del_cmd = N'CALL [sp_MSdel_dboPL170600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL170600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL170700', @source_owner = N'dbo', @source_object = N'PL170700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL170700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL170700]', @del_cmd = N'CALL [sp_MSdel_dboPL170700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL170700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL170800', @source_owner = N'dbo', @source_object = N'PL170800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL170800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL170800]', @del_cmd = N'CALL [sp_MSdel_dboPL170800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL170800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL170900', @source_owner = N'dbo', @source_object = N'PL170900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL170900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL170900]', @del_cmd = N'CALL [sp_MSdel_dboPL170900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL170900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171000', @source_owner = N'dbo', @source_object = N'PL171000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171000]', @del_cmd = N'CALL [sp_MSdel_dboPL171000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171100', @source_owner = N'dbo', @source_object = N'PL171100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171100]', @del_cmd = N'CALL [sp_MSdel_dboPL171100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171200', @source_owner = N'dbo', @source_object = N'PL171200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171200]', @del_cmd = N'CALL [sp_MSdel_dboPL171200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171300', @source_owner = N'dbo', @source_object = N'PL171300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171300]', @del_cmd = N'CALL [sp_MSdel_dboPL171300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171400', @source_owner = N'dbo', @source_object = N'PL171400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171400]', @del_cmd = N'CALL [sp_MSdel_dboPL171400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171600', @source_owner = N'dbo', @source_object = N'PL171600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171600]', @del_cmd = N'CALL [sp_MSdel_dboPL171600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171900', @source_owner = N'dbo', @source_object = N'PL171900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171900]', @del_cmd = N'CALL [sp_MSdel_dboPL171900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171L00', @source_owner = N'dbo', @source_object = N'PL171L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171L00]', @del_cmd = N'CALL [sp_MSdel_dboPL171L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171M00', @source_owner = N'dbo', @source_object = N'PL171M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171M00]', @del_cmd = N'CALL [sp_MSdel_dboPL171M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171N00', @source_owner = N'dbo', @source_object = N'PL171N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171N00]', @del_cmd = N'CALL [sp_MSdel_dboPL171N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL171P00', @source_owner = N'dbo', @source_object = N'PL171P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL171P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL171P00]', @del_cmd = N'CALL [sp_MSdel_dboPL171P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL171P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172000', @source_owner = N'dbo', @source_object = N'PL172000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172000]', @del_cmd = N'CALL [sp_MSdel_dboPL172000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172100', @source_owner = N'dbo', @source_object = N'PL172100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172100]', @del_cmd = N'CALL [sp_MSdel_dboPL172100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172200', @source_owner = N'dbo', @source_object = N'PL172200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172200]', @del_cmd = N'CALL [sp_MSdel_dboPL172200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172300', @source_owner = N'dbo', @source_object = N'PL172300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172300]', @del_cmd = N'CALL [sp_MSdel_dboPL172300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172400', @source_owner = N'dbo', @source_object = N'PL172400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172400]', @del_cmd = N'CALL [sp_MSdel_dboPL172400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172500', @source_owner = N'dbo', @source_object = N'PL172500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172500]', @del_cmd = N'CALL [sp_MSdel_dboPL172500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172600', @source_owner = N'dbo', @source_object = N'PL172600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172600]', @del_cmd = N'CALL [sp_MSdel_dboPL172600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172700', @source_owner = N'dbo', @source_object = N'PL172700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172700]', @del_cmd = N'CALL [sp_MSdel_dboPL172700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172800', @source_owner = N'dbo', @source_object = N'PL172800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172800]', @del_cmd = N'CALL [sp_MSdel_dboPL172800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172900', @source_owner = N'dbo', @source_object = N'PL172900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172900]', @del_cmd = N'CALL [sp_MSdel_dboPL172900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172L00', @source_owner = N'dbo', @source_object = N'PL172L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172L00]', @del_cmd = N'CALL [sp_MSdel_dboPL172L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172M00', @source_owner = N'dbo', @source_object = N'PL172M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172M00]', @del_cmd = N'CALL [sp_MSdel_dboPL172M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL172N00', @source_owner = N'dbo', @source_object = N'PL172N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL172N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL172N00]', @del_cmd = N'CALL [sp_MSdel_dboPL172N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL172N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173000', @source_owner = N'dbo', @source_object = N'PL173000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173000]', @del_cmd = N'CALL [sp_MSdel_dboPL173000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173100', @source_owner = N'dbo', @source_object = N'PL173100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173100]', @del_cmd = N'CALL [sp_MSdel_dboPL173100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173500', @source_owner = N'dbo', @source_object = N'PL173500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173500]', @del_cmd = N'CALL [sp_MSdel_dboPL173500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173600', @source_owner = N'dbo', @source_object = N'PL173600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173600]', @del_cmd = N'CALL [sp_MSdel_dboPL173600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173900', @source_owner = N'dbo', @source_object = N'PL173900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173900]', @del_cmd = N'CALL [sp_MSdel_dboPL173900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173L00', @source_owner = N'dbo', @source_object = N'PL173L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173L00]', @del_cmd = N'CALL [sp_MSdel_dboPL173L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173M00', @source_owner = N'dbo', @source_object = N'PL173M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173M00]', @del_cmd = N'CALL [sp_MSdel_dboPL173M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173N00', @source_owner = N'dbo', @source_object = N'PL173N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173N00]', @del_cmd = N'CALL [sp_MSdel_dboPL173N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL173P00', @source_owner = N'dbo', @source_object = N'PL173P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL173P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL173P00]', @del_cmd = N'CALL [sp_MSdel_dboPL173P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL173P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174000', @source_owner = N'dbo', @source_object = N'PL174000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174000]', @del_cmd = N'CALL [sp_MSdel_dboPL174000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174100', @source_owner = N'dbo', @source_object = N'PL174100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174100]', @del_cmd = N'CALL [sp_MSdel_dboPL174100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174200', @source_owner = N'dbo', @source_object = N'PL174200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174200]', @del_cmd = N'CALL [sp_MSdel_dboPL174200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174300', @source_owner = N'dbo', @source_object = N'PL174300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174300]', @del_cmd = N'CALL [sp_MSdel_dboPL174300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174400', @source_owner = N'dbo', @source_object = N'PL174400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174400]', @del_cmd = N'CALL [sp_MSdel_dboPL174400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174500', @source_owner = N'dbo', @source_object = N'PL174500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174500]', @del_cmd = N'CALL [sp_MSdel_dboPL174500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174600', @source_owner = N'dbo', @source_object = N'PL174600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174600]', @del_cmd = N'CALL [sp_MSdel_dboPL174600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174700', @source_owner = N'dbo', @source_object = N'PL174700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174700]', @del_cmd = N'CALL [sp_MSdel_dboPL174700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174800', @source_owner = N'dbo', @source_object = N'PL174800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174800]', @del_cmd = N'CALL [sp_MSdel_dboPL174800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174900', @source_owner = N'dbo', @source_object = N'PL174900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174900]', @del_cmd = N'CALL [sp_MSdel_dboPL174900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174L00', @source_owner = N'dbo', @source_object = N'PL174L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174L00]', @del_cmd = N'CALL [sp_MSdel_dboPL174L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174M00', @source_owner = N'dbo', @source_object = N'PL174M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174M00]', @del_cmd = N'CALL [sp_MSdel_dboPL174M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174N00', @source_owner = N'dbo', @source_object = N'PL174N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174N00]', @del_cmd = N'CALL [sp_MSdel_dboPL174N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL174P00', @source_owner = N'dbo', @source_object = N'PL174P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL174P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL174P00]', @del_cmd = N'CALL [sp_MSdel_dboPL174P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL174P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175000', @source_owner = N'dbo', @source_object = N'PL175000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175000]', @del_cmd = N'CALL [sp_MSdel_dboPL175000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175100', @source_owner = N'dbo', @source_object = N'PL175100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175100]', @del_cmd = N'CALL [sp_MSdel_dboPL175100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175200', @source_owner = N'dbo', @source_object = N'PL175200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175200]', @del_cmd = N'CALL [sp_MSdel_dboPL175200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175300', @source_owner = N'dbo', @source_object = N'PL175300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175300]', @del_cmd = N'CALL [sp_MSdel_dboPL175300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175400', @source_owner = N'dbo', @source_object = N'PL175400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175400]', @del_cmd = N'CALL [sp_MSdel_dboPL175400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175600', @source_owner = N'dbo', @source_object = N'PL175600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175600]', @del_cmd = N'CALL [sp_MSdel_dboPL175600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175700', @source_owner = N'dbo', @source_object = N'PL175700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175700]', @del_cmd = N'CALL [sp_MSdel_dboPL175700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175800', @source_owner = N'dbo', @source_object = N'PL175800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175800]', @del_cmd = N'CALL [sp_MSdel_dboPL175800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175900', @source_owner = N'dbo', @source_object = N'PL175900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175900]', @del_cmd = N'CALL [sp_MSdel_dboPL175900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175L00', @source_owner = N'dbo', @source_object = N'PL175L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175L00]', @del_cmd = N'CALL [sp_MSdel_dboPL175L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175M00', @source_owner = N'dbo', @source_object = N'PL175M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175M00]', @del_cmd = N'CALL [sp_MSdel_dboPL175M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL175N00', @source_owner = N'dbo', @source_object = N'PL175N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL175N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL175N00]', @del_cmd = N'CALL [sp_MSdel_dboPL175N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL175N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176000', @source_owner = N'dbo', @source_object = N'PL176000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176000]', @del_cmd = N'CALL [sp_MSdel_dboPL176000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176100', @source_owner = N'dbo', @source_object = N'PL176100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176100]', @del_cmd = N'CALL [sp_MSdel_dboPL176100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176200', @source_owner = N'dbo', @source_object = N'PL176200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176200]', @del_cmd = N'CALL [sp_MSdel_dboPL176200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176300', @source_owner = N'dbo', @source_object = N'PL176300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176300]', @del_cmd = N'CALL [sp_MSdel_dboPL176300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176400', @source_owner = N'dbo', @source_object = N'PL176400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176400]', @del_cmd = N'CALL [sp_MSdel_dboPL176400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176500', @source_owner = N'dbo', @source_object = N'PL176500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176500]', @del_cmd = N'CALL [sp_MSdel_dboPL176500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176600', @source_owner = N'dbo', @source_object = N'PL176600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176600]', @del_cmd = N'CALL [sp_MSdel_dboPL176600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176700', @source_owner = N'dbo', @source_object = N'PL176700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176700]', @del_cmd = N'CALL [sp_MSdel_dboPL176700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176900', @source_owner = N'dbo', @source_object = N'PL176900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176900]', @del_cmd = N'CALL [sp_MSdel_dboPL176900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176L00', @source_owner = N'dbo', @source_object = N'PL176L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176L00]', @del_cmd = N'CALL [sp_MSdel_dboPL176L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176M00', @source_owner = N'dbo', @source_object = N'PL176M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176M00]', @del_cmd = N'CALL [sp_MSdel_dboPL176M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL176N00', @source_owner = N'dbo', @source_object = N'PL176N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL176N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL176N00]', @del_cmd = N'CALL [sp_MSdel_dboPL176N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL176N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177000', @source_owner = N'dbo', @source_object = N'PL177000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177000]', @del_cmd = N'CALL [sp_MSdel_dboPL177000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177100', @source_owner = N'dbo', @source_object = N'PL177100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177100]', @del_cmd = N'CALL [sp_MSdel_dboPL177100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177200', @source_owner = N'dbo', @source_object = N'PL177200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177200]', @del_cmd = N'CALL [sp_MSdel_dboPL177200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177300', @source_owner = N'dbo', @source_object = N'PL177300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177300]', @del_cmd = N'CALL [sp_MSdel_dboPL177300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177400', @source_owner = N'dbo', @source_object = N'PL177400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177400]', @del_cmd = N'CALL [sp_MSdel_dboPL177400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177500', @source_owner = N'dbo', @source_object = N'PL177500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177500]', @del_cmd = N'CALL [sp_MSdel_dboPL177500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177600', @source_owner = N'dbo', @source_object = N'PL177600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177600]', @del_cmd = N'CALL [sp_MSdel_dboPL177600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177700', @source_owner = N'dbo', @source_object = N'PL177700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177700]', @del_cmd = N'CALL [sp_MSdel_dboPL177700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177800', @source_owner = N'dbo', @source_object = N'PL177800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177800]', @del_cmd = N'CALL [sp_MSdel_dboPL177800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177L00', @source_owner = N'dbo', @source_object = N'PL177L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177L00]', @del_cmd = N'CALL [sp_MSdel_dboPL177L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177M00', @source_owner = N'dbo', @source_object = N'PL177M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177M00]', @del_cmd = N'CALL [sp_MSdel_dboPL177M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL177N00', @source_owner = N'dbo', @source_object = N'PL177N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL177N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL177N00]', @del_cmd = N'CALL [sp_MSdel_dboPL177N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL177N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178000', @source_owner = N'dbo', @source_object = N'PL178000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178000]', @del_cmd = N'CALL [sp_MSdel_dboPL178000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178100', @source_owner = N'dbo', @source_object = N'PL178100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178100]', @del_cmd = N'CALL [sp_MSdel_dboPL178100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178300', @source_owner = N'dbo', @source_object = N'PL178300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178300]', @del_cmd = N'CALL [sp_MSdel_dboPL178300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178400', @source_owner = N'dbo', @source_object = N'PL178400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178400]', @del_cmd = N'CALL [sp_MSdel_dboPL178400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178500', @source_owner = N'dbo', @source_object = N'PL178500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178500]', @del_cmd = N'CALL [sp_MSdel_dboPL178500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178800', @source_owner = N'dbo', @source_object = N'PL178800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178800]', @del_cmd = N'CALL [sp_MSdel_dboPL178800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178900', @source_owner = N'dbo', @source_object = N'PL178900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178900]', @del_cmd = N'CALL [sp_MSdel_dboPL178900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178L00', @source_owner = N'dbo', @source_object = N'PL178L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178L00]', @del_cmd = N'CALL [sp_MSdel_dboPL178L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178M00', @source_owner = N'dbo', @source_object = N'PL178M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178M00]', @del_cmd = N'CALL [sp_MSdel_dboPL178M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL178N00', @source_owner = N'dbo', @source_object = N'PL178N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL178N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL178N00]', @del_cmd = N'CALL [sp_MSdel_dboPL178N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL178N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179000', @source_owner = N'dbo', @source_object = N'PL179000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179000]', @del_cmd = N'CALL [sp_MSdel_dboPL179000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179100', @source_owner = N'dbo', @source_object = N'PL179100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179100]', @del_cmd = N'CALL [sp_MSdel_dboPL179100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179200', @source_owner = N'dbo', @source_object = N'PL179200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179200]', @del_cmd = N'CALL [sp_MSdel_dboPL179200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179300', @source_owner = N'dbo', @source_object = N'PL179300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179300]', @del_cmd = N'CALL [sp_MSdel_dboPL179300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179400', @source_owner = N'dbo', @source_object = N'PL179400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179400]', @del_cmd = N'CALL [sp_MSdel_dboPL179400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179500', @source_owner = N'dbo', @source_object = N'PL179500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179500]', @del_cmd = N'CALL [sp_MSdel_dboPL179500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179600', @source_owner = N'dbo', @source_object = N'PL179600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179600]', @del_cmd = N'CALL [sp_MSdel_dboPL179600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179700', @source_owner = N'dbo', @source_object = N'PL179700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179700]', @del_cmd = N'CALL [sp_MSdel_dboPL179700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179900', @source_owner = N'dbo', @source_object = N'PL179900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179900]', @del_cmd = N'CALL [sp_MSdel_dboPL179900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179L00', @source_owner = N'dbo', @source_object = N'PL179L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179L00]', @del_cmd = N'CALL [sp_MSdel_dboPL179L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL179M00', @source_owner = N'dbo', @source_object = N'PL179M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179M00]', @del_cmd = N'CALL [sp_MSdel_dboPL179M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article =N'PL179N00', @source_owner = N'dbo', @source_object = N'PL179N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL179N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL179N00]', @del_cmd = N'CALL [sp_MSdel_dboPL179N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL179N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V100', @source_owner = N'dbo', @source_object = N'PL17V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V100]', @del_cmd = N'CALL [sp_MSdel_dboPL17V100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V200', @source_owner = N'dbo', @source_object = N'PL17V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V200]', @del_cmd = N'CALL [sp_MSdel_dboPL17V200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V300', @source_owner = N'dbo', @source_object = N'PL17V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V300]', @del_cmd = N'CALL [sp_MSdel_dboPL17V300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V400', @source_owner = N'dbo', @source_object = N'PL17V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V400]', @del_cmd = N'CALL [sp_MSdel_dboPL17V400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V700', @source_owner = N'dbo', @source_object = N'PL17V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V700]', @del_cmd = N'CALL [sp_MSdel_dboPL17V700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V800', @source_owner = N'dbo', @source_object = N'PL17V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V800]', @del_cmd = N'CALL [sp_MSdel_dboPL17V800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL17', @article = N'PL17V900', @source_owner = N'dbo', @source_object = N'PL17V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL17V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL17V900]', @del_cmd = N'CALL [sp_MSdel_dboPL17V900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL17V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaPL17', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaPL17', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

