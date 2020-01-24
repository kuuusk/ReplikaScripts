-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSY34', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSY34', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSY34', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY34', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY34', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY34', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY34', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY34', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V500', @source_owner = N'dbo', @source_object = N'SY34V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V500]', @del_cmd = N'CALL [sp_MSdel_dboSY34V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349P00', @source_owner = N'dbo', @source_object = N'SY349P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349P00]', @del_cmd = N'CALL [sp_MSdel_dboSY349P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345P00', @source_owner = N'dbo', @source_object = N'SY345P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345P00]', @del_cmd = N'CALL [sp_MSdel_dboSY345P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346P00', @source_owner = N'dbo', @source_object = N'SY346P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346P00]', @del_cmd = N'CALL [sp_MSdel_dboSY346P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347P00', @source_owner = N'dbo', @source_object = N'SY347P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347P00]', @del_cmd = N'CALL [sp_MSdel_dboSY347P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348P00', @source_owner = N'dbo', @source_object = N'SY348P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348P00]', @del_cmd = N'CALL [sp_MSdel_dboSY348P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY340100', @source_owner = N'dbo', @source_object = N'SY340100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY340100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY340100]', @del_cmd = N'CALL [sp_MSdel_dboSY340100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY340100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342P00', @source_owner = N'dbo', @source_object = N'SY342P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342P00]', @del_cmd = N'CALL [sp_MSdel_dboSY342P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY340200', @source_owner = N'dbo', @source_object = N'SY340200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY340200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY340200]', @del_cmd = N'CALL [sp_MSdel_dboSY340200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY340200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY340500', @source_owner = N'dbo', @source_object = N'SY340500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY340500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY340500]', @del_cmd = N'CALL [sp_MSdel_dboSY340500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY340500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY340600', @source_owner = N'dbo', @source_object = N'SY340600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY340600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY340600]', @del_cmd = N'CALL [sp_MSdel_dboSY340600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY340600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY340700', @source_owner = N'dbo', @source_object = N'SY340700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY340700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY340700]', @del_cmd = N'CALL [sp_MSdel_dboSY340700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY340700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY340800', @source_owner = N'dbo', @source_object = N'SY340800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY340800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY340800]', @del_cmd = N'CALL [sp_MSdel_dboSY340800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY340800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY340900', @source_owner = N'dbo', @source_object = N'SY340900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY340900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY340900]', @del_cmd = N'CALL [sp_MSdel_dboSY340900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY340900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341000', @source_owner = N'dbo', @source_object = N'SY341000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341000]', @del_cmd = N'CALL [sp_MSdel_dboSY341000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341100', @source_owner = N'dbo', @source_object = N'SY341100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341100]', @del_cmd = N'CALL [sp_MSdel_dboSY341100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341200', @source_owner = N'dbo', @source_object = N'SY341200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341200]', @del_cmd = N'CALL [sp_MSdel_dboSY341200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341300', @source_owner = N'dbo', @source_object = N'SY341300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341300]', @del_cmd = N'CALL [sp_MSdel_dboSY341300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341400', @source_owner = N'dbo', @source_object = N'SY341400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341400]', @del_cmd = N'CALL [sp_MSdel_dboSY341400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341600', @source_owner = N'dbo', @source_object = N'SY341600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341600]', @del_cmd = N'CALL [sp_MSdel_dboSY341600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341900', @source_owner = N'dbo', @source_object = N'SY341900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341900]', @del_cmd = N'CALL [sp_MSdel_dboSY341900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341L00', @source_owner = N'dbo', @source_object = N'SY341L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341L00]', @del_cmd = N'CALL [sp_MSdel_dboSY341L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341M00', @source_owner = N'dbo', @source_object = N'SY341M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341M00]', @del_cmd = N'CALL [sp_MSdel_dboSY341M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341N00', @source_owner = N'dbo', @source_object = N'SY341N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341N00]', @del_cmd = N'CALL [sp_MSdel_dboSY341N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY341P00', @source_owner = N'dbo', @source_object = N'SY341P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY341P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY341P00]', @del_cmd = N'CALL [sp_MSdel_dboSY341P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY341P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342000', @source_owner = N'dbo', @source_object = N'SY342000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342000]', @del_cmd = N'CALL [sp_MSdel_dboSY342000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342100', @source_owner = N'dbo', @source_object = N'SY342100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342100]', @del_cmd = N'CALL [sp_MSdel_dboSY342100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342200', @source_owner = N'dbo', @source_object = N'SY342200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342200]', @del_cmd = N'CALL [sp_MSdel_dboSY342200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342300', @source_owner = N'dbo', @source_object = N'SY342300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342300]', @del_cmd = N'CALL [sp_MSdel_dboSY342300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342400', @source_owner = N'dbo', @source_object = N'SY342400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342400]', @del_cmd = N'CALL [sp_MSdel_dboSY342400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342500', @source_owner = N'dbo', @source_object = N'SY342500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342500]', @del_cmd = N'CALL [sp_MSdel_dboSY342500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342600', @source_owner = N'dbo', @source_object = N'SY342600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342600]', @del_cmd = N'CALL [sp_MSdel_dboSY342600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342700', @source_owner = N'dbo', @source_object = N'SY342700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342700]', @del_cmd = N'CALL [sp_MSdel_dboSY342700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342800', @source_owner = N'dbo', @source_object = N'SY342800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342800]', @del_cmd = N'CALL [sp_MSdel_dboSY342800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342900', @source_owner = N'dbo', @source_object = N'SY342900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342900]', @del_cmd = N'CALL [sp_MSdel_dboSY342900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342L00', @source_owner = N'dbo', @source_object = N'SY342L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342L00]', @del_cmd = N'CALL [sp_MSdel_dboSY342L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342M00', @source_owner = N'dbo', @source_object = N'SY342M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342M00]', @del_cmd = N'CALL [sp_MSdel_dboSY342M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY342N00', @source_owner = N'dbo', @source_object = N'SY342N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY342N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY342N00]', @del_cmd = N'CALL [sp_MSdel_dboSY342N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY342N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343000', @source_owner = N'dbo', @source_object = N'SY343000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343000]', @del_cmd = N'CALL [sp_MSdel_dboSY343000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343100', @source_owner = N'dbo', @source_object = N'SY343100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343100]', @del_cmd = N'CALL [sp_MSdel_dboSY343100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343500', @source_owner = N'dbo', @source_object = N'SY343500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343500]', @del_cmd = N'CALL [sp_MSdel_dboSY343500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343600', @source_owner = N'dbo', @source_object = N'SY343600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343600]', @del_cmd = N'CALL [sp_MSdel_dboSY343600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343900', @source_owner = N'dbo', @source_object = N'SY343900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343900]', @del_cmd = N'CALL [sp_MSdel_dboSY343900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343L00', @source_owner = N'dbo', @source_object = N'SY343L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343L00]', @del_cmd = N'CALL [sp_MSdel_dboSY343L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343M00', @source_owner = N'dbo', @source_object = N'SY343M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343M00]', @del_cmd = N'CALL [sp_MSdel_dboSY343M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343N00', @source_owner = N'dbo', @source_object = N'SY343N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343N00]', @del_cmd = N'CALL [sp_MSdel_dboSY343N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY343P00', @source_owner = N'dbo', @source_object = N'SY343P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY343P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY343P00]', @del_cmd = N'CALL [sp_MSdel_dboSY343P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY343P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344000', @source_owner = N'dbo', @source_object = N'SY344000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344000]', @del_cmd = N'CALL [sp_MSdel_dboSY344000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344100', @source_owner = N'dbo', @source_object = N'SY344100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344100]', @del_cmd = N'CALL [sp_MSdel_dboSY344100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344200', @source_owner = N'dbo', @source_object = N'SY344200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344200]', @del_cmd = N'CALL [sp_MSdel_dboSY344200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344300', @source_owner = N'dbo', @source_object = N'SY344300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344300]', @del_cmd = N'CALL [sp_MSdel_dboSY344300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344400', @source_owner = N'dbo', @source_object = N'SY344400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344400]', @del_cmd = N'CALL [sp_MSdel_dboSY344400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344500', @source_owner = N'dbo', @source_object = N'SY344500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344500]', @del_cmd = N'CALL [sp_MSdel_dboSY344500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344600', @source_owner = N'dbo', @source_object = N'SY344600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344600]', @del_cmd = N'CALL [sp_MSdel_dboSY344600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344700', @source_owner = N'dbo', @source_object = N'SY344700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344700]', @del_cmd = N'CALL [sp_MSdel_dboSY344700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344800', @source_owner = N'dbo', @source_object = N'SY344800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344800]', @del_cmd = N'CALL [sp_MSdel_dboSY344800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344900', @source_owner = N'dbo', @source_object = N'SY344900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344900]', @del_cmd = N'CALL [sp_MSdel_dboSY344900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344L00', @source_owner = N'dbo', @source_object = N'SY344L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344L00]', @del_cmd = N'CALL [sp_MSdel_dboSY344L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344M00', @source_owner = N'dbo', @source_object = N'SY344M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344M00]', @del_cmd = N'CALL [sp_MSdel_dboSY344M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344N00', @source_owner = N'dbo', @source_object = N'SY344N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344N00]', @del_cmd = N'CALL [sp_MSdel_dboSY344N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY344P00', @source_owner = N'dbo', @source_object = N'SY344P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY344P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY344P00]', @del_cmd = N'CALL [sp_MSdel_dboSY344P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY344P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345000', @source_owner = N'dbo', @source_object = N'SY345000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345000]', @del_cmd = N'CALL [sp_MSdel_dboSY345000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345100', @source_owner = N'dbo', @source_object = N'SY345100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345100]', @del_cmd = N'CALL [sp_MSdel_dboSY345100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345200', @source_owner = N'dbo', @source_object = N'SY345200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345200]', @del_cmd = N'CALL [sp_MSdel_dboSY345200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345300', @source_owner = N'dbo', @source_object = N'SY345300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345300]', @del_cmd = N'CALL [sp_MSdel_dboSY345300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345400', @source_owner = N'dbo', @source_object = N'SY345400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345400]', @del_cmd = N'CALL [sp_MSdel_dboSY345400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345600', @source_owner = N'dbo', @source_object = N'SY345600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345600]', @del_cmd = N'CALL [sp_MSdel_dboSY345600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345700', @source_owner = N'dbo', @source_object = N'SY345700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345700]', @del_cmd = N'CALL [sp_MSdel_dboSY345700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345800', @source_owner = N'dbo', @source_object = N'SY345800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345800]', @del_cmd = N'CALL [sp_MSdel_dboSY345800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345900', @source_owner = N'dbo', @source_object = N'SY345900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345900]', @del_cmd = N'CALL [sp_MSdel_dboSY345900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345L00', @source_owner = N'dbo', @source_object = N'SY345L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345L00]', @del_cmd = N'CALL [sp_MSdel_dboSY345L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345M00', @source_owner = N'dbo', @source_object = N'SY345M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345M00]', @del_cmd = N'CALL [sp_MSdel_dboSY345M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY345N00', @source_owner = N'dbo', @source_object = N'SY345N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY345N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY345N00]', @del_cmd = N'CALL [sp_MSdel_dboSY345N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY345N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346000', @source_owner = N'dbo', @source_object = N'SY346000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346000]', @del_cmd = N'CALL [sp_MSdel_dboSY346000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346100', @source_owner = N'dbo', @source_object = N'SY346100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346100]', @del_cmd = N'CALL [sp_MSdel_dboSY346100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346200', @source_owner = N'dbo', @source_object = N'SY346200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346200]', @del_cmd = N'CALL [sp_MSdel_dboSY346200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346300', @source_owner = N'dbo', @source_object = N'SY346300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346300]', @del_cmd = N'CALL [sp_MSdel_dboSY346300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346400', @source_owner = N'dbo', @source_object = N'SY346400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346400]', @del_cmd = N'CALL [sp_MSdel_dboSY346400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346500', @source_owner = N'dbo', @source_object = N'SY346500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346500]', @del_cmd = N'CALL [sp_MSdel_dboSY346500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346600', @source_owner = N'dbo', @source_object = N'SY346600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346600]', @del_cmd = N'CALL [sp_MSdel_dboSY346600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346700', @source_owner = N'dbo', @source_object = N'SY346700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346700]', @del_cmd = N'CALL [sp_MSdel_dboSY346700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346900', @source_owner = N'dbo', @source_object = N'SY346900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346900]', @del_cmd = N'CALL [sp_MSdel_dboSY346900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346L00', @source_owner = N'dbo', @source_object = N'SY346L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346L00]', @del_cmd = N'CALL [sp_MSdel_dboSY346L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346M00', @source_owner = N'dbo', @source_object = N'SY346M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346M00]', @del_cmd = N'CALL [sp_MSdel_dboSY346M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY346N00', @source_owner = N'dbo', @source_object = N'SY346N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY346N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY346N00]', @del_cmd = N'CALL [sp_MSdel_dboSY346N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY346N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347000', @source_owner = N'dbo', @source_object = N'SY347000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347000]', @del_cmd = N'CALL [sp_MSdel_dboSY347000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347100', @source_owner = N'dbo', @source_object = N'SY347100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347100]', @del_cmd = N'CALL [sp_MSdel_dboSY347100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347200', @source_owner = N'dbo', @source_object = N'SY347200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347200]', @del_cmd = N'CALL [sp_MSdel_dboSY347200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347300', @source_owner = N'dbo', @source_object = N'SY347300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347300]', @del_cmd = N'CALL [sp_MSdel_dboSY347300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347400', @source_owner = N'dbo', @source_object = N'SY347400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347400]', @del_cmd = N'CALL [sp_MSdel_dboSY347400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347500', @source_owner = N'dbo', @source_object = N'SY347500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347500]', @del_cmd = N'CALL [sp_MSdel_dboSY347500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347600', @source_owner = N'dbo', @source_object = N'SY347600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347600]', @del_cmd = N'CALL [sp_MSdel_dboSY347600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347700', @source_owner = N'dbo', @source_object = N'SY347700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347700]', @del_cmd = N'CALL [sp_MSdel_dboSY347700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347800', @source_owner = N'dbo', @source_object = N'SY347800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347800]', @del_cmd = N'CALL [sp_MSdel_dboSY347800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347L00', @source_owner = N'dbo', @source_object = N'SY347L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347L00]', @del_cmd = N'CALL [sp_MSdel_dboSY347L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347M00', @source_owner = N'dbo', @source_object = N'SY347M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347M00]', @del_cmd = N'CALL [sp_MSdel_dboSY347M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY347N00', @source_owner = N'dbo', @source_object = N'SY347N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY347N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY347N00]', @del_cmd = N'CALL [sp_MSdel_dboSY347N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY347N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348000', @source_owner = N'dbo', @source_object = N'SY348000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348000]', @del_cmd = N'CALL [sp_MSdel_dboSY348000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348100', @source_owner = N'dbo', @source_object = N'SY348100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348100]', @del_cmd = N'CALL [sp_MSdel_dboSY348100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348300', @source_owner = N'dbo', @source_object = N'SY348300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348300]', @del_cmd = N'CALL [sp_MSdel_dboSY348300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348400', @source_owner = N'dbo', @source_object = N'SY348400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348400]', @del_cmd = N'CALL [sp_MSdel_dboSY348400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348500', @source_owner = N'dbo', @source_object = N'SY348500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348500]', @del_cmd = N'CALL [sp_MSdel_dboSY348500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348800', @source_owner = N'dbo', @source_object = N'SY348800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348800]', @del_cmd = N'CALL [sp_MSdel_dboSY348800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348900', @source_owner = N'dbo', @source_object = N'SY348900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348900]', @del_cmd = N'CALL [sp_MSdel_dboSY348900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348L00', @source_owner = N'dbo', @source_object = N'SY348L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348L00]', @del_cmd = N'CALL [sp_MSdel_dboSY348L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348M00', @source_owner = N'dbo', @source_object = N'SY348M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348M00]', @del_cmd = N'CALL [sp_MSdel_dboSY348M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY348N00', @source_owner = N'dbo', @source_object = N'SY348N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY348N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY348N00]', @del_cmd = N'CALL [sp_MSdel_dboSY348N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY348N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349000', @source_owner = N'dbo', @source_object = N'SY349000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349000]', @del_cmd = N'CALL [sp_MSdel_dboSY349000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349100', @source_owner = N'dbo', @source_object = N'SY349100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349100]', @del_cmd = N'CALL [sp_MSdel_dboSY349100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349200', @source_owner = N'dbo', @source_object = N'SY349200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349200]', @del_cmd = N'CALL [sp_MSdel_dboSY349200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349300', @source_owner = N'dbo', @source_object = N'SY349300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349300]', @del_cmd = N'CALL [sp_MSdel_dboSY349300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349400', @source_owner = N'dbo', @source_object = N'SY349400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349400]', @del_cmd = N'CALL [sp_MSdel_dboSY349400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349500', @source_owner = N'dbo', @source_object = N'SY349500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349500]', @del_cmd = N'CALL [sp_MSdel_dboSY349500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349600', @source_owner = N'dbo', @source_object = N'SY349600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349600]', @del_cmd = N'CALL [sp_MSdel_dboSY349600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349700', @source_owner = N'dbo', @source_object = N'SY349700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349700]', @del_cmd = N'CALL [sp_MSdel_dboSY349700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349900', @source_owner = N'dbo', @source_object = N'SY349900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349900]', @del_cmd = N'CALL [sp_MSdel_dboSY349900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349L00', @source_owner = N'dbo', @source_object = N'SY349L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349L00]', @del_cmd = N'CALL [sp_MSdel_dboSY349L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY349M00', @source_owner = N'dbo', @source_object = N'SY349M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349M00]', @del_cmd = N'CALL [sp_MSdel_dboSY349M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article =N'SY349N00', @source_owner = N'dbo', @source_object = N'SY349N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY349N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY349N00]', @del_cmd = N'CALL [sp_MSdel_dboSY349N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY349N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V100', @source_owner = N'dbo', @source_object = N'SY34V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V100]', @del_cmd = N'CALL [sp_MSdel_dboSY34V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V200', @source_owner = N'dbo', @source_object = N'SY34V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V200]', @del_cmd = N'CALL [sp_MSdel_dboSY34V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V300', @source_owner = N'dbo', @source_object = N'SY34V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V300]', @del_cmd = N'CALL [sp_MSdel_dboSY34V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V400', @source_owner = N'dbo', @source_object = N'SY34V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V400]', @del_cmd = N'CALL [sp_MSdel_dboSY34V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V700', @source_owner = N'dbo', @source_object = N'SY34V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V700]', @del_cmd = N'CALL [sp_MSdel_dboSY34V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V800', @source_owner = N'dbo', @source_object = N'SY34V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V800]', @del_cmd = N'CALL [sp_MSdel_dboSY34V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY34', @article = N'SY34V900', @source_owner = N'dbo', @source_object = N'SY34V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY34V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY34V900]', @del_cmd = N'CALL [sp_MSdel_dboSY34V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY34V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSY34', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSY34', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

