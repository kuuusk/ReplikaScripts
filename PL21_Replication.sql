---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaPL21', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaPL21', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaPL21', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL21', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL21', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL21', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL21', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL21', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V500', @source_owner = N'dbo', @source_object = N'PL21V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V500]', @del_cmd = N'CALL [sp_MSdel_dboPL21V500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219P00', @source_owner = N'dbo', @source_object = N'PL219P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219P00]', @del_cmd = N'CALL [sp_MSdel_dboPL219P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215P00', @source_owner = N'dbo', @source_object = N'PL215P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215P00]', @del_cmd = N'CALL [sp_MSdel_dboPL215P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216P00', @source_owner = N'dbo', @source_object = N'PL216P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216P00]', @del_cmd = N'CALL [sp_MSdel_dboPL216P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217P00', @source_owner = N'dbo', @source_object = N'PL217P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217P00]', @del_cmd = N'CALL [sp_MSdel_dboPL217P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218P00', @source_owner = N'dbo', @source_object = N'PL218P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218P00]', @del_cmd = N'CALL [sp_MSdel_dboPL218P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL210100', @source_owner = N'dbo', @source_object = N'PL210100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL210100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL210100]', @del_cmd = N'CALL [sp_MSdel_dboPL210100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL210100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212P00', @source_owner = N'dbo', @source_object = N'PL212P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212P00]', @del_cmd = N'CALL [sp_MSdel_dboPL212P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL210200', @source_owner = N'dbo', @source_object = N'PL210200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL210200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL210200]', @del_cmd = N'CALL [sp_MSdel_dboPL210200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL210200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL210500', @source_owner = N'dbo', @source_object = N'PL210500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL210500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL210500]', @del_cmd = N'CALL [sp_MSdel_dboPL210500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL210500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL210600', @source_owner = N'dbo', @source_object = N'PL210600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL210600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL210600]', @del_cmd = N'CALL [sp_MSdel_dboPL210600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL210600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL210700', @source_owner = N'dbo', @source_object = N'PL210700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL210700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL210700]', @del_cmd = N'CALL [sp_MSdel_dboPL210700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL210700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL210800', @source_owner = N'dbo', @source_object = N'PL210800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL210800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL210800]', @del_cmd = N'CALL [sp_MSdel_dboPL210800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL210800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL210900', @source_owner = N'dbo', @source_object = N'PL210900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL210900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL210900]', @del_cmd = N'CALL [sp_MSdel_dboPL210900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL210900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211000', @source_owner = N'dbo', @source_object = N'PL211000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211000]', @del_cmd = N'CALL [sp_MSdel_dboPL211000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211100', @source_owner = N'dbo', @source_object = N'PL211100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211100]', @del_cmd = N'CALL [sp_MSdel_dboPL211100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211200', @source_owner = N'dbo', @source_object = N'PL211200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211200]', @del_cmd = N'CALL [sp_MSdel_dboPL211200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211300', @source_owner = N'dbo', @source_object = N'PL211300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211300]', @del_cmd = N'CALL [sp_MSdel_dboPL211300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211400', @source_owner = N'dbo', @source_object = N'PL211400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211400]', @del_cmd = N'CALL [sp_MSdel_dboPL211400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211600', @source_owner = N'dbo', @source_object = N'PL211600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211600]', @del_cmd = N'CALL [sp_MSdel_dboPL211600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211900', @source_owner = N'dbo', @source_object = N'PL211900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211900]', @del_cmd = N'CALL [sp_MSdel_dboPL211900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211L00', @source_owner = N'dbo', @source_object = N'PL211L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211L00]', @del_cmd = N'CALL [sp_MSdel_dboPL211L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211M00', @source_owner = N'dbo', @source_object = N'PL211M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211M00]', @del_cmd = N'CALL [sp_MSdel_dboPL211M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211N00', @source_owner = N'dbo', @source_object = N'PL211N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211N00]', @del_cmd = N'CALL [sp_MSdel_dboPL211N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL211P00', @source_owner = N'dbo', @source_object = N'PL211P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL211P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL211P00]', @del_cmd = N'CALL [sp_MSdel_dboPL211P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL211P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212000', @source_owner = N'dbo', @source_object = N'PL212000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212000]', @del_cmd = N'CALL [sp_MSdel_dboPL212000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212100', @source_owner = N'dbo', @source_object = N'PL212100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212100]', @del_cmd = N'CALL [sp_MSdel_dboPL212100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212200', @source_owner = N'dbo', @source_object = N'PL212200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212200]', @del_cmd = N'CALL [sp_MSdel_dboPL212200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212300', @source_owner = N'dbo', @source_object = N'PL212300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212300]', @del_cmd = N'CALL [sp_MSdel_dboPL212300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212400', @source_owner = N'dbo', @source_object = N'PL212400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212400]', @del_cmd = N'CALL [sp_MSdel_dboPL212400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212500', @source_owner = N'dbo', @source_object = N'PL212500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212500]', @del_cmd = N'CALL [sp_MSdel_dboPL212500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212600', @source_owner = N'dbo', @source_object = N'PL212600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212600]', @del_cmd = N'CALL [sp_MSdel_dboPL212600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212700', @source_owner = N'dbo', @source_object = N'PL212700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212700]', @del_cmd = N'CALL [sp_MSdel_dboPL212700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212800', @source_owner = N'dbo', @source_object = N'PL212800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212800]', @del_cmd = N'CALL [sp_MSdel_dboPL212800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212900', @source_owner = N'dbo', @source_object = N'PL212900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212900]', @del_cmd = N'CALL [sp_MSdel_dboPL212900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212L00', @source_owner = N'dbo', @source_object = N'PL212L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212L00]', @del_cmd = N'CALL [sp_MSdel_dboPL212L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212M00', @source_owner = N'dbo', @source_object = N'PL212M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212M00]', @del_cmd = N'CALL [sp_MSdel_dboPL212M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL212N00', @source_owner = N'dbo', @source_object = N'PL212N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL212N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL212N00]', @del_cmd = N'CALL [sp_MSdel_dboPL212N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL212N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213000', @source_owner = N'dbo', @source_object = N'PL213000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213000]', @del_cmd = N'CALL [sp_MSdel_dboPL213000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213100', @source_owner = N'dbo', @source_object = N'PL213100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213100]', @del_cmd = N'CALL [sp_MSdel_dboPL213100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213500', @source_owner = N'dbo', @source_object = N'PL213500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213500]', @del_cmd = N'CALL [sp_MSdel_dboPL213500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213600', @source_owner = N'dbo', @source_object = N'PL213600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213600]', @del_cmd = N'CALL [sp_MSdel_dboPL213600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213900', @source_owner = N'dbo', @source_object = N'PL213900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213900]', @del_cmd = N'CALL [sp_MSdel_dboPL213900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213L00', @source_owner = N'dbo', @source_object = N'PL213L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213L00]', @del_cmd = N'CALL [sp_MSdel_dboPL213L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213M00', @source_owner = N'dbo', @source_object = N'PL213M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213M00]', @del_cmd = N'CALL [sp_MSdel_dboPL213M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213N00', @source_owner = N'dbo', @source_object = N'PL213N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213N00]', @del_cmd = N'CALL [sp_MSdel_dboPL213N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL213P00', @source_owner = N'dbo', @source_object = N'PL213P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL213P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL213P00]', @del_cmd = N'CALL [sp_MSdel_dboPL213P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL213P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214000', @source_owner = N'dbo', @source_object = N'PL214000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214000]', @del_cmd = N'CALL [sp_MSdel_dboPL214000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214100', @source_owner = N'dbo', @source_object = N'PL214100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214100]', @del_cmd = N'CALL [sp_MSdel_dboPL214100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214200', @source_owner = N'dbo', @source_object = N'PL214200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214200]', @del_cmd = N'CALL [sp_MSdel_dboPL214200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214300', @source_owner = N'dbo', @source_object = N'PL214300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214300]', @del_cmd = N'CALL [sp_MSdel_dboPL214300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214400', @source_owner = N'dbo', @source_object = N'PL214400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214400]', @del_cmd = N'CALL [sp_MSdel_dboPL214400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214500', @source_owner = N'dbo', @source_object = N'PL214500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214500]', @del_cmd = N'CALL [sp_MSdel_dboPL214500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214600', @source_owner = N'dbo', @source_object = N'PL214600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214600]', @del_cmd = N'CALL [sp_MSdel_dboPL214600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214700', @source_owner = N'dbo', @source_object = N'PL214700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214700]', @del_cmd = N'CALL [sp_MSdel_dboPL214700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214800', @source_owner = N'dbo', @source_object = N'PL214800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214800]', @del_cmd = N'CALL [sp_MSdel_dboPL214800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214900', @source_owner = N'dbo', @source_object = N'PL214900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214900]', @del_cmd = N'CALL [sp_MSdel_dboPL214900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214L00', @source_owner = N'dbo', @source_object = N'PL214L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214L00]', @del_cmd = N'CALL [sp_MSdel_dboPL214L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214M00', @source_owner = N'dbo', @source_object = N'PL214M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214M00]', @del_cmd = N'CALL [sp_MSdel_dboPL214M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214N00', @source_owner = N'dbo', @source_object = N'PL214N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214N00]', @del_cmd = N'CALL [sp_MSdel_dboPL214N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL214P00', @source_owner = N'dbo', @source_object = N'PL214P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL214P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL214P00]', @del_cmd = N'CALL [sp_MSdel_dboPL214P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL214P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215000', @source_owner = N'dbo', @source_object = N'PL215000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215000]', @del_cmd = N'CALL [sp_MSdel_dboPL215000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215100', @source_owner = N'dbo', @source_object = N'PL215100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215100]', @del_cmd = N'CALL [sp_MSdel_dboPL215100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215200', @source_owner = N'dbo', @source_object = N'PL215200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215200]', @del_cmd = N'CALL [sp_MSdel_dboPL215200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215300', @source_owner = N'dbo', @source_object = N'PL215300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215300]', @del_cmd = N'CALL [sp_MSdel_dboPL215300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215400', @source_owner = N'dbo', @source_object = N'PL215400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215400]', @del_cmd = N'CALL [sp_MSdel_dboPL215400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215600', @source_owner = N'dbo', @source_object = N'PL215600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215600]', @del_cmd = N'CALL [sp_MSdel_dboPL215600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215700', @source_owner = N'dbo', @source_object = N'PL215700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215700]', @del_cmd = N'CALL [sp_MSdel_dboPL215700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215800', @source_owner = N'dbo', @source_object = N'PL215800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215800]', @del_cmd = N'CALL [sp_MSdel_dboPL215800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215900', @source_owner = N'dbo', @source_object = N'PL215900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215900]', @del_cmd = N'CALL [sp_MSdel_dboPL215900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215L00', @source_owner = N'dbo', @source_object = N'PL215L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215L00]', @del_cmd = N'CALL [sp_MSdel_dboPL215L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215M00', @source_owner = N'dbo', @source_object = N'PL215M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215M00]', @del_cmd = N'CALL [sp_MSdel_dboPL215M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL215N00', @source_owner = N'dbo', @source_object = N'PL215N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL215N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL215N00]', @del_cmd = N'CALL [sp_MSdel_dboPL215N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL215N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216000', @source_owner = N'dbo', @source_object = N'PL216000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216000]', @del_cmd = N'CALL [sp_MSdel_dboPL216000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216100', @source_owner = N'dbo', @source_object = N'PL216100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216100]', @del_cmd = N'CALL [sp_MSdel_dboPL216100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216200', @source_owner = N'dbo', @source_object = N'PL216200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216200]', @del_cmd = N'CALL [sp_MSdel_dboPL216200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216300', @source_owner = N'dbo', @source_object = N'PL216300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216300]', @del_cmd = N'CALL [sp_MSdel_dboPL216300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216400', @source_owner = N'dbo', @source_object = N'PL216400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216400]', @del_cmd = N'CALL [sp_MSdel_dboPL216400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216500', @source_owner = N'dbo', @source_object = N'PL216500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216500]', @del_cmd = N'CALL [sp_MSdel_dboPL216500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216600', @source_owner = N'dbo', @source_object = N'PL216600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216600]', @del_cmd = N'CALL [sp_MSdel_dboPL216600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216700', @source_owner = N'dbo', @source_object = N'PL216700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216700]', @del_cmd = N'CALL [sp_MSdel_dboPL216700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216900', @source_owner = N'dbo', @source_object = N'PL216900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216900]', @del_cmd = N'CALL [sp_MSdel_dboPL216900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216L00', @source_owner = N'dbo', @source_object = N'PL216L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216L00]', @del_cmd = N'CALL [sp_MSdel_dboPL216L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216M00', @source_owner = N'dbo', @source_object = N'PL216M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216M00]', @del_cmd = N'CALL [sp_MSdel_dboPL216M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL216N00', @source_owner = N'dbo', @source_object = N'PL216N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL216N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL216N00]', @del_cmd = N'CALL [sp_MSdel_dboPL216N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL216N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217000', @source_owner = N'dbo', @source_object = N'PL217000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217000]', @del_cmd = N'CALL [sp_MSdel_dboPL217000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217100', @source_owner = N'dbo', @source_object = N'PL217100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217100]', @del_cmd = N'CALL [sp_MSdel_dboPL217100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217200', @source_owner = N'dbo', @source_object = N'PL217200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217200]', @del_cmd = N'CALL [sp_MSdel_dboPL217200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217300', @source_owner = N'dbo', @source_object = N'PL217300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217300]', @del_cmd = N'CALL [sp_MSdel_dboPL217300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217400', @source_owner = N'dbo', @source_object = N'PL217400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217400]', @del_cmd = N'CALL [sp_MSdel_dboPL217400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217500', @source_owner = N'dbo', @source_object = N'PL217500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217500]', @del_cmd = N'CALL [sp_MSdel_dboPL217500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217600', @source_owner = N'dbo', @source_object = N'PL217600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217600]', @del_cmd = N'CALL [sp_MSdel_dboPL217600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217700', @source_owner = N'dbo', @source_object = N'PL217700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217700]', @del_cmd = N'CALL [sp_MSdel_dboPL217700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217800', @source_owner = N'dbo', @source_object = N'PL217800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217800]', @del_cmd = N'CALL [sp_MSdel_dboPL217800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217L00', @source_owner = N'dbo', @source_object = N'PL217L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217L00]', @del_cmd = N'CALL [sp_MSdel_dboPL217L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217M00', @source_owner = N'dbo', @source_object = N'PL217M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217M00]', @del_cmd = N'CALL [sp_MSdel_dboPL217M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL217N00', @source_owner = N'dbo', @source_object = N'PL217N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL217N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL217N00]', @del_cmd = N'CALL [sp_MSdel_dboPL217N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL217N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218000', @source_owner = N'dbo', @source_object = N'PL218000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218000]', @del_cmd = N'CALL [sp_MSdel_dboPL218000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218100', @source_owner = N'dbo', @source_object = N'PL218100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218100]', @del_cmd = N'CALL [sp_MSdel_dboPL218100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218300', @source_owner = N'dbo', @source_object = N'PL218300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218300]', @del_cmd = N'CALL [sp_MSdel_dboPL218300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218400', @source_owner = N'dbo', @source_object = N'PL218400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218400]', @del_cmd = N'CALL [sp_MSdel_dboPL218400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218500', @source_owner = N'dbo', @source_object = N'PL218500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218500]', @del_cmd = N'CALL [sp_MSdel_dboPL218500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218800', @source_owner = N'dbo', @source_object = N'PL218800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218800]', @del_cmd = N'CALL [sp_MSdel_dboPL218800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218900', @source_owner = N'dbo', @source_object = N'PL218900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218900]', @del_cmd = N'CALL [sp_MSdel_dboPL218900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218L00', @source_owner = N'dbo', @source_object = N'PL218L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218L00]', @del_cmd = N'CALL [sp_MSdel_dboPL218L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218M00', @source_owner = N'dbo', @source_object = N'PL218M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218M00]', @del_cmd = N'CALL [sp_MSdel_dboPL218M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL218N00', @source_owner = N'dbo', @source_object = N'PL218N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL218N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL218N00]', @del_cmd = N'CALL [sp_MSdel_dboPL218N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL218N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219000', @source_owner = N'dbo', @source_object = N'PL219000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219000]', @del_cmd = N'CALL [sp_MSdel_dboPL219000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219100', @source_owner = N'dbo', @source_object = N'PL219100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219100]', @del_cmd = N'CALL [sp_MSdel_dboPL219100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219200', @source_owner = N'dbo', @source_object = N'PL219200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219200]', @del_cmd = N'CALL [sp_MSdel_dboPL219200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219300', @source_owner = N'dbo', @source_object = N'PL219300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219300]', @del_cmd = N'CALL [sp_MSdel_dboPL219300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219400', @source_owner = N'dbo', @source_object = N'PL219400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219400]', @del_cmd = N'CALL [sp_MSdel_dboPL219400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219500', @source_owner = N'dbo', @source_object = N'PL219500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219500]', @del_cmd = N'CALL [sp_MSdel_dboPL219500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219600', @source_owner = N'dbo', @source_object = N'PL219600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219600]', @del_cmd = N'CALL [sp_MSdel_dboPL219600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219700', @source_owner = N'dbo', @source_object = N'PL219700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219700]', @del_cmd = N'CALL [sp_MSdel_dboPL219700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219900', @source_owner = N'dbo', @source_object = N'PL219900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219900]', @del_cmd = N'CALL [sp_MSdel_dboPL219900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219L00', @source_owner = N'dbo', @source_object = N'PL219L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219L00]', @del_cmd = N'CALL [sp_MSdel_dboPL219L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL219M00', @source_owner = N'dbo', @source_object = N'PL219M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219M00]', @del_cmd = N'CALL [sp_MSdel_dboPL219M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article =N'PL219N00', @source_owner = N'dbo', @source_object = N'PL219N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL219N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL219N00]', @del_cmd = N'CALL [sp_MSdel_dboPL219N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL219N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V100', @source_owner = N'dbo', @source_object = N'PL21V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V100]', @del_cmd = N'CALL [sp_MSdel_dboPL21V100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V200', @source_owner = N'dbo', @source_object = N'PL21V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V200]', @del_cmd = N'CALL [sp_MSdel_dboPL21V200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V300', @source_owner = N'dbo', @source_object = N'PL21V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V300]', @del_cmd = N'CALL [sp_MSdel_dboPL21V300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V400', @source_owner = N'dbo', @source_object = N'PL21V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V400]', @del_cmd = N'CALL [sp_MSdel_dboPL21V400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V700', @source_owner = N'dbo', @source_object = N'PL21V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V700]', @del_cmd = N'CALL [sp_MSdel_dboPL21V700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V800', @source_owner = N'dbo', @source_object = N'PL21V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V800]', @del_cmd = N'CALL [sp_MSdel_dboPL21V800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL21', @article = N'PL21V900', @source_owner = N'dbo', @source_object = N'PL21V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL21V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL21V900]', @del_cmd = N'CALL [sp_MSdel_dboPL21V900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL21V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaPL21', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaPL21', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

