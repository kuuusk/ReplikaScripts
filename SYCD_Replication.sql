-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSYCD', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSYCD', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSYCD', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCD', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCD', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCD', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCD', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCD', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV500', @source_owner = N'dbo', @source_object = N'SYCDV500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV500]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9P00', @source_owner = N'dbo', @source_object = N'SYCD9P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5P00', @source_owner = N'dbo', @source_object = N'SYCD5P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6P00', @source_owner = N'dbo', @source_object = N'SYCD6P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7P00', @source_owner = N'dbo', @source_object = N'SYCD7P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8P00', @source_owner = N'dbo', @source_object = N'SYCD8P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD0100', @source_owner = N'dbo', @source_object = N'SYCD0100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD0100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD0100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD0100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD0100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2P00', @source_owner = N'dbo', @source_object = N'SYCD2P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD0200', @source_owner = N'dbo', @source_object = N'SYCD0200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD0200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD0200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD0200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD0200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD0500', @source_owner = N'dbo', @source_object = N'SYCD0500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD0500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD0500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD0500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD0500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD0600', @source_owner = N'dbo', @source_object = N'SYCD0600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD0600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD0600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD0600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD0600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD0700', @source_owner = N'dbo', @source_object = N'SYCD0700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD0700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD0700]', @del_cmd = N'CALL [sp_MSdel_dboSYCD0700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD0700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD0800', @source_owner = N'dbo', @source_object = N'SYCD0800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD0800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD0800]', @del_cmd = N'CALL [sp_MSdel_dboSYCD0800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD0800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD0900', @source_owner = N'dbo', @source_object = N'SYCD0900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD0900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD0900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD0900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD0900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1000', @source_owner = N'dbo', @source_object = N'SYCD1000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1100', @source_owner = N'dbo', @source_object = N'SYCD1100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1200', @source_owner = N'dbo', @source_object = N'SYCD1200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1300', @source_owner = N'dbo', @source_object = N'SYCD1300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1400', @source_owner = N'dbo', @source_object = N'SYCD1400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1600', @source_owner = N'dbo', @source_object = N'SYCD1600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1900', @source_owner = N'dbo', @source_object = N'SYCD1900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1L00', @source_owner = N'dbo', @source_object = N'SYCD1L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1M00', @source_owner = N'dbo', @source_object = N'SYCD1M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1N00', @source_owner = N'dbo', @source_object = N'SYCD1N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD1P00', @source_owner = N'dbo', @source_object = N'SYCD1P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD1P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD1P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD1P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD1P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2000', @source_owner = N'dbo', @source_object = N'SYCD2000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2100', @source_owner = N'dbo', @source_object = N'SYCD2100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2200', @source_owner = N'dbo', @source_object = N'SYCD2200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2300', @source_owner = N'dbo', @source_object = N'SYCD2300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2400', @source_owner = N'dbo', @source_object = N'SYCD2400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2500', @source_owner = N'dbo', @source_object = N'SYCD2500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2600', @source_owner = N'dbo', @source_object = N'SYCD2600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2700', @source_owner = N'dbo', @source_object = N'SYCD2700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2700]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2800', @source_owner = N'dbo', @source_object = N'SYCD2800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2800]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2900', @source_owner = N'dbo', @source_object = N'SYCD2900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2L00', @source_owner = N'dbo', @source_object = N'SYCD2L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2M00', @source_owner = N'dbo', @source_object = N'SYCD2M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD2N00', @source_owner = N'dbo', @source_object = N'SYCD2N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD2N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD2N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD2N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD2N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3000', @source_owner = N'dbo', @source_object = N'SYCD3000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3100', @source_owner = N'dbo', @source_object = N'SYCD3100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3500', @source_owner = N'dbo', @source_object = N'SYCD3500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3600', @source_owner = N'dbo', @source_object = N'SYCD3600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3900', @source_owner = N'dbo', @source_object = N'SYCD3900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3L00', @source_owner = N'dbo', @source_object = N'SYCD3L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3M00', @source_owner = N'dbo', @source_object = N'SYCD3M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3N00', @source_owner = N'dbo', @source_object = N'SYCD3N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD3P00', @source_owner = N'dbo', @source_object = N'SYCD3P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD3P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD3P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD3P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD3P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4000', @source_owner = N'dbo', @source_object = N'SYCD4000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4100', @source_owner = N'dbo', @source_object = N'SYCD4100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4200', @source_owner = N'dbo', @source_object = N'SYCD4200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4300', @source_owner = N'dbo', @source_object = N'SYCD4300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4400', @source_owner = N'dbo', @source_object = N'SYCD4400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4500', @source_owner = N'dbo', @source_object = N'SYCD4500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4600', @source_owner = N'dbo', @source_object = N'SYCD4600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4700', @source_owner = N'dbo', @source_object = N'SYCD4700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4700]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4800', @source_owner = N'dbo', @source_object = N'SYCD4800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4800]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4900', @source_owner = N'dbo', @source_object = N'SYCD4900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4L00', @source_owner = N'dbo', @source_object = N'SYCD4L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4M00', @source_owner = N'dbo', @source_object = N'SYCD4M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4N00', @source_owner = N'dbo', @source_object = N'SYCD4N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD4P00', @source_owner = N'dbo', @source_object = N'SYCD4P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD4P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD4P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD4P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD4P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5000', @source_owner = N'dbo', @source_object = N'SYCD5000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5100', @source_owner = N'dbo', @source_object = N'SYCD5100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5200', @source_owner = N'dbo', @source_object = N'SYCD5200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5300', @source_owner = N'dbo', @source_object = N'SYCD5300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5400', @source_owner = N'dbo', @source_object = N'SYCD5400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5600', @source_owner = N'dbo', @source_object = N'SYCD5600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5700', @source_owner = N'dbo', @source_object = N'SYCD5700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5700]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5800', @source_owner = N'dbo', @source_object = N'SYCD5800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5800]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5900', @source_owner = N'dbo', @source_object = N'SYCD5900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5L00', @source_owner = N'dbo', @source_object = N'SYCD5L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5M00', @source_owner = N'dbo', @source_object = N'SYCD5M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD5N00', @source_owner = N'dbo', @source_object = N'SYCD5N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD5N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD5N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD5N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD5N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6000', @source_owner = N'dbo', @source_object = N'SYCD6000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6100', @source_owner = N'dbo', @source_object = N'SYCD6100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6200', @source_owner = N'dbo', @source_object = N'SYCD6200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6300', @source_owner = N'dbo', @source_object = N'SYCD6300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6400', @source_owner = N'dbo', @source_object = N'SYCD6400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6500', @source_owner = N'dbo', @source_object = N'SYCD6500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6600', @source_owner = N'dbo', @source_object = N'SYCD6600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6700', @source_owner = N'dbo', @source_object = N'SYCD6700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6700]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6900', @source_owner = N'dbo', @source_object = N'SYCD6900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6L00', @source_owner = N'dbo', @source_object = N'SYCD6L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6M00', @source_owner = N'dbo', @source_object = N'SYCD6M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD6N00', @source_owner = N'dbo', @source_object = N'SYCD6N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD6N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD6N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD6N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD6N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7000', @source_owner = N'dbo', @source_object = N'SYCD7000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7100', @source_owner = N'dbo', @source_object = N'SYCD7100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7200', @source_owner = N'dbo', @source_object = N'SYCD7200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7300', @source_owner = N'dbo', @source_object = N'SYCD7300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7400', @source_owner = N'dbo', @source_object = N'SYCD7400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7500', @source_owner = N'dbo', @source_object = N'SYCD7500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7600', @source_owner = N'dbo', @source_object = N'SYCD7600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7700', @source_owner = N'dbo', @source_object = N'SYCD7700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7700]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7800', @source_owner = N'dbo', @source_object = N'SYCD7800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7800]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7L00', @source_owner = N'dbo', @source_object = N'SYCD7L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7M00', @source_owner = N'dbo', @source_object = N'SYCD7M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD7N00', @source_owner = N'dbo', @source_object = N'SYCD7N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD7N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD7N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD7N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD7N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8000', @source_owner = N'dbo', @source_object = N'SYCD8000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8100', @source_owner = N'dbo', @source_object = N'SYCD8100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8300', @source_owner = N'dbo', @source_object = N'SYCD8300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8400', @source_owner = N'dbo', @source_object = N'SYCD8400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8500', @source_owner = N'dbo', @source_object = N'SYCD8500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8800', @source_owner = N'dbo', @source_object = N'SYCD8800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8800]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8900', @source_owner = N'dbo', @source_object = N'SYCD8900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8L00', @source_owner = N'dbo', @source_object = N'SYCD8L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8M00', @source_owner = N'dbo', @source_object = N'SYCD8M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD8N00', @source_owner = N'dbo', @source_object = N'SYCD8N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD8N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD8N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD8N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD8N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9000', @source_owner = N'dbo', @source_object = N'SYCD9000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9000]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9100', @source_owner = N'dbo', @source_object = N'SYCD9100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9100]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9200', @source_owner = N'dbo', @source_object = N'SYCD9200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9200]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9300', @source_owner = N'dbo', @source_object = N'SYCD9300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9300]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9400', @source_owner = N'dbo', @source_object = N'SYCD9400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9400]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9500', @source_owner = N'dbo', @source_object = N'SYCD9500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9500]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9600', @source_owner = N'dbo', @source_object = N'SYCD9600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9600]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9700', @source_owner = N'dbo', @source_object = N'SYCD9700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9700]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9900', @source_owner = N'dbo', @source_object = N'SYCD9900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9900]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9L00', @source_owner = N'dbo', @source_object = N'SYCD9L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCD9M00', @source_owner = N'dbo', @source_object = N'SYCD9M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article =N'SYCD9N00', @source_owner = N'dbo', @source_object = N'SYCD9N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCD9N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCD9N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCD9N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCD9N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV100', @source_owner = N'dbo', @source_object = N'SYCDV100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV100]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV200', @source_owner = N'dbo', @source_object = N'SYCDV200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV200]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV300', @source_owner = N'dbo', @source_object = N'SYCDV300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV300]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV400', @source_owner = N'dbo', @source_object = N'SYCDV400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV400]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV700', @source_owner = N'dbo', @source_object = N'SYCDV700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV700]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV800', @source_owner = N'dbo', @source_object = N'SYCDV800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV800]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCD', @article = N'SYCDV900', @source_owner = N'dbo', @source_object = N'SYCDV900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCDV900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCDV900]', @del_cmd = N'CALL [sp_MSdel_dboSYCDV900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCDV900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSYCD', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSYCD', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

