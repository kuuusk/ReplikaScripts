-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSYCH', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSYCH', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSYCH', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCH', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCH', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCH', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCH', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSYCH', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV500', @source_owner = N'dbo', @source_object = N'SYCHV500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV500]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9P00', @source_owner = N'dbo', @source_object = N'SYCH9P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5P00', @source_owner = N'dbo', @source_object = N'SYCH5P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6P00', @source_owner = N'dbo', @source_object = N'SYCH6P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7P00', @source_owner = N'dbo', @source_object = N'SYCH7P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8P00', @source_owner = N'dbo', @source_object = N'SYCH8P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH0100', @source_owner = N'dbo', @source_object = N'SYCH0100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH0100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH0100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH0100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH0100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2P00', @source_owner = N'dbo', @source_object = N'SYCH2P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2P00]'
GO

use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH0200', @source_owner = N'dbo', @source_object = N'SYCH0200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH0200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH0200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH0200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH0200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH0500', @source_owner = N'dbo', @source_object = N'SYCH0500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH0500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH0500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH0500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH0500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH0600', @source_owner = N'dbo', @source_object = N'SYCH0600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH0600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH0600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH0600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH0600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH0700', @source_owner = N'dbo', @source_object = N'SYCH0700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH0700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH0700]', @del_cmd = N'CALL [sp_MSdel_dboSYCH0700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH0700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH0800', @source_owner = N'dbo', @source_object = N'SYCH0800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH0800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH0800]', @del_cmd = N'CALL [sp_MSdel_dboSYCH0800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH0800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH0900', @source_owner = N'dbo', @source_object = N'SYCH0900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH0900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH0900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH0900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH0900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1000', @source_owner = N'dbo', @source_object = N'SYCH1000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1100', @source_owner = N'dbo', @source_object = N'SYCH1100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1200', @source_owner = N'dbo', @source_object = N'SYCH1200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1300', @source_owner = N'dbo', @source_object = N'SYCH1300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1400', @source_owner = N'dbo', @source_object = N'SYCH1400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1600', @source_owner = N'dbo', @source_object = N'SYCH1600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1900', @source_owner = N'dbo', @source_object = N'SYCH1900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1L00', @source_owner = N'dbo', @source_object = N'SYCH1L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1M00', @source_owner = N'dbo', @source_object = N'SYCH1M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1N00', @source_owner = N'dbo', @source_object = N'SYCH1N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH1P00', @source_owner = N'dbo', @source_object = N'SYCH1P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH1P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH1P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH1P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH1P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2000', @source_owner = N'dbo', @source_object = N'SYCH2000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2100', @source_owner = N'dbo', @source_object = N'SYCH2100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2200', @source_owner = N'dbo', @source_object = N'SYCH2200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2300', @source_owner = N'dbo', @source_object = N'SYCH2300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2400', @source_owner = N'dbo', @source_object = N'SYCH2400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2500', @source_owner = N'dbo', @source_object = N'SYCH2500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2600', @source_owner = N'dbo', @source_object = N'SYCH2600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2700', @source_owner = N'dbo', @source_object = N'SYCH2700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2700]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2800', @source_owner = N'dbo', @source_object = N'SYCH2800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2800]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2900', @source_owner = N'dbo', @source_object = N'SYCH2900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2L00', @source_owner = N'dbo', @source_object = N'SYCH2L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2M00', @source_owner = N'dbo', @source_object = N'SYCH2M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH2N00', @source_owner = N'dbo', @source_object = N'SYCH2N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH2N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH2N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH2N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH2N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3000', @source_owner = N'dbo', @source_object = N'SYCH3000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3100', @source_owner = N'dbo', @source_object = N'SYCH3100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3500', @source_owner = N'dbo', @source_object = N'SYCH3500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3600', @source_owner = N'dbo', @source_object = N'SYCH3600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3900', @source_owner = N'dbo', @source_object = N'SYCH3900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3L00', @source_owner = N'dbo', @source_object = N'SYCH3L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3M00', @source_owner = N'dbo', @source_object = N'SYCH3M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3N00', @source_owner = N'dbo', @source_object = N'SYCH3N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH3P00', @source_owner = N'dbo', @source_object = N'SYCH3P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH3P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH3P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH3P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH3P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4000', @source_owner = N'dbo', @source_object = N'SYCH4000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4100', @source_owner = N'dbo', @source_object = N'SYCH4100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4200', @source_owner = N'dbo', @source_object = N'SYCH4200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4300', @source_owner = N'dbo', @source_object = N'SYCH4300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4400', @source_owner = N'dbo', @source_object = N'SYCH4400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4500', @source_owner = N'dbo', @source_object = N'SYCH4500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4600', @source_owner = N'dbo', @source_object = N'SYCH4600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4700', @source_owner = N'dbo', @source_object = N'SYCH4700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4700]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4800', @source_owner = N'dbo', @source_object = N'SYCH4800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4800]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4900', @source_owner = N'dbo', @source_object = N'SYCH4900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4L00', @source_owner = N'dbo', @source_object = N'SYCH4L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4M00', @source_owner = N'dbo', @source_object = N'SYCH4M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4N00', @source_owner = N'dbo', @source_object = N'SYCH4N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH4P00', @source_owner = N'dbo', @source_object = N'SYCH4P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH4P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH4P00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH4P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH4P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5000', @source_owner = N'dbo', @source_object = N'SYCH5000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5100', @source_owner = N'dbo', @source_object = N'SYCH5100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5200', @source_owner = N'dbo', @source_object = N'SYCH5200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5300', @source_owner = N'dbo', @source_object = N'SYCH5300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5400', @source_owner = N'dbo', @source_object = N'SYCH5400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5600', @source_owner = N'dbo', @source_object = N'SYCH5600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5700', @source_owner = N'dbo', @source_object = N'SYCH5700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5700]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5800', @source_owner = N'dbo', @source_object = N'SYCH5800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5800]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5900', @source_owner = N'dbo', @source_object = N'SYCH5900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5L00', @source_owner = N'dbo', @source_object = N'SYCH5L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5M00', @source_owner = N'dbo', @source_object = N'SYCH5M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH5N00', @source_owner = N'dbo', @source_object = N'SYCH5N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH5N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH5N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH5N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH5N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6000', @source_owner = N'dbo', @source_object = N'SYCH6000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6100', @source_owner = N'dbo', @source_object = N'SYCH6100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6200', @source_owner = N'dbo', @source_object = N'SYCH6200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6300', @source_owner = N'dbo', @source_object = N'SYCH6300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6400', @source_owner = N'dbo', @source_object = N'SYCH6400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6500', @source_owner = N'dbo', @source_object = N'SYCH6500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6600', @source_owner = N'dbo', @source_object = N'SYCH6600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6700', @source_owner = N'dbo', @source_object = N'SYCH6700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6700]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6900', @source_owner = N'dbo', @source_object = N'SYCH6900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6L00', @source_owner = N'dbo', @source_object = N'SYCH6L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6M00', @source_owner = N'dbo', @source_object = N'SYCH6M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH6N00', @source_owner = N'dbo', @source_object = N'SYCH6N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH6N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH6N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH6N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH6N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7000', @source_owner = N'dbo', @source_object = N'SYCH7000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7100', @source_owner = N'dbo', @source_object = N'SYCH7100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7200', @source_owner = N'dbo', @source_object = N'SYCH7200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7300', @source_owner = N'dbo', @source_object = N'SYCH7300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7400', @source_owner = N'dbo', @source_object = N'SYCH7400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7500', @source_owner = N'dbo', @source_object = N'SYCH7500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7600', @source_owner = N'dbo', @source_object = N'SYCH7600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7700', @source_owner = N'dbo', @source_object = N'SYCH7700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7700]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7800', @source_owner = N'dbo', @source_object = N'SYCH7800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7800]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7L00', @source_owner = N'dbo', @source_object = N'SYCH7L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7M00', @source_owner = N'dbo', @source_object = N'SYCH7M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH7N00', @source_owner = N'dbo', @source_object = N'SYCH7N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH7N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH7N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH7N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH7N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8000', @source_owner = N'dbo', @source_object = N'SYCH8000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8100', @source_owner = N'dbo', @source_object = N'SYCH8100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8300', @source_owner = N'dbo', @source_object = N'SYCH8300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8400', @source_owner = N'dbo', @source_object = N'SYCH8400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8500', @source_owner = N'dbo', @source_object = N'SYCH8500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8800', @source_owner = N'dbo', @source_object = N'SYCH8800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8800]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8900', @source_owner = N'dbo', @source_object = N'SYCH8900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8L00', @source_owner = N'dbo', @source_object = N'SYCH8L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8M00', @source_owner = N'dbo', @source_object = N'SYCH8M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH8N00', @source_owner = N'dbo', @source_object = N'SYCH8N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH8N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH8N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH8N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH8N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9000', @source_owner = N'dbo', @source_object = N'SYCH9000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9000]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9000]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9100', @source_owner = N'dbo', @source_object = N'SYCH9100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9100]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9200', @source_owner = N'dbo', @source_object = N'SYCH9200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9200]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9300', @source_owner = N'dbo', @source_object = N'SYCH9300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9300]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9400', @source_owner = N'dbo', @source_object = N'SYCH9400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9400]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9500', @source_owner = N'dbo', @source_object = N'SYCH9500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9500]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9500]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9600', @source_owner = N'dbo', @source_object = N'SYCH9600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9600]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9600]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9700', @source_owner = N'dbo', @source_object = N'SYCH9700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9700]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9900', @source_owner = N'dbo', @source_object = N'SYCH9900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9900]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9L00', @source_owner = N'dbo', @source_object = N'SYCH9L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9L00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCH9M00', @source_owner = N'dbo', @source_object = N'SYCH9M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9M00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article =N'SYCH9N00', @source_owner = N'dbo', @source_object = N'SYCH9N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCH9N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCH9N00]', @del_cmd = N'CALL [sp_MSdel_dboSYCH9N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCH9N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV100', @source_owner = N'dbo', @source_object = N'SYCHV100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV100]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV100]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV200', @source_owner = N'dbo', @source_object = N'SYCHV200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV200]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV200]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV300', @source_owner = N'dbo', @source_object = N'SYCHV300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV300]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV300]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV400', @source_owner = N'dbo', @source_object = N'SYCHV400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV400]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV400]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV700', @source_owner = N'dbo', @source_object = N'SYCHV700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV700]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV700]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV800', @source_owner = N'dbo', @source_object = N'SYCHV800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV800]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV800]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSYCH', @article = N'SYCHV900', @source_owner = N'dbo', @source_object = N'SYCHV900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SYCHV900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSYCHV900]', @del_cmd = N'CALL [sp_MSdel_dboSYCHV900]', @upd_cmd = N'SCALL [sp_MSupd_dboSYCHV900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSYCH', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSYCH', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

