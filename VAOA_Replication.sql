---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaVAOA', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaVAOA', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaVAOA', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaVAOA', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaVAOA', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaVAOA', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaVAOA', @login = N'NT SERVICE\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaVAOA', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaVAOA', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV500', @source_owner = N'dbo', @source_object = N'VAOAV500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV500]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9P00', @source_owner = N'dbo', @source_object = N'VAOA9P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5P00', @source_owner = N'dbo', @source_object = N'VAOA5P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6P00', @source_owner = N'dbo', @source_object = N'VAOA6P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7P00', @source_owner = N'dbo', @source_object = N'VAOA7P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8P00', @source_owner = N'dbo', @source_object = N'VAOA8P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA0100', @source_owner = N'dbo', @source_object = N'VAOA0100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA0100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA0100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA0100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA0100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA0200', @source_owner = N'dbo', @source_object = N'VAOA0200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA0200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA0200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA0200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA0200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA0500', @source_owner = N'dbo', @source_object = N'VAOA0500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA0500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA0500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA0500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA0500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA0600', @source_owner = N'dbo', @source_object = N'VAOA0600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA0600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA0600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA0600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA0600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA0700', @source_owner = N'dbo', @source_object = N'VAOA0700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA0700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA0700]', @del_cmd = N'CALL [sp_MSdel_dboVAOA0700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA0700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA0800', @source_owner = N'dbo', @source_object = N'VAOA0800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA0800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA0800]', @del_cmd = N'CALL [sp_MSdel_dboVAOA0800]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA0800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA0900', @source_owner = N'dbo', @source_object = N'VAOA0900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA0900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA0900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA0900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA0900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1000', @source_owner = N'dbo', @source_object = N'VAOA1000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1100', @source_owner = N'dbo', @source_object = N'VAOA1100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1200', @source_owner = N'dbo', @source_object = N'VAOA1200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1300', @source_owner = N'dbo', @source_object = N'VAOA1300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1400', @source_owner = N'dbo', @source_object = N'VAOA1400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1600', @source_owner = N'dbo', @source_object = N'VAOA1600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1900', @source_owner = N'dbo', @source_object = N'VAOA1900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1L00', @source_owner = N'dbo', @source_object = N'VAOA1L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1M00', @source_owner = N'dbo', @source_object = N'VAOA1M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1N00', @source_owner = N'dbo', @source_object = N'VAOA1N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA1P00', @source_owner = N'dbo', @source_object = N'VAOA1P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA1P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA1P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA1P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA1P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2000', @source_owner = N'dbo', @source_object = N'VAOA2000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2100', @source_owner = N'dbo', @source_object = N'VAOA2100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2200', @source_owner = N'dbo', @source_object = N'VAOA2200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2300', @source_owner = N'dbo', @source_object = N'VAOA2300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2400', @source_owner = N'dbo', @source_object = N'VAOA2400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2500', @source_owner = N'dbo', @source_object = N'VAOA2500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2600', @source_owner = N'dbo', @source_object = N'VAOA2600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2700', @source_owner = N'dbo', @source_object = N'VAOA2700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2700]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2800', @source_owner = N'dbo', @source_object = N'VAOA2800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2800]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2800]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2900', @source_owner = N'dbo', @source_object = N'VAOA2900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2L00', @source_owner = N'dbo', @source_object = N'VAOA2L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2M00', @source_owner = N'dbo', @source_object = N'VAOA2M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2N00', @source_owner = N'dbo', @source_object = N'VAOA2N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA2P00', @source_owner = N'dbo', @source_object = N'VAOA2P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA2P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA2P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA2P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA2P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3000', @source_owner = N'dbo', @source_object = N'VAOA3000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3100', @source_owner = N'dbo', @source_object = N'VAOA3100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3500', @source_owner = N'dbo', @source_object = N'VAOA3500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3600', @source_owner = N'dbo', @source_object = N'VAOA3600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3900', @source_owner = N'dbo', @source_object = N'VAOA3900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3L00', @source_owner = N'dbo', @source_object = N'VAOA3L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3M00', @source_owner = N'dbo', @source_object = N'VAOA3M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3N00', @source_owner = N'dbo', @source_object = N'VAOA3N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA3P00', @source_owner = N'dbo', @source_object = N'VAOA3P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA3P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA3P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA3P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA3P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4000', @source_owner = N'dbo', @source_object = N'VAOA4000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4100', @source_owner = N'dbo', @source_object = N'VAOA4100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4200', @source_owner = N'dbo', @source_object = N'VAOA4200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4300', @source_owner = N'dbo', @source_object = N'VAOA4300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4400', @source_owner = N'dbo', @source_object = N'VAOA4400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4500', @source_owner = N'dbo', @source_object = N'VAOA4500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4600', @source_owner = N'dbo', @source_object = N'VAOA4600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4700', @source_owner = N'dbo', @source_object = N'VAOA4700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4700]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4800', @source_owner = N'dbo', @source_object = N'VAOA4800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4800]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4800]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4900', @source_owner = N'dbo', @source_object = N'VAOA4900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4L00', @source_owner = N'dbo', @source_object = N'VAOA4L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4M00', @source_owner = N'dbo', @source_object = N'VAOA4M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4N00', @source_owner = N'dbo', @source_object = N'VAOA4N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA4P00', @source_owner = N'dbo', @source_object = N'VAOA4P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA4P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA4P00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA4P00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA4P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5000', @source_owner = N'dbo', @source_object = N'VAOA5000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5100', @source_owner = N'dbo', @source_object = N'VAOA5100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5200', @source_owner = N'dbo', @source_object = N'VAOA5200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5300', @source_owner = N'dbo', @source_object = N'VAOA5300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5400', @source_owner = N'dbo', @source_object = N'VAOA5400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5600', @source_owner = N'dbo', @source_object = N'VAOA5600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5700', @source_owner = N'dbo', @source_object = N'VAOA5700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5700]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5800', @source_owner = N'dbo', @source_object = N'VAOA5800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5800]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5800]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5900', @source_owner = N'dbo', @source_object = N'VAOA5900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5L00', @source_owner = N'dbo', @source_object = N'VAOA5L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5M00', @source_owner = N'dbo', @source_object = N'VAOA5M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA5N00', @source_owner = N'dbo', @source_object = N'VAOA5N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA5N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA5N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA5N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA5N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6000', @source_owner = N'dbo', @source_object = N'VAOA6000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6100', @source_owner = N'dbo', @source_object = N'VAOA6100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6200', @source_owner = N'dbo', @source_object = N'VAOA6200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6300', @source_owner = N'dbo', @source_object = N'VAOA6300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6400', @source_owner = N'dbo', @source_object = N'VAOA6400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6500', @source_owner = N'dbo', @source_object = N'VAOA6500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6600', @source_owner = N'dbo', @source_object = N'VAOA6600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6700', @source_owner = N'dbo', @source_object = N'VAOA6700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6700]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6900', @source_owner = N'dbo', @source_object = N'VAOA6900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6L00', @source_owner = N'dbo', @source_object = N'VAOA6L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6M00', @source_owner = N'dbo', @source_object = N'VAOA6M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA6N00', @source_owner = N'dbo', @source_object = N'VAOA6N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA6N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA6N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA6N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA6N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7000', @source_owner = N'dbo', @source_object = N'VAOA7000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7100', @source_owner = N'dbo', @source_object = N'VAOA7100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7200', @source_owner = N'dbo', @source_object = N'VAOA7200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7300', @source_owner = N'dbo', @source_object = N'VAOA7300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7400', @source_owner = N'dbo', @source_object = N'VAOA7400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7500', @source_owner = N'dbo', @source_object = N'VAOA7500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7600', @source_owner = N'dbo', @source_object = N'VAOA7600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7700', @source_owner = N'dbo', @source_object = N'VAOA7700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7700]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7800', @source_owner = N'dbo', @source_object = N'VAOA7800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7800]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7800]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7L00', @source_owner = N'dbo', @source_object = N'VAOA7L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7M00', @source_owner = N'dbo', @source_object = N'VAOA7M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA7N00', @source_owner = N'dbo', @source_object = N'VAOA7N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA7N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA7N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA7N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA7N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8000', @source_owner = N'dbo', @source_object = N'VAOA8000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8100', @source_owner = N'dbo', @source_object = N'VAOA8100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8300', @source_owner = N'dbo', @source_object = N'VAOA8300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8400', @source_owner = N'dbo', @source_object = N'VAOA8400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8500', @source_owner = N'dbo', @source_object = N'VAOA8500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8600', @source_owner = N'dbo', @source_object = N'VAOA8600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8800', @source_owner = N'dbo', @source_object = N'VAOA8800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8800]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8800]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8900', @source_owner = N'dbo', @source_object = N'VAOA8900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8L00', @source_owner = N'dbo', @source_object = N'VAOA8L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8M00', @source_owner = N'dbo', @source_object = N'VAOA8M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA8N00', @source_owner = N'dbo', @source_object = N'VAOA8N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA8N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA8N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA8N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA8N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9000', @source_owner = N'dbo', @source_object = N'VAOA9000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9000]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9000]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9100', @source_owner = N'dbo', @source_object = N'VAOA9100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9100]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9200', @source_owner = N'dbo', @source_object = N'VAOA9200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9200]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9300', @source_owner = N'dbo', @source_object = N'VAOA9300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9300]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9400', @source_owner = N'dbo', @source_object = N'VAOA9400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9400]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9500', @source_owner = N'dbo', @source_object = N'VAOA9500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9500]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9500]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9600', @source_owner = N'dbo', @source_object = N'VAOA9600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9600]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9600]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9700', @source_owner = N'dbo', @source_object = N'VAOA9700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9700]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9900', @source_owner = N'dbo', @source_object = N'VAOA9900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9900]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9L00', @source_owner = N'dbo', @source_object = N'VAOA9L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9L00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9L00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9M00', @source_owner = N'dbo', @source_object = N'VAOA9M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9M00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9M00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOA9N00', @source_owner = N'dbo', @source_object = N'VAOA9N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOA9N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOA9N00]', @del_cmd = N'CALL [sp_MSdel_dboVAOA9N00]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOA9N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV100', @source_owner = N'dbo', @source_object = N'VAOAV100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV100]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV100]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV200', @source_owner = N'dbo', @source_object = N'VAOAV200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV200]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV200]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV300', @source_owner = N'dbo', @source_object = N'VAOAV300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV300]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV300]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV400', @source_owner = N'dbo', @source_object = N'VAOAV400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV400]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV400]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV700', @source_owner = N'dbo', @source_object = N'VAOAV700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV700]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV700]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV800', @source_owner = N'dbo', @source_object = N'VAOAV800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV800]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV800]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaVAOA', @article = N'VAOAV900', @source_owner = N'dbo', @source_object = N'VAOAV900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'VAOAV900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboVAOAV900]', @del_cmd = N'CALL [sp_MSdel_dboVAOAV900]', @upd_cmd = N'SCALL [sp_MSupd_dboVAOAV900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaVAOA', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaVAOA', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

