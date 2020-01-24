---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaAM36', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaAM36', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaAM36', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaAM36', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaAM36', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaAM36', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaAM36', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaAM36', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V500', @source_owner = N'dbo', @source_object = N'AM36V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V500]', @del_cmd = N'CALL [sp_MSdel_dboAM36V500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369P00', @source_owner = N'dbo', @source_object = N'AM369P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369P00]', @del_cmd = N'CALL [sp_MSdel_dboAM369P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365P00', @source_owner = N'dbo', @source_object = N'AM365P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365P00]', @del_cmd = N'CALL [sp_MSdel_dboAM365P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366P00', @source_owner = N'dbo', @source_object = N'AM366P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366P00]', @del_cmd = N'CALL [sp_MSdel_dboAM366P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367P00', @source_owner = N'dbo', @source_object = N'AM367P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367P00]', @del_cmd = N'CALL [sp_MSdel_dboAM367P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368P00', @source_owner = N'dbo', @source_object = N'AM368P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368P00]', @del_cmd = N'CALL [sp_MSdel_dboAM368P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM360100', @source_owner = N'dbo', @source_object = N'AM360100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM360100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM360100]', @del_cmd = N'CALL [sp_MSdel_dboAM360100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM360100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362P00', @source_owner = N'dbo', @source_object = N'AM362P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362P00]', @del_cmd = N'CALL [sp_MSdel_dboAM362P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM360200', @source_owner = N'dbo', @source_object = N'AM360200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM360200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM360200]', @del_cmd = N'CALL [sp_MSdel_dboAM360200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM360200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM360500', @source_owner = N'dbo', @source_object = N'AM360500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM360500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM360500]', @del_cmd = N'CALL [sp_MSdel_dboAM360500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM360500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM360600', @source_owner = N'dbo', @source_object = N'AM360600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM360600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM360600]', @del_cmd = N'CALL [sp_MSdel_dboAM360600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM360600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM360700', @source_owner = N'dbo', @source_object = N'AM360700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM360700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM360700]', @del_cmd = N'CALL [sp_MSdel_dboAM360700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM360700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM360800', @source_owner = N'dbo', @source_object = N'AM360800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM360800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM360800]', @del_cmd = N'CALL [sp_MSdel_dboAM360800]', @upd_cmd = N'SCALL [sp_MSupd_dboAM360800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM360900', @source_owner = N'dbo', @source_object = N'AM360900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM360900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM360900]', @del_cmd = N'CALL [sp_MSdel_dboAM360900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM360900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361000', @source_owner = N'dbo', @source_object = N'AM361000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361000]', @del_cmd = N'CALL [sp_MSdel_dboAM361000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361100', @source_owner = N'dbo', @source_object = N'AM361100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361100]', @del_cmd = N'CALL [sp_MSdel_dboAM361100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361200', @source_owner = N'dbo', @source_object = N'AM361200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361200]', @del_cmd = N'CALL [sp_MSdel_dboAM361200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361300', @source_owner = N'dbo', @source_object = N'AM361300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361300]', @del_cmd = N'CALL [sp_MSdel_dboAM361300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361400', @source_owner = N'dbo', @source_object = N'AM361400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361400]', @del_cmd = N'CALL [sp_MSdel_dboAM361400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361600', @source_owner = N'dbo', @source_object = N'AM361600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361600]', @del_cmd = N'CALL [sp_MSdel_dboAM361600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361900', @source_owner = N'dbo', @source_object = N'AM361900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361900]', @del_cmd = N'CALL [sp_MSdel_dboAM361900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361L00', @source_owner = N'dbo', @source_object = N'AM361L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361L00]', @del_cmd = N'CALL [sp_MSdel_dboAM361L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361M00', @source_owner = N'dbo', @source_object = N'AM361M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361M00]', @del_cmd = N'CALL [sp_MSdel_dboAM361M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361N00', @source_owner = N'dbo', @source_object = N'AM361N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361N00]', @del_cmd = N'CALL [sp_MSdel_dboAM361N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM361P00', @source_owner = N'dbo', @source_object = N'AM361P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM361P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM361P00]', @del_cmd = N'CALL [sp_MSdel_dboAM361P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM361P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362000', @source_owner = N'dbo', @source_object = N'AM362000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362000]', @del_cmd = N'CALL [sp_MSdel_dboAM362000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362100', @source_owner = N'dbo', @source_object = N'AM362100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362100]', @del_cmd = N'CALL [sp_MSdel_dboAM362100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362200', @source_owner = N'dbo', @source_object = N'AM362200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362200]', @del_cmd = N'CALL [sp_MSdel_dboAM362200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362300', @source_owner = N'dbo', @source_object = N'AM362300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362300]', @del_cmd = N'CALL [sp_MSdel_dboAM362300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362400', @source_owner = N'dbo', @source_object = N'AM362400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362400]', @del_cmd = N'CALL [sp_MSdel_dboAM362400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362500', @source_owner = N'dbo', @source_object = N'AM362500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362500]', @del_cmd = N'CALL [sp_MSdel_dboAM362500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362600', @source_owner = N'dbo', @source_object = N'AM362600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362600]', @del_cmd = N'CALL [sp_MSdel_dboAM362600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362700', @source_owner = N'dbo', @source_object = N'AM362700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362700]', @del_cmd = N'CALL [sp_MSdel_dboAM362700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362800', @source_owner = N'dbo', @source_object = N'AM362800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362800]', @del_cmd = N'CALL [sp_MSdel_dboAM362800]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362900', @source_owner = N'dbo', @source_object = N'AM362900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362900]', @del_cmd = N'CALL [sp_MSdel_dboAM362900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362L00', @source_owner = N'dbo', @source_object = N'AM362L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362L00]', @del_cmd = N'CALL [sp_MSdel_dboAM362L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362M00', @source_owner = N'dbo', @source_object = N'AM362M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362M00]', @del_cmd = N'CALL [sp_MSdel_dboAM362M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM362N00', @source_owner = N'dbo', @source_object = N'AM362N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM362N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM362N00]', @del_cmd = N'CALL [sp_MSdel_dboAM362N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM362N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363000', @source_owner = N'dbo', @source_object = N'AM363000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363000]', @del_cmd = N'CALL [sp_MSdel_dboAM363000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363100', @source_owner = N'dbo', @source_object = N'AM363100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363100]', @del_cmd = N'CALL [sp_MSdel_dboAM363100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363500', @source_owner = N'dbo', @source_object = N'AM363500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363500]', @del_cmd = N'CALL [sp_MSdel_dboAM363500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363600', @source_owner = N'dbo', @source_object = N'AM363600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363600]', @del_cmd = N'CALL [sp_MSdel_dboAM363600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363900', @source_owner = N'dbo', @source_object = N'AM363900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363900]', @del_cmd = N'CALL [sp_MSdel_dboAM363900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363L00', @source_owner = N'dbo', @source_object = N'AM363L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363L00]', @del_cmd = N'CALL [sp_MSdel_dboAM363L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363M00', @source_owner = N'dbo', @source_object = N'AM363M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363M00]', @del_cmd = N'CALL [sp_MSdel_dboAM363M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363N00', @source_owner = N'dbo', @source_object = N'AM363N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363N00]', @del_cmd = N'CALL [sp_MSdel_dboAM363N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM363P00', @source_owner = N'dbo', @source_object = N'AM363P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM363P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM363P00]', @del_cmd = N'CALL [sp_MSdel_dboAM363P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM363P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364000', @source_owner = N'dbo', @source_object = N'AM364000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364000]', @del_cmd = N'CALL [sp_MSdel_dboAM364000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364100', @source_owner = N'dbo', @source_object = N'AM364100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364100]', @del_cmd = N'CALL [sp_MSdel_dboAM364100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364200', @source_owner = N'dbo', @source_object = N'AM364200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364200]', @del_cmd = N'CALL [sp_MSdel_dboAM364200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364300', @source_owner = N'dbo', @source_object = N'AM364300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364300]', @del_cmd = N'CALL [sp_MSdel_dboAM364300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364400', @source_owner = N'dbo', @source_object = N'AM364400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364400]', @del_cmd = N'CALL [sp_MSdel_dboAM364400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364500', @source_owner = N'dbo', @source_object = N'AM364500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364500]', @del_cmd = N'CALL [sp_MSdel_dboAM364500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364600', @source_owner = N'dbo', @source_object = N'AM364600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364600]', @del_cmd = N'CALL [sp_MSdel_dboAM364600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364700', @source_owner = N'dbo', @source_object = N'AM364700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364700]', @del_cmd = N'CALL [sp_MSdel_dboAM364700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364800', @source_owner = N'dbo', @source_object = N'AM364800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364800]', @del_cmd = N'CALL [sp_MSdel_dboAM364800]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364900', @source_owner = N'dbo', @source_object = N'AM364900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364900]', @del_cmd = N'CALL [sp_MSdel_dboAM364900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364L00', @source_owner = N'dbo', @source_object = N'AM364L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364L00]', @del_cmd = N'CALL [sp_MSdel_dboAM364L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364M00', @source_owner = N'dbo', @source_object = N'AM364M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364M00]', @del_cmd = N'CALL [sp_MSdel_dboAM364M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364N00', @source_owner = N'dbo', @source_object = N'AM364N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364N00]', @del_cmd = N'CALL [sp_MSdel_dboAM364N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM364P00', @source_owner = N'dbo', @source_object = N'AM364P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM364P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM364P00]', @del_cmd = N'CALL [sp_MSdel_dboAM364P00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM364P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365000', @source_owner = N'dbo', @source_object = N'AM365000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365000]', @del_cmd = N'CALL [sp_MSdel_dboAM365000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365100', @source_owner = N'dbo', @source_object = N'AM365100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365100]', @del_cmd = N'CALL [sp_MSdel_dboAM365100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365200', @source_owner = N'dbo', @source_object = N'AM365200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365200]', @del_cmd = N'CALL [sp_MSdel_dboAM365200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365300', @source_owner = N'dbo', @source_object = N'AM365300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365300]', @del_cmd = N'CALL [sp_MSdel_dboAM365300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365400', @source_owner = N'dbo', @source_object = N'AM365400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365400]', @del_cmd = N'CALL [sp_MSdel_dboAM365400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365600', @source_owner = N'dbo', @source_object = N'AM365600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365600]', @del_cmd = N'CALL [sp_MSdel_dboAM365600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365700', @source_owner = N'dbo', @source_object = N'AM365700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365700]', @del_cmd = N'CALL [sp_MSdel_dboAM365700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365800', @source_owner = N'dbo', @source_object = N'AM365800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365800]', @del_cmd = N'CALL [sp_MSdel_dboAM365800]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365900', @source_owner = N'dbo', @source_object = N'AM365900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365900]', @del_cmd = N'CALL [sp_MSdel_dboAM365900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365L00', @source_owner = N'dbo', @source_object = N'AM365L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365L00]', @del_cmd = N'CALL [sp_MSdel_dboAM365L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365M00', @source_owner = N'dbo', @source_object = N'AM365M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365M00]', @del_cmd = N'CALL [sp_MSdel_dboAM365M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM365N00', @source_owner = N'dbo', @source_object = N'AM365N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM365N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM365N00]', @del_cmd = N'CALL [sp_MSdel_dboAM365N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM365N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366000', @source_owner = N'dbo', @source_object = N'AM366000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366000]', @del_cmd = N'CALL [sp_MSdel_dboAM366000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366100', @source_owner = N'dbo', @source_object = N'AM366100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366100]', @del_cmd = N'CALL [sp_MSdel_dboAM366100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366200', @source_owner = N'dbo', @source_object = N'AM366200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366200]', @del_cmd = N'CALL [sp_MSdel_dboAM366200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366300', @source_owner = N'dbo', @source_object = N'AM366300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366300]', @del_cmd = N'CALL [sp_MSdel_dboAM366300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366400', @source_owner = N'dbo', @source_object = N'AM366400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366400]', @del_cmd = N'CALL [sp_MSdel_dboAM366400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366500', @source_owner = N'dbo', @source_object = N'AM366500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366500]', @del_cmd = N'CALL [sp_MSdel_dboAM366500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366600', @source_owner = N'dbo', @source_object = N'AM366600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366600]', @del_cmd = N'CALL [sp_MSdel_dboAM366600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366700', @source_owner = N'dbo', @source_object = N'AM366700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366700]', @del_cmd = N'CALL [sp_MSdel_dboAM366700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366900', @source_owner = N'dbo', @source_object = N'AM366900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366900]', @del_cmd = N'CALL [sp_MSdel_dboAM366900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366L00', @source_owner = N'dbo', @source_object = N'AM366L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366L00]', @del_cmd = N'CALL [sp_MSdel_dboAM366L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366M00', @source_owner = N'dbo', @source_object = N'AM366M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366M00]', @del_cmd = N'CALL [sp_MSdel_dboAM366M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM366N00', @source_owner = N'dbo', @source_object = N'AM366N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM366N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM366N00]', @del_cmd = N'CALL [sp_MSdel_dboAM366N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM366N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367000', @source_owner = N'dbo', @source_object = N'AM367000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367000]', @del_cmd = N'CALL [sp_MSdel_dboAM367000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367100', @source_owner = N'dbo', @source_object = N'AM367100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367100]', @del_cmd = N'CALL [sp_MSdel_dboAM367100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367200', @source_owner = N'dbo', @source_object = N'AM367200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367200]', @del_cmd = N'CALL [sp_MSdel_dboAM367200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367300', @source_owner = N'dbo', @source_object = N'AM367300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367300]', @del_cmd = N'CALL [sp_MSdel_dboAM367300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367400', @source_owner = N'dbo', @source_object = N'AM367400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367400]', @del_cmd = N'CALL [sp_MSdel_dboAM367400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367500', @source_owner = N'dbo', @source_object = N'AM367500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367500]', @del_cmd = N'CALL [sp_MSdel_dboAM367500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367600', @source_owner = N'dbo', @source_object = N'AM367600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367600]', @del_cmd = N'CALL [sp_MSdel_dboAM367600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367700', @source_owner = N'dbo', @source_object = N'AM367700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367700]', @del_cmd = N'CALL [sp_MSdel_dboAM367700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367800', @source_owner = N'dbo', @source_object = N'AM367800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367800]', @del_cmd = N'CALL [sp_MSdel_dboAM367800]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367L00', @source_owner = N'dbo', @source_object = N'AM367L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367L00]', @del_cmd = N'CALL [sp_MSdel_dboAM367L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367M00', @source_owner = N'dbo', @source_object = N'AM367M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367M00]', @del_cmd = N'CALL [sp_MSdel_dboAM367M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM367N00', @source_owner = N'dbo', @source_object = N'AM367N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM367N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM367N00]', @del_cmd = N'CALL [sp_MSdel_dboAM367N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM367N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368000', @source_owner = N'dbo', @source_object = N'AM368000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368000]', @del_cmd = N'CALL [sp_MSdel_dboAM368000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368100', @source_owner = N'dbo', @source_object = N'AM368100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368100]', @del_cmd = N'CALL [sp_MSdel_dboAM368100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368300', @source_owner = N'dbo', @source_object = N'AM368300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368300]', @del_cmd = N'CALL [sp_MSdel_dboAM368300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368400', @source_owner = N'dbo', @source_object = N'AM368400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368400]', @del_cmd = N'CALL [sp_MSdel_dboAM368400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368500', @source_owner = N'dbo', @source_object = N'AM368500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368500]', @del_cmd = N'CALL [sp_MSdel_dboAM368500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368800', @source_owner = N'dbo', @source_object = N'AM368800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368800]', @del_cmd = N'CALL [sp_MSdel_dboAM368800]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368900', @source_owner = N'dbo', @source_object = N'AM368900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368900]', @del_cmd = N'CALL [sp_MSdel_dboAM368900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368L00', @source_owner = N'dbo', @source_object = N'AM368L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368L00]', @del_cmd = N'CALL [sp_MSdel_dboAM368L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368M00', @source_owner = N'dbo', @source_object = N'AM368M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368M00]', @del_cmd = N'CALL [sp_MSdel_dboAM368M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM368N00', @source_owner = N'dbo', @source_object = N'AM368N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM368N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM368N00]', @del_cmd = N'CALL [sp_MSdel_dboAM368N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM368N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369000', @source_owner = N'dbo', @source_object = N'AM369000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369000]', @del_cmd = N'CALL [sp_MSdel_dboAM369000]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369100', @source_owner = N'dbo', @source_object = N'AM369100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369100]', @del_cmd = N'CALL [sp_MSdel_dboAM369100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369200', @source_owner = N'dbo', @source_object = N'AM369200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369200]', @del_cmd = N'CALL [sp_MSdel_dboAM369200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369300', @source_owner = N'dbo', @source_object = N'AM369300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369300]', @del_cmd = N'CALL [sp_MSdel_dboAM369300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369400', @source_owner = N'dbo', @source_object = N'AM369400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369400]', @del_cmd = N'CALL [sp_MSdel_dboAM369400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369500', @source_owner = N'dbo', @source_object = N'AM369500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369500]', @del_cmd = N'CALL [sp_MSdel_dboAM369500]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369600', @source_owner = N'dbo', @source_object = N'AM369600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369600]', @del_cmd = N'CALL [sp_MSdel_dboAM369600]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369700', @source_owner = N'dbo', @source_object = N'AM369700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369700]', @del_cmd = N'CALL [sp_MSdel_dboAM369700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369900', @source_owner = N'dbo', @source_object = N'AM369900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369900]', @del_cmd = N'CALL [sp_MSdel_dboAM369900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369L00', @source_owner = N'dbo', @source_object = N'AM369L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369L00]', @del_cmd = N'CALL [sp_MSdel_dboAM369L00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369M00', @source_owner = N'dbo', @source_object = N'AM369M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369M00]', @del_cmd = N'CALL [sp_MSdel_dboAM369M00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM369N00', @source_owner = N'dbo', @source_object = N'AM369N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM369N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM369N00]', @del_cmd = N'CALL [sp_MSdel_dboAM369N00]', @upd_cmd = N'SCALL [sp_MSupd_dboAM369N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V100', @source_owner = N'dbo', @source_object = N'AM36V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V100]', @del_cmd = N'CALL [sp_MSdel_dboAM36V100]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V200', @source_owner = N'dbo', @source_object = N'AM36V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V200]', @del_cmd = N'CALL [sp_MSdel_dboAM36V200]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V300', @source_owner = N'dbo', @source_object = N'AM36V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V300]', @del_cmd = N'CALL [sp_MSdel_dboAM36V300]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V400', @source_owner = N'dbo', @source_object = N'AM36V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V400]', @del_cmd = N'CALL [sp_MSdel_dboAM36V400]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V700', @source_owner = N'dbo', @source_object = N'AM36V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V700]', @del_cmd = N'CALL [sp_MSdel_dboAM36V700]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V800', @source_owner = N'dbo', @source_object = N'AM36V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V800]', @del_cmd = N'CALL [sp_MSdel_dboAM36V800]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaAM36', @article = N'AM36V900', @source_owner = N'dbo', @source_object = N'AM36V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'AM36V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboAM36V900]', @del_cmd = N'CALL [sp_MSdel_dboAM36V900]', @upd_cmd = N'SCALL [sp_MSupd_dboAM36V900]'
GO


-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaAM36', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaAM36', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

