-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSL21', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSL21', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSL21', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL21', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL21', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL21', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL21', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL21', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V500', @source_owner = N'dbo', @source_object = N'SL21V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V500]', @del_cmd = N'CALL [sp_MSdel_dboSL21V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219P00', @source_owner = N'dbo', @source_object = N'SL219P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219P00]', @del_cmd = N'CALL [sp_MSdel_dboSL219P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215P00', @source_owner = N'dbo', @source_object = N'SL215P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215P00]', @del_cmd = N'CALL [sp_MSdel_dboSL215P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216P00', @source_owner = N'dbo', @source_object = N'SL216P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216P00]', @del_cmd = N'CALL [sp_MSdel_dboSL216P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217P00', @source_owner = N'dbo', @source_object = N'SL217P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217P00]', @del_cmd = N'CALL [sp_MSdel_dboSL217P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218P00', @source_owner = N'dbo', @source_object = N'SL218P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218P00]', @del_cmd = N'CALL [sp_MSdel_dboSL218P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL210100', @source_owner = N'dbo', @source_object = N'SL210100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL210100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL210100]', @del_cmd = N'CALL [sp_MSdel_dboSL210100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL210100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212P00', @source_owner = N'dbo', @source_object = N'SL212P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212P00]', @del_cmd = N'CALL [sp_MSdel_dboSL212P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL210200', @source_owner = N'dbo', @source_object = N'SL210200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL210200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL210200]', @del_cmd = N'CALL [sp_MSdel_dboSL210200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL210200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL210500', @source_owner = N'dbo', @source_object = N'SL210500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL210500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL210500]', @del_cmd = N'CALL [sp_MSdel_dboSL210500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL210500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL210600', @source_owner = N'dbo', @source_object = N'SL210600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL210600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL210600]', @del_cmd = N'CALL [sp_MSdel_dboSL210600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL210600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL210700', @source_owner = N'dbo', @source_object = N'SL210700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL210700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL210700]', @del_cmd = N'CALL [sp_MSdel_dboSL210700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL210700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL210800', @source_owner = N'dbo', @source_object = N'SL210800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL210800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL210800]', @del_cmd = N'CALL [sp_MSdel_dboSL210800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL210800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL210900', @source_owner = N'dbo', @source_object = N'SL210900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL210900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL210900]', @del_cmd = N'CALL [sp_MSdel_dboSL210900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL210900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211000', @source_owner = N'dbo', @source_object = N'SL211000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211000]', @del_cmd = N'CALL [sp_MSdel_dboSL211000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211100', @source_owner = N'dbo', @source_object = N'SL211100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211100]', @del_cmd = N'CALL [sp_MSdel_dboSL211100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211200', @source_owner = N'dbo', @source_object = N'SL211200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211200]', @del_cmd = N'CALL [sp_MSdel_dboSL211200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211300', @source_owner = N'dbo', @source_object = N'SL211300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211300]', @del_cmd = N'CALL [sp_MSdel_dboSL211300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211400', @source_owner = N'dbo', @source_object = N'SL211400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211400]', @del_cmd = N'CALL [sp_MSdel_dboSL211400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211600', @source_owner = N'dbo', @source_object = N'SL211600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211600]', @del_cmd = N'CALL [sp_MSdel_dboSL211600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211900', @source_owner = N'dbo', @source_object = N'SL211900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211900]', @del_cmd = N'CALL [sp_MSdel_dboSL211900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211L00', @source_owner = N'dbo', @source_object = N'SL211L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211L00]', @del_cmd = N'CALL [sp_MSdel_dboSL211L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211M00', @source_owner = N'dbo', @source_object = N'SL211M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211M00]', @del_cmd = N'CALL [sp_MSdel_dboSL211M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211N00', @source_owner = N'dbo', @source_object = N'SL211N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211N00]', @del_cmd = N'CALL [sp_MSdel_dboSL211N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL211P00', @source_owner = N'dbo', @source_object = N'SL211P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL211P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL211P00]', @del_cmd = N'CALL [sp_MSdel_dboSL211P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL211P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212000', @source_owner = N'dbo', @source_object = N'SL212000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212000]', @del_cmd = N'CALL [sp_MSdel_dboSL212000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212100', @source_owner = N'dbo', @source_object = N'SL212100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212100]', @del_cmd = N'CALL [sp_MSdel_dboSL212100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212200', @source_owner = N'dbo', @source_object = N'SL212200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212200]', @del_cmd = N'CALL [sp_MSdel_dboSL212200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212300', @source_owner = N'dbo', @source_object = N'SL212300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212300]', @del_cmd = N'CALL [sp_MSdel_dboSL212300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212400', @source_owner = N'dbo', @source_object = N'SL212400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212400]', @del_cmd = N'CALL [sp_MSdel_dboSL212400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212500', @source_owner = N'dbo', @source_object = N'SL212500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212500]', @del_cmd = N'CALL [sp_MSdel_dboSL212500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212600', @source_owner = N'dbo', @source_object = N'SL212600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212600]', @del_cmd = N'CALL [sp_MSdel_dboSL212600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212700', @source_owner = N'dbo', @source_object = N'SL212700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212700]', @del_cmd = N'CALL [sp_MSdel_dboSL212700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212800', @source_owner = N'dbo', @source_object = N'SL212800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212800]', @del_cmd = N'CALL [sp_MSdel_dboSL212800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212900', @source_owner = N'dbo', @source_object = N'SL212900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212900]', @del_cmd = N'CALL [sp_MSdel_dboSL212900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212L00', @source_owner = N'dbo', @source_object = N'SL212L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212L00]', @del_cmd = N'CALL [sp_MSdel_dboSL212L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212M00', @source_owner = N'dbo', @source_object = N'SL212M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212M00]', @del_cmd = N'CALL [sp_MSdel_dboSL212M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL212N00', @source_owner = N'dbo', @source_object = N'SL212N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL212N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL212N00]', @del_cmd = N'CALL [sp_MSdel_dboSL212N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL212N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213000', @source_owner = N'dbo', @source_object = N'SL213000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213000]', @del_cmd = N'CALL [sp_MSdel_dboSL213000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213100', @source_owner = N'dbo', @source_object = N'SL213100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213100]', @del_cmd = N'CALL [sp_MSdel_dboSL213100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213500', @source_owner = N'dbo', @source_object = N'SL213500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213500]', @del_cmd = N'CALL [sp_MSdel_dboSL213500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213600', @source_owner = N'dbo', @source_object = N'SL213600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213600]', @del_cmd = N'CALL [sp_MSdel_dboSL213600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213900', @source_owner = N'dbo', @source_object = N'SL213900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213900]', @del_cmd = N'CALL [sp_MSdel_dboSL213900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213L00', @source_owner = N'dbo', @source_object = N'SL213L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213L00]', @del_cmd = N'CALL [sp_MSdel_dboSL213L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213M00', @source_owner = N'dbo', @source_object = N'SL213M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213M00]', @del_cmd = N'CALL [sp_MSdel_dboSL213M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213N00', @source_owner = N'dbo', @source_object = N'SL213N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213N00]', @del_cmd = N'CALL [sp_MSdel_dboSL213N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL213P00', @source_owner = N'dbo', @source_object = N'SL213P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL213P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL213P00]', @del_cmd = N'CALL [sp_MSdel_dboSL213P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL213P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214000', @source_owner = N'dbo', @source_object = N'SL214000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214000]', @del_cmd = N'CALL [sp_MSdel_dboSL214000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214100', @source_owner = N'dbo', @source_object = N'SL214100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214100]', @del_cmd = N'CALL [sp_MSdel_dboSL214100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214200', @source_owner = N'dbo', @source_object = N'SL214200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214200]', @del_cmd = N'CALL [sp_MSdel_dboSL214200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214300', @source_owner = N'dbo', @source_object = N'SL214300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214300]', @del_cmd = N'CALL [sp_MSdel_dboSL214300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214400', @source_owner = N'dbo', @source_object = N'SL214400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214400]', @del_cmd = N'CALL [sp_MSdel_dboSL214400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214500', @source_owner = N'dbo', @source_object = N'SL214500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214500]', @del_cmd = N'CALL [sp_MSdel_dboSL214500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214600', @source_owner = N'dbo', @source_object = N'SL214600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214600]', @del_cmd = N'CALL [sp_MSdel_dboSL214600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214700', @source_owner = N'dbo', @source_object = N'SL214700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214700]', @del_cmd = N'CALL [sp_MSdel_dboSL214700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214800', @source_owner = N'dbo', @source_object = N'SL214800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214800]', @del_cmd = N'CALL [sp_MSdel_dboSL214800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214900', @source_owner = N'dbo', @source_object = N'SL214900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214900]', @del_cmd = N'CALL [sp_MSdel_dboSL214900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214L00', @source_owner = N'dbo', @source_object = N'SL214L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214L00]', @del_cmd = N'CALL [sp_MSdel_dboSL214L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214M00', @source_owner = N'dbo', @source_object = N'SL214M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214M00]', @del_cmd = N'CALL [sp_MSdel_dboSL214M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214N00', @source_owner = N'dbo', @source_object = N'SL214N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214N00]', @del_cmd = N'CALL [sp_MSdel_dboSL214N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL214P00', @source_owner = N'dbo', @source_object = N'SL214P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL214P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL214P00]', @del_cmd = N'CALL [sp_MSdel_dboSL214P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL214P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215000', @source_owner = N'dbo', @source_object = N'SL215000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215000]', @del_cmd = N'CALL [sp_MSdel_dboSL215000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215100', @source_owner = N'dbo', @source_object = N'SL215100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215100]', @del_cmd = N'CALL [sp_MSdel_dboSL215100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215200', @source_owner = N'dbo', @source_object = N'SL215200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215200]', @del_cmd = N'CALL [sp_MSdel_dboSL215200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215300', @source_owner = N'dbo', @source_object = N'SL215300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215300]', @del_cmd = N'CALL [sp_MSdel_dboSL215300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215400', @source_owner = N'dbo', @source_object = N'SL215400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215400]', @del_cmd = N'CALL [sp_MSdel_dboSL215400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215600', @source_owner = N'dbo', @source_object = N'SL215600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215600]', @del_cmd = N'CALL [sp_MSdel_dboSL215600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215700', @source_owner = N'dbo', @source_object = N'SL215700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215700]', @del_cmd = N'CALL [sp_MSdel_dboSL215700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215800', @source_owner = N'dbo', @source_object = N'SL215800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215800]', @del_cmd = N'CALL [sp_MSdel_dboSL215800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215900', @source_owner = N'dbo', @source_object = N'SL215900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215900]', @del_cmd = N'CALL [sp_MSdel_dboSL215900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215L00', @source_owner = N'dbo', @source_object = N'SL215L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215L00]', @del_cmd = N'CALL [sp_MSdel_dboSL215L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215M00', @source_owner = N'dbo', @source_object = N'SL215M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215M00]', @del_cmd = N'CALL [sp_MSdel_dboSL215M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL215N00', @source_owner = N'dbo', @source_object = N'SL215N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL215N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL215N00]', @del_cmd = N'CALL [sp_MSdel_dboSL215N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL215N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216000', @source_owner = N'dbo', @source_object = N'SL216000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216000]', @del_cmd = N'CALL [sp_MSdel_dboSL216000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216100', @source_owner = N'dbo', @source_object = N'SL216100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216100]', @del_cmd = N'CALL [sp_MSdel_dboSL216100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216200', @source_owner = N'dbo', @source_object = N'SL216200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216200]', @del_cmd = N'CALL [sp_MSdel_dboSL216200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216300', @source_owner = N'dbo', @source_object = N'SL216300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216300]', @del_cmd = N'CALL [sp_MSdel_dboSL216300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216400', @source_owner = N'dbo', @source_object = N'SL216400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216400]', @del_cmd = N'CALL [sp_MSdel_dboSL216400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216500', @source_owner = N'dbo', @source_object = N'SL216500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216500]', @del_cmd = N'CALL [sp_MSdel_dboSL216500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216600', @source_owner = N'dbo', @source_object = N'SL216600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216600]', @del_cmd = N'CALL [sp_MSdel_dboSL216600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216700', @source_owner = N'dbo', @source_object = N'SL216700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216700]', @del_cmd = N'CALL [sp_MSdel_dboSL216700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216900', @source_owner = N'dbo', @source_object = N'SL216900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216900]', @del_cmd = N'CALL [sp_MSdel_dboSL216900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216L00', @source_owner = N'dbo', @source_object = N'SL216L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216L00]', @del_cmd = N'CALL [sp_MSdel_dboSL216L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216M00', @source_owner = N'dbo', @source_object = N'SL216M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216M00]', @del_cmd = N'CALL [sp_MSdel_dboSL216M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL216N00', @source_owner = N'dbo', @source_object = N'SL216N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL216N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL216N00]', @del_cmd = N'CALL [sp_MSdel_dboSL216N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL216N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217000', @source_owner = N'dbo', @source_object = N'SL217000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217000]', @del_cmd = N'CALL [sp_MSdel_dboSL217000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217100', @source_owner = N'dbo', @source_object = N'SL217100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217100]', @del_cmd = N'CALL [sp_MSdel_dboSL217100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217200', @source_owner = N'dbo', @source_object = N'SL217200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217200]', @del_cmd = N'CALL [sp_MSdel_dboSL217200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217300', @source_owner = N'dbo', @source_object = N'SL217300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217300]', @del_cmd = N'CALL [sp_MSdel_dboSL217300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217400', @source_owner = N'dbo', @source_object = N'SL217400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217400]', @del_cmd = N'CALL [sp_MSdel_dboSL217400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217500', @source_owner = N'dbo', @source_object = N'SL217500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217500]', @del_cmd = N'CALL [sp_MSdel_dboSL217500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217600', @source_owner = N'dbo', @source_object = N'SL217600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217600]', @del_cmd = N'CALL [sp_MSdel_dboSL217600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217700', @source_owner = N'dbo', @source_object = N'SL217700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217700]', @del_cmd = N'CALL [sp_MSdel_dboSL217700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217800', @source_owner = N'dbo', @source_object = N'SL217800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217800]', @del_cmd = N'CALL [sp_MSdel_dboSL217800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217L00', @source_owner = N'dbo', @source_object = N'SL217L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217L00]', @del_cmd = N'CALL [sp_MSdel_dboSL217L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217M00', @source_owner = N'dbo', @source_object = N'SL217M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217M00]', @del_cmd = N'CALL [sp_MSdel_dboSL217M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL217N00', @source_owner = N'dbo', @source_object = N'SL217N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL217N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL217N00]', @del_cmd = N'CALL [sp_MSdel_dboSL217N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL217N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218000', @source_owner = N'dbo', @source_object = N'SL218000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218000]', @del_cmd = N'CALL [sp_MSdel_dboSL218000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218100', @source_owner = N'dbo', @source_object = N'SL218100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218100]', @del_cmd = N'CALL [sp_MSdel_dboSL218100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218300', @source_owner = N'dbo', @source_object = N'SL218300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218300]', @del_cmd = N'CALL [sp_MSdel_dboSL218300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218400', @source_owner = N'dbo', @source_object = N'SL218400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218400]', @del_cmd = N'CALL [sp_MSdel_dboSL218400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218500', @source_owner = N'dbo', @source_object = N'SL218500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218500]', @del_cmd = N'CALL [sp_MSdel_dboSL218500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218800', @source_owner = N'dbo', @source_object = N'SL218800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218800]', @del_cmd = N'CALL [sp_MSdel_dboSL218800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218900', @source_owner = N'dbo', @source_object = N'SL218900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218900]', @del_cmd = N'CALL [sp_MSdel_dboSL218900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218L00', @source_owner = N'dbo', @source_object = N'SL218L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218L00]', @del_cmd = N'CALL [sp_MSdel_dboSL218L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218M00', @source_owner = N'dbo', @source_object = N'SL218M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218M00]', @del_cmd = N'CALL [sp_MSdel_dboSL218M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL218N00', @source_owner = N'dbo', @source_object = N'SL218N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL218N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL218N00]', @del_cmd = N'CALL [sp_MSdel_dboSL218N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL218N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219000', @source_owner = N'dbo', @source_object = N'SL219000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219000]', @del_cmd = N'CALL [sp_MSdel_dboSL219000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219100', @source_owner = N'dbo', @source_object = N'SL219100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219100]', @del_cmd = N'CALL [sp_MSdel_dboSL219100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219200', @source_owner = N'dbo', @source_object = N'SL219200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219200]', @del_cmd = N'CALL [sp_MSdel_dboSL219200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219300', @source_owner = N'dbo', @source_object = N'SL219300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219300]', @del_cmd = N'CALL [sp_MSdel_dboSL219300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219400', @source_owner = N'dbo', @source_object = N'SL219400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219400]', @del_cmd = N'CALL [sp_MSdel_dboSL219400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219500', @source_owner = N'dbo', @source_object = N'SL219500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219500]', @del_cmd = N'CALL [sp_MSdel_dboSL219500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219600', @source_owner = N'dbo', @source_object = N'SL219600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219600]', @del_cmd = N'CALL [sp_MSdel_dboSL219600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219700', @source_owner = N'dbo', @source_object = N'SL219700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219700]', @del_cmd = N'CALL [sp_MSdel_dboSL219700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219900', @source_owner = N'dbo', @source_object = N'SL219900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219900]', @del_cmd = N'CALL [sp_MSdel_dboSL219900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219L00', @source_owner = N'dbo', @source_object = N'SL219L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219L00]', @del_cmd = N'CALL [sp_MSdel_dboSL219L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL219M00', @source_owner = N'dbo', @source_object = N'SL219M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219M00]', @del_cmd = N'CALL [sp_MSdel_dboSL219M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article =N'SL219N00', @source_owner = N'dbo', @source_object = N'SL219N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL219N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL219N00]', @del_cmd = N'CALL [sp_MSdel_dboSL219N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL219N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V100', @source_owner = N'dbo', @source_object = N'SL21V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V100]', @del_cmd = N'CALL [sp_MSdel_dboSL21V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V200', @source_owner = N'dbo', @source_object = N'SL21V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V200]', @del_cmd = N'CALL [sp_MSdel_dboSL21V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V300', @source_owner = N'dbo', @source_object = N'SL21V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V300]', @del_cmd = N'CALL [sp_MSdel_dboSL21V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V400', @source_owner = N'dbo', @source_object = N'SL21V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V400]', @del_cmd = N'CALL [sp_MSdel_dboSL21V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V700', @source_owner = N'dbo', @source_object = N'SL21V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V700]', @del_cmd = N'CALL [sp_MSdel_dboSL21V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V800', @source_owner = N'dbo', @source_object = N'SL21V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V800]', @del_cmd = N'CALL [sp_MSdel_dboSL21V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL21', @article = N'SL21V900', @source_owner = N'dbo', @source_object = N'SL21V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL21V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL21V900]', @del_cmd = N'CALL [sp_MSdel_dboSL21V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL21V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSL21', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSL21', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

