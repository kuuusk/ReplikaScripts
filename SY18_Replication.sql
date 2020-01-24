-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSY18', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSY18', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSY18', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY18', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY18', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY18', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY18', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY18', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V500', @source_owner = N'dbo', @source_object = N'SY18V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V500]', @del_cmd = N'CALL [sp_MSdel_dboSY18V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189P00', @source_owner = N'dbo', @source_object = N'SY189P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189P00]', @del_cmd = N'CALL [sp_MSdel_dboSY189P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185P00', @source_owner = N'dbo', @source_object = N'SY185P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185P00]', @del_cmd = N'CALL [sp_MSdel_dboSY185P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186P00', @source_owner = N'dbo', @source_object = N'SY186P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186P00]', @del_cmd = N'CALL [sp_MSdel_dboSY186P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187P00', @source_owner = N'dbo', @source_object = N'SY187P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187P00]', @del_cmd = N'CALL [sp_MSdel_dboSY187P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188P00', @source_owner = N'dbo', @source_object = N'SY188P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188P00]', @del_cmd = N'CALL [sp_MSdel_dboSY188P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY180100', @source_owner = N'dbo', @source_object = N'SY180100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY180100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY180100]', @del_cmd = N'CALL [sp_MSdel_dboSY180100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY180100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182P00', @source_owner = N'dbo', @source_object = N'SY182P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182P00]', @del_cmd = N'CALL [sp_MSdel_dboSY182P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY180200', @source_owner = N'dbo', @source_object = N'SY180200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY180200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY180200]', @del_cmd = N'CALL [sp_MSdel_dboSY180200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY180200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY180500', @source_owner = N'dbo', @source_object = N'SY180500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY180500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY180500]', @del_cmd = N'CALL [sp_MSdel_dboSY180500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY180500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY180600', @source_owner = N'dbo', @source_object = N'SY180600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY180600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY180600]', @del_cmd = N'CALL [sp_MSdel_dboSY180600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY180600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY180700', @source_owner = N'dbo', @source_object = N'SY180700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY180700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY180700]', @del_cmd = N'CALL [sp_MSdel_dboSY180700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY180700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY180800', @source_owner = N'dbo', @source_object = N'SY180800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY180800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY180800]', @del_cmd = N'CALL [sp_MSdel_dboSY180800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY180800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY180900', @source_owner = N'dbo', @source_object = N'SY180900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY180900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY180900]', @del_cmd = N'CALL [sp_MSdel_dboSY180900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY180900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181000', @source_owner = N'dbo', @source_object = N'SY181000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181000]', @del_cmd = N'CALL [sp_MSdel_dboSY181000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181100', @source_owner = N'dbo', @source_object = N'SY181100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181100]', @del_cmd = N'CALL [sp_MSdel_dboSY181100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181200', @source_owner = N'dbo', @source_object = N'SY181200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181200]', @del_cmd = N'CALL [sp_MSdel_dboSY181200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181300', @source_owner = N'dbo', @source_object = N'SY181300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181300]', @del_cmd = N'CALL [sp_MSdel_dboSY181300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181400', @source_owner = N'dbo', @source_object = N'SY181400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181400]', @del_cmd = N'CALL [sp_MSdel_dboSY181400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181600', @source_owner = N'dbo', @source_object = N'SY181600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181600]', @del_cmd = N'CALL [sp_MSdel_dboSY181600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181900', @source_owner = N'dbo', @source_object = N'SY181900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181900]', @del_cmd = N'CALL [sp_MSdel_dboSY181900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181L00', @source_owner = N'dbo', @source_object = N'SY181L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181L00]', @del_cmd = N'CALL [sp_MSdel_dboSY181L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181M00', @source_owner = N'dbo', @source_object = N'SY181M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181M00]', @del_cmd = N'CALL [sp_MSdel_dboSY181M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181N00', @source_owner = N'dbo', @source_object = N'SY181N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181N00]', @del_cmd = N'CALL [sp_MSdel_dboSY181N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY181P00', @source_owner = N'dbo', @source_object = N'SY181P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY181P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY181P00]', @del_cmd = N'CALL [sp_MSdel_dboSY181P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY181P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182000', @source_owner = N'dbo', @source_object = N'SY182000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182000]', @del_cmd = N'CALL [sp_MSdel_dboSY182000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182100', @source_owner = N'dbo', @source_object = N'SY182100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182100]', @del_cmd = N'CALL [sp_MSdel_dboSY182100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182200', @source_owner = N'dbo', @source_object = N'SY182200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182200]', @del_cmd = N'CALL [sp_MSdel_dboSY182200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182300', @source_owner = N'dbo', @source_object = N'SY182300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182300]', @del_cmd = N'CALL [sp_MSdel_dboSY182300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182400', @source_owner = N'dbo', @source_object = N'SY182400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182400]', @del_cmd = N'CALL [sp_MSdel_dboSY182400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182500', @source_owner = N'dbo', @source_object = N'SY182500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182500]', @del_cmd = N'CALL [sp_MSdel_dboSY182500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182600', @source_owner = N'dbo', @source_object = N'SY182600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182600]', @del_cmd = N'CALL [sp_MSdel_dboSY182600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182700', @source_owner = N'dbo', @source_object = N'SY182700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182700]', @del_cmd = N'CALL [sp_MSdel_dboSY182700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182800', @source_owner = N'dbo', @source_object = N'SY182800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182800]', @del_cmd = N'CALL [sp_MSdel_dboSY182800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182900', @source_owner = N'dbo', @source_object = N'SY182900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182900]', @del_cmd = N'CALL [sp_MSdel_dboSY182900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182L00', @source_owner = N'dbo', @source_object = N'SY182L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182L00]', @del_cmd = N'CALL [sp_MSdel_dboSY182L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182M00', @source_owner = N'dbo', @source_object = N'SY182M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182M00]', @del_cmd = N'CALL [sp_MSdel_dboSY182M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY182N00', @source_owner = N'dbo', @source_object = N'SY182N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY182N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY182N00]', @del_cmd = N'CALL [sp_MSdel_dboSY182N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY182N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183000', @source_owner = N'dbo', @source_object = N'SY183000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183000]', @del_cmd = N'CALL [sp_MSdel_dboSY183000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183100', @source_owner = N'dbo', @source_object = N'SY183100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183100]', @del_cmd = N'CALL [sp_MSdel_dboSY183100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183500', @source_owner = N'dbo', @source_object = N'SY183500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183500]', @del_cmd = N'CALL [sp_MSdel_dboSY183500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183600', @source_owner = N'dbo', @source_object = N'SY183600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183600]', @del_cmd = N'CALL [sp_MSdel_dboSY183600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183900', @source_owner = N'dbo', @source_object = N'SY183900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183900]', @del_cmd = N'CALL [sp_MSdel_dboSY183900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183L00', @source_owner = N'dbo', @source_object = N'SY183L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183L00]', @del_cmd = N'CALL [sp_MSdel_dboSY183L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183M00', @source_owner = N'dbo', @source_object = N'SY183M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183M00]', @del_cmd = N'CALL [sp_MSdel_dboSY183M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183N00', @source_owner = N'dbo', @source_object = N'SY183N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183N00]', @del_cmd = N'CALL [sp_MSdel_dboSY183N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY183P00', @source_owner = N'dbo', @source_object = N'SY183P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY183P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY183P00]', @del_cmd = N'CALL [sp_MSdel_dboSY183P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY183P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184000', @source_owner = N'dbo', @source_object = N'SY184000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184000]', @del_cmd = N'CALL [sp_MSdel_dboSY184000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184100', @source_owner = N'dbo', @source_object = N'SY184100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184100]', @del_cmd = N'CALL [sp_MSdel_dboSY184100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184200', @source_owner = N'dbo', @source_object = N'SY184200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184200]', @del_cmd = N'CALL [sp_MSdel_dboSY184200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184300', @source_owner = N'dbo', @source_object = N'SY184300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184300]', @del_cmd = N'CALL [sp_MSdel_dboSY184300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184400', @source_owner = N'dbo', @source_object = N'SY184400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184400]', @del_cmd = N'CALL [sp_MSdel_dboSY184400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184500', @source_owner = N'dbo', @source_object = N'SY184500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184500]', @del_cmd = N'CALL [sp_MSdel_dboSY184500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184600', @source_owner = N'dbo', @source_object = N'SY184600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184600]', @del_cmd = N'CALL [sp_MSdel_dboSY184600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184700', @source_owner = N'dbo', @source_object = N'SY184700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184700]', @del_cmd = N'CALL [sp_MSdel_dboSY184700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184800', @source_owner = N'dbo', @source_object = N'SY184800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184800]', @del_cmd = N'CALL [sp_MSdel_dboSY184800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184900', @source_owner = N'dbo', @source_object = N'SY184900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184900]', @del_cmd = N'CALL [sp_MSdel_dboSY184900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184L00', @source_owner = N'dbo', @source_object = N'SY184L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184L00]', @del_cmd = N'CALL [sp_MSdel_dboSY184L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184M00', @source_owner = N'dbo', @source_object = N'SY184M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184M00]', @del_cmd = N'CALL [sp_MSdel_dboSY184M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184N00', @source_owner = N'dbo', @source_object = N'SY184N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184N00]', @del_cmd = N'CALL [sp_MSdel_dboSY184N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY184P00', @source_owner = N'dbo', @source_object = N'SY184P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY184P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY184P00]', @del_cmd = N'CALL [sp_MSdel_dboSY184P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY184P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185000', @source_owner = N'dbo', @source_object = N'SY185000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185000]', @del_cmd = N'CALL [sp_MSdel_dboSY185000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185100', @source_owner = N'dbo', @source_object = N'SY185100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185100]', @del_cmd = N'CALL [sp_MSdel_dboSY185100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185200', @source_owner = N'dbo', @source_object = N'SY185200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185200]', @del_cmd = N'CALL [sp_MSdel_dboSY185200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185300', @source_owner = N'dbo', @source_object = N'SY185300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185300]', @del_cmd = N'CALL [sp_MSdel_dboSY185300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185400', @source_owner = N'dbo', @source_object = N'SY185400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185400]', @del_cmd = N'CALL [sp_MSdel_dboSY185400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185600', @source_owner = N'dbo', @source_object = N'SY185600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185600]', @del_cmd = N'CALL [sp_MSdel_dboSY185600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185700', @source_owner = N'dbo', @source_object = N'SY185700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185700]', @del_cmd = N'CALL [sp_MSdel_dboSY185700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185800', @source_owner = N'dbo', @source_object = N'SY185800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185800]', @del_cmd = N'CALL [sp_MSdel_dboSY185800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185900', @source_owner = N'dbo', @source_object = N'SY185900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185900]', @del_cmd = N'CALL [sp_MSdel_dboSY185900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185L00', @source_owner = N'dbo', @source_object = N'SY185L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185L00]', @del_cmd = N'CALL [sp_MSdel_dboSY185L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185M00', @source_owner = N'dbo', @source_object = N'SY185M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185M00]', @del_cmd = N'CALL [sp_MSdel_dboSY185M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY185N00', @source_owner = N'dbo', @source_object = N'SY185N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY185N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY185N00]', @del_cmd = N'CALL [sp_MSdel_dboSY185N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY185N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186000', @source_owner = N'dbo', @source_object = N'SY186000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186000]', @del_cmd = N'CALL [sp_MSdel_dboSY186000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186100', @source_owner = N'dbo', @source_object = N'SY186100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186100]', @del_cmd = N'CALL [sp_MSdel_dboSY186100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186200', @source_owner = N'dbo', @source_object = N'SY186200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186200]', @del_cmd = N'CALL [sp_MSdel_dboSY186200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186300', @source_owner = N'dbo', @source_object = N'SY186300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186300]', @del_cmd = N'CALL [sp_MSdel_dboSY186300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186400', @source_owner = N'dbo', @source_object = N'SY186400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186400]', @del_cmd = N'CALL [sp_MSdel_dboSY186400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186500', @source_owner = N'dbo', @source_object = N'SY186500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186500]', @del_cmd = N'CALL [sp_MSdel_dboSY186500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186600', @source_owner = N'dbo', @source_object = N'SY186600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186600]', @del_cmd = N'CALL [sp_MSdel_dboSY186600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186700', @source_owner = N'dbo', @source_object = N'SY186700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186700]', @del_cmd = N'CALL [sp_MSdel_dboSY186700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186900', @source_owner = N'dbo', @source_object = N'SY186900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186900]', @del_cmd = N'CALL [sp_MSdel_dboSY186900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186L00', @source_owner = N'dbo', @source_object = N'SY186L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186L00]', @del_cmd = N'CALL [sp_MSdel_dboSY186L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186M00', @source_owner = N'dbo', @source_object = N'SY186M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186M00]', @del_cmd = N'CALL [sp_MSdel_dboSY186M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY186N00', @source_owner = N'dbo', @source_object = N'SY186N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY186N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY186N00]', @del_cmd = N'CALL [sp_MSdel_dboSY186N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY186N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187000', @source_owner = N'dbo', @source_object = N'SY187000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187000]', @del_cmd = N'CALL [sp_MSdel_dboSY187000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187100', @source_owner = N'dbo', @source_object = N'SY187100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187100]', @del_cmd = N'CALL [sp_MSdel_dboSY187100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187200', @source_owner = N'dbo', @source_object = N'SY187200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187200]', @del_cmd = N'CALL [sp_MSdel_dboSY187200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187300', @source_owner = N'dbo', @source_object = N'SY187300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187300]', @del_cmd = N'CALL [sp_MSdel_dboSY187300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187400', @source_owner = N'dbo', @source_object = N'SY187400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187400]', @del_cmd = N'CALL [sp_MSdel_dboSY187400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187500', @source_owner = N'dbo', @source_object = N'SY187500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187500]', @del_cmd = N'CALL [sp_MSdel_dboSY187500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187600', @source_owner = N'dbo', @source_object = N'SY187600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187600]', @del_cmd = N'CALL [sp_MSdel_dboSY187600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187700', @source_owner = N'dbo', @source_object = N'SY187700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187700]', @del_cmd = N'CALL [sp_MSdel_dboSY187700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187800', @source_owner = N'dbo', @source_object = N'SY187800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187800]', @del_cmd = N'CALL [sp_MSdel_dboSY187800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187L00', @source_owner = N'dbo', @source_object = N'SY187L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187L00]', @del_cmd = N'CALL [sp_MSdel_dboSY187L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187M00', @source_owner = N'dbo', @source_object = N'SY187M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187M00]', @del_cmd = N'CALL [sp_MSdel_dboSY187M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY187N00', @source_owner = N'dbo', @source_object = N'SY187N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY187N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY187N00]', @del_cmd = N'CALL [sp_MSdel_dboSY187N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY187N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188000', @source_owner = N'dbo', @source_object = N'SY188000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188000]', @del_cmd = N'CALL [sp_MSdel_dboSY188000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188100', @source_owner = N'dbo', @source_object = N'SY188100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188100]', @del_cmd = N'CALL [sp_MSdel_dboSY188100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188300', @source_owner = N'dbo', @source_object = N'SY188300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188300]', @del_cmd = N'CALL [sp_MSdel_dboSY188300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188400', @source_owner = N'dbo', @source_object = N'SY188400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188400]', @del_cmd = N'CALL [sp_MSdel_dboSY188400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188500', @source_owner = N'dbo', @source_object = N'SY188500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188500]', @del_cmd = N'CALL [sp_MSdel_dboSY188500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188800', @source_owner = N'dbo', @source_object = N'SY188800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188800]', @del_cmd = N'CALL [sp_MSdel_dboSY188800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188900', @source_owner = N'dbo', @source_object = N'SY188900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188900]', @del_cmd = N'CALL [sp_MSdel_dboSY188900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188L00', @source_owner = N'dbo', @source_object = N'SY188L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188L00]', @del_cmd = N'CALL [sp_MSdel_dboSY188L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188M00', @source_owner = N'dbo', @source_object = N'SY188M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188M00]', @del_cmd = N'CALL [sp_MSdel_dboSY188M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY188N00', @source_owner = N'dbo', @source_object = N'SY188N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY188N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY188N00]', @del_cmd = N'CALL [sp_MSdel_dboSY188N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY188N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189000', @source_owner = N'dbo', @source_object = N'SY189000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189000]', @del_cmd = N'CALL [sp_MSdel_dboSY189000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189100', @source_owner = N'dbo', @source_object = N'SY189100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189100]', @del_cmd = N'CALL [sp_MSdel_dboSY189100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189200', @source_owner = N'dbo', @source_object = N'SY189200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189200]', @del_cmd = N'CALL [sp_MSdel_dboSY189200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189300', @source_owner = N'dbo', @source_object = N'SY189300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189300]', @del_cmd = N'CALL [sp_MSdel_dboSY189300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189400', @source_owner = N'dbo', @source_object = N'SY189400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189400]', @del_cmd = N'CALL [sp_MSdel_dboSY189400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189500', @source_owner = N'dbo', @source_object = N'SY189500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189500]', @del_cmd = N'CALL [sp_MSdel_dboSY189500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189600', @source_owner = N'dbo', @source_object = N'SY189600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189600]', @del_cmd = N'CALL [sp_MSdel_dboSY189600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189700', @source_owner = N'dbo', @source_object = N'SY189700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189700]', @del_cmd = N'CALL [sp_MSdel_dboSY189700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189900', @source_owner = N'dbo', @source_object = N'SY189900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189900]', @del_cmd = N'CALL [sp_MSdel_dboSY189900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189L00', @source_owner = N'dbo', @source_object = N'SY189L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189L00]', @del_cmd = N'CALL [sp_MSdel_dboSY189L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY189M00', @source_owner = N'dbo', @source_object = N'SY189M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189M00]', @del_cmd = N'CALL [sp_MSdel_dboSY189M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article =N'SY189N00', @source_owner = N'dbo', @source_object = N'SY189N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY189N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY189N00]', @del_cmd = N'CALL [sp_MSdel_dboSY189N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY189N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V100', @source_owner = N'dbo', @source_object = N'SY18V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V100]', @del_cmd = N'CALL [sp_MSdel_dboSY18V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V200', @source_owner = N'dbo', @source_object = N'SY18V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V200]', @del_cmd = N'CALL [sp_MSdel_dboSY18V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V300', @source_owner = N'dbo', @source_object = N'SY18V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V300]', @del_cmd = N'CALL [sp_MSdel_dboSY18V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V400', @source_owner = N'dbo', @source_object = N'SY18V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V400]', @del_cmd = N'CALL [sp_MSdel_dboSY18V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V700', @source_owner = N'dbo', @source_object = N'SY18V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V700]', @del_cmd = N'CALL [sp_MSdel_dboSY18V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V800', @source_owner = N'dbo', @source_object = N'SY18V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V800]', @del_cmd = N'CALL [sp_MSdel_dboSY18V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY18', @article = N'SY18V900', @source_owner = N'dbo', @source_object = N'SY18V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY18V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY18V900]', @del_cmd = N'CALL [sp_MSdel_dboSY18V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY18V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSY18', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSY18', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

