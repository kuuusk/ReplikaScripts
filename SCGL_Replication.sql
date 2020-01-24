---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSCGL', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSCGL', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSCGL', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSCGL', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSCGL', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSCGL', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSCGL', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSCGL', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV500', @source_owner = N'dbo', @source_object = N'SCGLV500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV500]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9P00', @source_owner = N'dbo', @source_object = N'SCGL9P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5P00', @source_owner = N'dbo', @source_object = N'SCGL5P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6P00', @source_owner = N'dbo', @source_object = N'SCGL6P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7P00', @source_owner = N'dbo', @source_object = N'SCGL7P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8P00', @source_owner = N'dbo', @source_object = N'SCGL8P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL0100', @source_owner = N'dbo', @source_object = N'SCGL0100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL0100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL0100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL0100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL0100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2P00', @source_owner = N'dbo', @source_object = N'SCGL2P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL0200', @source_owner = N'dbo', @source_object = N'SCGL0200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL0200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL0200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL0200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL0200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL0500', @source_owner = N'dbo', @source_object = N'SCGL0500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL0500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL0500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL0500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL0500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL0600', @source_owner = N'dbo', @source_object = N'SCGL0600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL0600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL0600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL0600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL0600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL0700', @source_owner = N'dbo', @source_object = N'SCGL0700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL0700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL0700]', @del_cmd = N'CALL [sp_MSdel_dboSCGL0700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL0700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL0800', @source_owner = N'dbo', @source_object = N'SCGL0800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL0800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL0800]', @del_cmd = N'CALL [sp_MSdel_dboSCGL0800]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL0800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL0900', @source_owner = N'dbo', @source_object = N'SCGL0900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL0900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL0900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL0900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL0900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1000', @source_owner = N'dbo', @source_object = N'SCGL1000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1100', @source_owner = N'dbo', @source_object = N'SCGL1100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1200', @source_owner = N'dbo', @source_object = N'SCGL1200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1300', @source_owner = N'dbo', @source_object = N'SCGL1300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1400', @source_owner = N'dbo', @source_object = N'SCGL1400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1600', @source_owner = N'dbo', @source_object = N'SCGL1600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1900', @source_owner = N'dbo', @source_object = N'SCGL1900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1L00', @source_owner = N'dbo', @source_object = N'SCGL1L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1M00', @source_owner = N'dbo', @source_object = N'SCGL1M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1N00', @source_owner = N'dbo', @source_object = N'SCGL1N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL1P00', @source_owner = N'dbo', @source_object = N'SCGL1P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL1P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL1P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL1P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL1P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2000', @source_owner = N'dbo', @source_object = N'SCGL2000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2100', @source_owner = N'dbo', @source_object = N'SCGL2100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2200', @source_owner = N'dbo', @source_object = N'SCGL2200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2300', @source_owner = N'dbo', @source_object = N'SCGL2300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2400', @source_owner = N'dbo', @source_object = N'SCGL2400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2500', @source_owner = N'dbo', @source_object = N'SCGL2500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2600', @source_owner = N'dbo', @source_object = N'SCGL2600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2700', @source_owner = N'dbo', @source_object = N'SCGL2700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2700]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2800', @source_owner = N'dbo', @source_object = N'SCGL2800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2800]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2800]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2900', @source_owner = N'dbo', @source_object = N'SCGL2900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2L00', @source_owner = N'dbo', @source_object = N'SCGL2L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2M00', @source_owner = N'dbo', @source_object = N'SCGL2M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL2N00', @source_owner = N'dbo', @source_object = N'SCGL2N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL2N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL2N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL2N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL2N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3000', @source_owner = N'dbo', @source_object = N'SCGL3000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3100', @source_owner = N'dbo', @source_object = N'SCGL3100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3500', @source_owner = N'dbo', @source_object = N'SCGL3500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3600', @source_owner = N'dbo', @source_object = N'SCGL3600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3900', @source_owner = N'dbo', @source_object = N'SCGL3900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3L00', @source_owner = N'dbo', @source_object = N'SCGL3L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3M00', @source_owner = N'dbo', @source_object = N'SCGL3M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3N00', @source_owner = N'dbo', @source_object = N'SCGL3N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL3P00', @source_owner = N'dbo', @source_object = N'SCGL3P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL3P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL3P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL3P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL3P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4000', @source_owner = N'dbo', @source_object = N'SCGL4000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4100', @source_owner = N'dbo', @source_object = N'SCGL4100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4200', @source_owner = N'dbo', @source_object = N'SCGL4200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4300', @source_owner = N'dbo', @source_object = N'SCGL4300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4400', @source_owner = N'dbo', @source_object = N'SCGL4400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4500', @source_owner = N'dbo', @source_object = N'SCGL4500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4600', @source_owner = N'dbo', @source_object = N'SCGL4600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4700', @source_owner = N'dbo', @source_object = N'SCGL4700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4700]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4800', @source_owner = N'dbo', @source_object = N'SCGL4800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4800]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4800]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4900', @source_owner = N'dbo', @source_object = N'SCGL4900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4L00', @source_owner = N'dbo', @source_object = N'SCGL4L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4M00', @source_owner = N'dbo', @source_object = N'SCGL4M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4N00', @source_owner = N'dbo', @source_object = N'SCGL4N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL4P00', @source_owner = N'dbo', @source_object = N'SCGL4P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL4P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL4P00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL4P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL4P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5000', @source_owner = N'dbo', @source_object = N'SCGL5000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5100', @source_owner = N'dbo', @source_object = N'SCGL5100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5200', @source_owner = N'dbo', @source_object = N'SCGL5200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5300', @source_owner = N'dbo', @source_object = N'SCGL5300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5400', @source_owner = N'dbo', @source_object = N'SCGL5400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5600', @source_owner = N'dbo', @source_object = N'SCGL5600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5700', @source_owner = N'dbo', @source_object = N'SCGL5700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5700]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5800', @source_owner = N'dbo', @source_object = N'SCGL5800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5800]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5800]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5900', @source_owner = N'dbo', @source_object = N'SCGL5900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5L00', @source_owner = N'dbo', @source_object = N'SCGL5L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5M00', @source_owner = N'dbo', @source_object = N'SCGL5M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL5N00', @source_owner = N'dbo', @source_object = N'SCGL5N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL5N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL5N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL5N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL5N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6000', @source_owner = N'dbo', @source_object = N'SCGL6000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6100', @source_owner = N'dbo', @source_object = N'SCGL6100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6200', @source_owner = N'dbo', @source_object = N'SCGL6200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6300', @source_owner = N'dbo', @source_object = N'SCGL6300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6400', @source_owner = N'dbo', @source_object = N'SCGL6400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6500', @source_owner = N'dbo', @source_object = N'SCGL6500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6600', @source_owner = N'dbo', @source_object = N'SCGL6600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6700', @source_owner = N'dbo', @source_object = N'SCGL6700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6700]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6900', @source_owner = N'dbo', @source_object = N'SCGL6900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6L00', @source_owner = N'dbo', @source_object = N'SCGL6L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6M00', @source_owner = N'dbo', @source_object = N'SCGL6M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL6N00', @source_owner = N'dbo', @source_object = N'SCGL6N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL6N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL6N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL6N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL6N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7000', @source_owner = N'dbo', @source_object = N'SCGL7000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7100', @source_owner = N'dbo', @source_object = N'SCGL7100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7200', @source_owner = N'dbo', @source_object = N'SCGL7200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7300', @source_owner = N'dbo', @source_object = N'SCGL7300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7400', @source_owner = N'dbo', @source_object = N'SCGL7400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7500', @source_owner = N'dbo', @source_object = N'SCGL7500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7600', @source_owner = N'dbo', @source_object = N'SCGL7600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7700', @source_owner = N'dbo', @source_object = N'SCGL7700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7700]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7800', @source_owner = N'dbo', @source_object = N'SCGL7800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7800]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7800]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7L00', @source_owner = N'dbo', @source_object = N'SCGL7L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7M00', @source_owner = N'dbo', @source_object = N'SCGL7M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL7N00', @source_owner = N'dbo', @source_object = N'SCGL7N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL7N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL7N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL7N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL7N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8000', @source_owner = N'dbo', @source_object = N'SCGL8000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8100', @source_owner = N'dbo', @source_object = N'SCGL8100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8300', @source_owner = N'dbo', @source_object = N'SCGL8300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8400', @source_owner = N'dbo', @source_object = N'SCGL8400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8500', @source_owner = N'dbo', @source_object = N'SCGL8500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8800', @source_owner = N'dbo', @source_object = N'SCGL8800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8800]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8800]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8900', @source_owner = N'dbo', @source_object = N'SCGL8900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8L00', @source_owner = N'dbo', @source_object = N'SCGL8L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8M00', @source_owner = N'dbo', @source_object = N'SCGL8M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL8N00', @source_owner = N'dbo', @source_object = N'SCGL8N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL8N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL8N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL8N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL8N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9000', @source_owner = N'dbo', @source_object = N'SCGL9000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9000]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9000]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9100', @source_owner = N'dbo', @source_object = N'SCGL9100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9100]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9200', @source_owner = N'dbo', @source_object = N'SCGL9200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9200]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9300', @source_owner = N'dbo', @source_object = N'SCGL9300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9300]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9400', @source_owner = N'dbo', @source_object = N'SCGL9400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9400]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9500', @source_owner = N'dbo', @source_object = N'SCGL9500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9500]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9500]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9600', @source_owner = N'dbo', @source_object = N'SCGL9600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9600]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9600]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9700', @source_owner = N'dbo', @source_object = N'SCGL9700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9700]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9900', @source_owner = N'dbo', @source_object = N'SCGL9900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9900]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9L00', @source_owner = N'dbo', @source_object = N'SCGL9L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9L00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGL9M00', @source_owner = N'dbo', @source_object = N'SCGL9M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9M00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article =N'SCGL9N00', @source_owner = N'dbo', @source_object = N'SCGL9N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGL9N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGL9N00]', @del_cmd = N'CALL [sp_MSdel_dboSCGL9N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGL9N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV100', @source_owner = N'dbo', @source_object = N'SCGLV100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV100]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV100]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV200', @source_owner = N'dbo', @source_object = N'SCGLV200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV200]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV200]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV300', @source_owner = N'dbo', @source_object = N'SCGLV300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV300]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV300]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV400', @source_owner = N'dbo', @source_object = N'SCGLV400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV400]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV400]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV700', @source_owner = N'dbo', @source_object = N'SCGLV700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV700]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV700]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV800', @source_owner = N'dbo', @source_object = N'SCGLV800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV800]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV800]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSCGL', @article = N'SCGLV900', @source_owner = N'dbo', @source_object = N'SCGLV900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCGLV900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCGLV900]', @del_cmd = N'CALL [sp_MSdel_dboSCGLV900]', @upd_cmd = N'SCALL [sp_MSupd_dboSCGLV900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSCGL', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSCGL', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

