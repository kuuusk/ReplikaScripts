-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSL17', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSL17', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSL17', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL17', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL17', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL17', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL17', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL17', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V500', @source_owner = N'dbo', @source_object = N'SL17V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V500]', @del_cmd = N'CALL [sp_MSdel_dboSL17V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179P00', @source_owner = N'dbo', @source_object = N'SL179P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179P00]', @del_cmd = N'CALL [sp_MSdel_dboSL179P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175P00', @source_owner = N'dbo', @source_object = N'SL175P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175P00]', @del_cmd = N'CALL [sp_MSdel_dboSL175P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176P00', @source_owner = N'dbo', @source_object = N'SL176P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176P00]', @del_cmd = N'CALL [sp_MSdel_dboSL176P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177P00', @source_owner = N'dbo', @source_object = N'SL177P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177P00]', @del_cmd = N'CALL [sp_MSdel_dboSL177P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178P00', @source_owner = N'dbo', @source_object = N'SL178P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178P00]', @del_cmd = N'CALL [sp_MSdel_dboSL178P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL170100', @source_owner = N'dbo', @source_object = N'SL170100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL170100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL170100]', @del_cmd = N'CALL [sp_MSdel_dboSL170100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL170100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172P00', @source_owner = N'dbo', @source_object = N'SL172P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172P00]', @del_cmd = N'CALL [sp_MSdel_dboSL172P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL170200', @source_owner = N'dbo', @source_object = N'SL170200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL170200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL170200]', @del_cmd = N'CALL [sp_MSdel_dboSL170200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL170200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL170500', @source_owner = N'dbo', @source_object = N'SL170500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL170500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL170500]', @del_cmd = N'CALL [sp_MSdel_dboSL170500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL170500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL170600', @source_owner = N'dbo', @source_object = N'SL170600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL170600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL170600]', @del_cmd = N'CALL [sp_MSdel_dboSL170600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL170600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL170700', @source_owner = N'dbo', @source_object = N'SL170700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL170700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL170700]', @del_cmd = N'CALL [sp_MSdel_dboSL170700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL170700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL170800', @source_owner = N'dbo', @source_object = N'SL170800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL170800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL170800]', @del_cmd = N'CALL [sp_MSdel_dboSL170800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL170800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL170900', @source_owner = N'dbo', @source_object = N'SL170900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL170900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL170900]', @del_cmd = N'CALL [sp_MSdel_dboSL170900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL170900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171000', @source_owner = N'dbo', @source_object = N'SL171000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171000]', @del_cmd = N'CALL [sp_MSdel_dboSL171000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171100', @source_owner = N'dbo', @source_object = N'SL171100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171100]', @del_cmd = N'CALL [sp_MSdel_dboSL171100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171200', @source_owner = N'dbo', @source_object = N'SL171200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171200]', @del_cmd = N'CALL [sp_MSdel_dboSL171200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171300', @source_owner = N'dbo', @source_object = N'SL171300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171300]', @del_cmd = N'CALL [sp_MSdel_dboSL171300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171400', @source_owner = N'dbo', @source_object = N'SL171400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171400]', @del_cmd = N'CALL [sp_MSdel_dboSL171400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171600', @source_owner = N'dbo', @source_object = N'SL171600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171600]', @del_cmd = N'CALL [sp_MSdel_dboSL171600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171900', @source_owner = N'dbo', @source_object = N'SL171900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171900]', @del_cmd = N'CALL [sp_MSdel_dboSL171900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171L00', @source_owner = N'dbo', @source_object = N'SL171L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171L00]', @del_cmd = N'CALL [sp_MSdel_dboSL171L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171M00', @source_owner = N'dbo', @source_object = N'SL171M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171M00]', @del_cmd = N'CALL [sp_MSdel_dboSL171M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171N00', @source_owner = N'dbo', @source_object = N'SL171N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171N00]', @del_cmd = N'CALL [sp_MSdel_dboSL171N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL171P00', @source_owner = N'dbo', @source_object = N'SL171P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL171P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL171P00]', @del_cmd = N'CALL [sp_MSdel_dboSL171P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL171P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172000', @source_owner = N'dbo', @source_object = N'SL172000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172000]', @del_cmd = N'CALL [sp_MSdel_dboSL172000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172100', @source_owner = N'dbo', @source_object = N'SL172100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172100]', @del_cmd = N'CALL [sp_MSdel_dboSL172100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172200', @source_owner = N'dbo', @source_object = N'SL172200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172200]', @del_cmd = N'CALL [sp_MSdel_dboSL172200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172300', @source_owner = N'dbo', @source_object = N'SL172300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172300]', @del_cmd = N'CALL [sp_MSdel_dboSL172300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172400', @source_owner = N'dbo', @source_object = N'SL172400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172400]', @del_cmd = N'CALL [sp_MSdel_dboSL172400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172500', @source_owner = N'dbo', @source_object = N'SL172500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172500]', @del_cmd = N'CALL [sp_MSdel_dboSL172500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172600', @source_owner = N'dbo', @source_object = N'SL172600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172600]', @del_cmd = N'CALL [sp_MSdel_dboSL172600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172700', @source_owner = N'dbo', @source_object = N'SL172700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172700]', @del_cmd = N'CALL [sp_MSdel_dboSL172700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172800', @source_owner = N'dbo', @source_object = N'SL172800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172800]', @del_cmd = N'CALL [sp_MSdel_dboSL172800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172900', @source_owner = N'dbo', @source_object = N'SL172900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172900]', @del_cmd = N'CALL [sp_MSdel_dboSL172900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172L00', @source_owner = N'dbo', @source_object = N'SL172L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172L00]', @del_cmd = N'CALL [sp_MSdel_dboSL172L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172M00', @source_owner = N'dbo', @source_object = N'SL172M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172M00]', @del_cmd = N'CALL [sp_MSdel_dboSL172M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL172N00', @source_owner = N'dbo', @source_object = N'SL172N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL172N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL172N00]', @del_cmd = N'CALL [sp_MSdel_dboSL172N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL172N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173000', @source_owner = N'dbo', @source_object = N'SL173000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173000]', @del_cmd = N'CALL [sp_MSdel_dboSL173000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173100', @source_owner = N'dbo', @source_object = N'SL173100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173100]', @del_cmd = N'CALL [sp_MSdel_dboSL173100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173500', @source_owner = N'dbo', @source_object = N'SL173500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173500]', @del_cmd = N'CALL [sp_MSdel_dboSL173500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173600', @source_owner = N'dbo', @source_object = N'SL173600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173600]', @del_cmd = N'CALL [sp_MSdel_dboSL173600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173900', @source_owner = N'dbo', @source_object = N'SL173900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173900]', @del_cmd = N'CALL [sp_MSdel_dboSL173900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173L00', @source_owner = N'dbo', @source_object = N'SL173L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173L00]', @del_cmd = N'CALL [sp_MSdel_dboSL173L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173M00', @source_owner = N'dbo', @source_object = N'SL173M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173M00]', @del_cmd = N'CALL [sp_MSdel_dboSL173M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173N00', @source_owner = N'dbo', @source_object = N'SL173N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173N00]', @del_cmd = N'CALL [sp_MSdel_dboSL173N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL173P00', @source_owner = N'dbo', @source_object = N'SL173P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL173P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL173P00]', @del_cmd = N'CALL [sp_MSdel_dboSL173P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL173P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174000', @source_owner = N'dbo', @source_object = N'SL174000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174000]', @del_cmd = N'CALL [sp_MSdel_dboSL174000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174100', @source_owner = N'dbo', @source_object = N'SL174100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174100]', @del_cmd = N'CALL [sp_MSdel_dboSL174100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174200', @source_owner = N'dbo', @source_object = N'SL174200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174200]', @del_cmd = N'CALL [sp_MSdel_dboSL174200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174300', @source_owner = N'dbo', @source_object = N'SL174300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174300]', @del_cmd = N'CALL [sp_MSdel_dboSL174300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174400', @source_owner = N'dbo', @source_object = N'SL174400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174400]', @del_cmd = N'CALL [sp_MSdel_dboSL174400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174500', @source_owner = N'dbo', @source_object = N'SL174500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174500]', @del_cmd = N'CALL [sp_MSdel_dboSL174500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174600', @source_owner = N'dbo', @source_object = N'SL174600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174600]', @del_cmd = N'CALL [sp_MSdel_dboSL174600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174700', @source_owner = N'dbo', @source_object = N'SL174700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174700]', @del_cmd = N'CALL [sp_MSdel_dboSL174700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174800', @source_owner = N'dbo', @source_object = N'SL174800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174800]', @del_cmd = N'CALL [sp_MSdel_dboSL174800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174900', @source_owner = N'dbo', @source_object = N'SL174900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174900]', @del_cmd = N'CALL [sp_MSdel_dboSL174900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174L00', @source_owner = N'dbo', @source_object = N'SL174L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174L00]', @del_cmd = N'CALL [sp_MSdel_dboSL174L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174M00', @source_owner = N'dbo', @source_object = N'SL174M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174M00]', @del_cmd = N'CALL [sp_MSdel_dboSL174M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174N00', @source_owner = N'dbo', @source_object = N'SL174N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174N00]', @del_cmd = N'CALL [sp_MSdel_dboSL174N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL174P00', @source_owner = N'dbo', @source_object = N'SL174P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL174P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL174P00]', @del_cmd = N'CALL [sp_MSdel_dboSL174P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL174P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175000', @source_owner = N'dbo', @source_object = N'SL175000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175000]', @del_cmd = N'CALL [sp_MSdel_dboSL175000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175100', @source_owner = N'dbo', @source_object = N'SL175100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175100]', @del_cmd = N'CALL [sp_MSdel_dboSL175100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175200', @source_owner = N'dbo', @source_object = N'SL175200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175200]', @del_cmd = N'CALL [sp_MSdel_dboSL175200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175300', @source_owner = N'dbo', @source_object = N'SL175300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175300]', @del_cmd = N'CALL [sp_MSdel_dboSL175300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175400', @source_owner = N'dbo', @source_object = N'SL175400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175400]', @del_cmd = N'CALL [sp_MSdel_dboSL175400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175600', @source_owner = N'dbo', @source_object = N'SL175600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175600]', @del_cmd = N'CALL [sp_MSdel_dboSL175600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175700', @source_owner = N'dbo', @source_object = N'SL175700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175700]', @del_cmd = N'CALL [sp_MSdel_dboSL175700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175800', @source_owner = N'dbo', @source_object = N'SL175800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175800]', @del_cmd = N'CALL [sp_MSdel_dboSL175800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175900', @source_owner = N'dbo', @source_object = N'SL175900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175900]', @del_cmd = N'CALL [sp_MSdel_dboSL175900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175L00', @source_owner = N'dbo', @source_object = N'SL175L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175L00]', @del_cmd = N'CALL [sp_MSdel_dboSL175L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175M00', @source_owner = N'dbo', @source_object = N'SL175M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175M00]', @del_cmd = N'CALL [sp_MSdel_dboSL175M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL175N00', @source_owner = N'dbo', @source_object = N'SL175N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL175N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL175N00]', @del_cmd = N'CALL [sp_MSdel_dboSL175N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL175N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176000', @source_owner = N'dbo', @source_object = N'SL176000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176000]', @del_cmd = N'CALL [sp_MSdel_dboSL176000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176100', @source_owner = N'dbo', @source_object = N'SL176100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176100]', @del_cmd = N'CALL [sp_MSdel_dboSL176100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176200', @source_owner = N'dbo', @source_object = N'SL176200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176200]', @del_cmd = N'CALL [sp_MSdel_dboSL176200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176300', @source_owner = N'dbo', @source_object = N'SL176300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176300]', @del_cmd = N'CALL [sp_MSdel_dboSL176300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176400', @source_owner = N'dbo', @source_object = N'SL176400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176400]', @del_cmd = N'CALL [sp_MSdel_dboSL176400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176500', @source_owner = N'dbo', @source_object = N'SL176500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176500]', @del_cmd = N'CALL [sp_MSdel_dboSL176500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176600', @source_owner = N'dbo', @source_object = N'SL176600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176600]', @del_cmd = N'CALL [sp_MSdel_dboSL176600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176700', @source_owner = N'dbo', @source_object = N'SL176700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176700]', @del_cmd = N'CALL [sp_MSdel_dboSL176700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176900', @source_owner = N'dbo', @source_object = N'SL176900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176900]', @del_cmd = N'CALL [sp_MSdel_dboSL176900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176L00', @source_owner = N'dbo', @source_object = N'SL176L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176L00]', @del_cmd = N'CALL [sp_MSdel_dboSL176L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176M00', @source_owner = N'dbo', @source_object = N'SL176M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176M00]', @del_cmd = N'CALL [sp_MSdel_dboSL176M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL176N00', @source_owner = N'dbo', @source_object = N'SL176N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL176N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL176N00]', @del_cmd = N'CALL [sp_MSdel_dboSL176N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL176N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177000', @source_owner = N'dbo', @source_object = N'SL177000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177000]', @del_cmd = N'CALL [sp_MSdel_dboSL177000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177100', @source_owner = N'dbo', @source_object = N'SL177100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177100]', @del_cmd = N'CALL [sp_MSdel_dboSL177100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177200', @source_owner = N'dbo', @source_object = N'SL177200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177200]', @del_cmd = N'CALL [sp_MSdel_dboSL177200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177300', @source_owner = N'dbo', @source_object = N'SL177300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177300]', @del_cmd = N'CALL [sp_MSdel_dboSL177300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177400', @source_owner = N'dbo', @source_object = N'SL177400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177400]', @del_cmd = N'CALL [sp_MSdel_dboSL177400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177500', @source_owner = N'dbo', @source_object = N'SL177500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177500]', @del_cmd = N'CALL [sp_MSdel_dboSL177500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177600', @source_owner = N'dbo', @source_object = N'SL177600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177600]', @del_cmd = N'CALL [sp_MSdel_dboSL177600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177700', @source_owner = N'dbo', @source_object = N'SL177700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177700]', @del_cmd = N'CALL [sp_MSdel_dboSL177700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177800', @source_owner = N'dbo', @source_object = N'SL177800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177800]', @del_cmd = N'CALL [sp_MSdel_dboSL177800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177L00', @source_owner = N'dbo', @source_object = N'SL177L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177L00]', @del_cmd = N'CALL [sp_MSdel_dboSL177L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177M00', @source_owner = N'dbo', @source_object = N'SL177M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177M00]', @del_cmd = N'CALL [sp_MSdel_dboSL177M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL177N00', @source_owner = N'dbo', @source_object = N'SL177N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL177N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL177N00]', @del_cmd = N'CALL [sp_MSdel_dboSL177N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL177N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178000', @source_owner = N'dbo', @source_object = N'SL178000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178000]', @del_cmd = N'CALL [sp_MSdel_dboSL178000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178100', @source_owner = N'dbo', @source_object = N'SL178100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178100]', @del_cmd = N'CALL [sp_MSdel_dboSL178100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178300', @source_owner = N'dbo', @source_object = N'SL178300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178300]', @del_cmd = N'CALL [sp_MSdel_dboSL178300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178400', @source_owner = N'dbo', @source_object = N'SL178400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178400]', @del_cmd = N'CALL [sp_MSdel_dboSL178400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178500', @source_owner = N'dbo', @source_object = N'SL178500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178500]', @del_cmd = N'CALL [sp_MSdel_dboSL178500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178800', @source_owner = N'dbo', @source_object = N'SL178800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178800]', @del_cmd = N'CALL [sp_MSdel_dboSL178800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178900', @source_owner = N'dbo', @source_object = N'SL178900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178900]', @del_cmd = N'CALL [sp_MSdel_dboSL178900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178L00', @source_owner = N'dbo', @source_object = N'SL178L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178L00]', @del_cmd = N'CALL [sp_MSdel_dboSL178L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178M00', @source_owner = N'dbo', @source_object = N'SL178M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178M00]', @del_cmd = N'CALL [sp_MSdel_dboSL178M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL178N00', @source_owner = N'dbo', @source_object = N'SL178N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL178N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL178N00]', @del_cmd = N'CALL [sp_MSdel_dboSL178N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL178N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179000', @source_owner = N'dbo', @source_object = N'SL179000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179000]', @del_cmd = N'CALL [sp_MSdel_dboSL179000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179100', @source_owner = N'dbo', @source_object = N'SL179100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179100]', @del_cmd = N'CALL [sp_MSdel_dboSL179100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179200', @source_owner = N'dbo', @source_object = N'SL179200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179200]', @del_cmd = N'CALL [sp_MSdel_dboSL179200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179300', @source_owner = N'dbo', @source_object = N'SL179300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179300]', @del_cmd = N'CALL [sp_MSdel_dboSL179300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179400', @source_owner = N'dbo', @source_object = N'SL179400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179400]', @del_cmd = N'CALL [sp_MSdel_dboSL179400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179500', @source_owner = N'dbo', @source_object = N'SL179500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179500]', @del_cmd = N'CALL [sp_MSdel_dboSL179500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179600', @source_owner = N'dbo', @source_object = N'SL179600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179600]', @del_cmd = N'CALL [sp_MSdel_dboSL179600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179700', @source_owner = N'dbo', @source_object = N'SL179700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179700]', @del_cmd = N'CALL [sp_MSdel_dboSL179700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179900', @source_owner = N'dbo', @source_object = N'SL179900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179900]', @del_cmd = N'CALL [sp_MSdel_dboSL179900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179L00', @source_owner = N'dbo', @source_object = N'SL179L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179L00]', @del_cmd = N'CALL [sp_MSdel_dboSL179L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL179M00', @source_owner = N'dbo', @source_object = N'SL179M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179M00]', @del_cmd = N'CALL [sp_MSdel_dboSL179M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article =N'SL179N00', @source_owner = N'dbo', @source_object = N'SL179N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL179N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL179N00]', @del_cmd = N'CALL [sp_MSdel_dboSL179N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL179N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V100', @source_owner = N'dbo', @source_object = N'SL17V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V100]', @del_cmd = N'CALL [sp_MSdel_dboSL17V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V200', @source_owner = N'dbo', @source_object = N'SL17V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V200]', @del_cmd = N'CALL [sp_MSdel_dboSL17V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V300', @source_owner = N'dbo', @source_object = N'SL17V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V300]', @del_cmd = N'CALL [sp_MSdel_dboSL17V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V400', @source_owner = N'dbo', @source_object = N'SL17V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V400]', @del_cmd = N'CALL [sp_MSdel_dboSL17V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V700', @source_owner = N'dbo', @source_object = N'SL17V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V700]', @del_cmd = N'CALL [sp_MSdel_dboSL17V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V800', @source_owner = N'dbo', @source_object = N'SL17V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V800]', @del_cmd = N'CALL [sp_MSdel_dboSL17V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL17', @article = N'SL17V900', @source_owner = N'dbo', @source_object = N'SL17V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL17V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL17V900]', @del_cmd = N'CALL [sp_MSdel_dboSL17V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL17V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSL17', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSL17', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

