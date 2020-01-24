-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaPC01', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaPC01', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaPC01', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC01', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC01', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC01', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC01', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC01', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V500', @source_owner = N'dbo', @source_object = N'PC01V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V500]', @del_cmd = N'CALL [sp_MSdel_dboPC01V500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019P00', @source_owner = N'dbo', @source_object = N'PC019P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019P00]', @del_cmd = N'CALL [sp_MSdel_dboPC019P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015P00', @source_owner = N'dbo', @source_object = N'PC015P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015P00]', @del_cmd = N'CALL [sp_MSdel_dboPC015P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016P00', @source_owner = N'dbo', @source_object = N'PC016P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016P00]', @del_cmd = N'CALL [sp_MSdel_dboPC016P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017P00', @source_owner = N'dbo', @source_object = N'PC017P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017P00]', @del_cmd = N'CALL [sp_MSdel_dboPC017P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018P00', @source_owner = N'dbo', @source_object = N'PC018P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018P00]', @del_cmd = N'CALL [sp_MSdel_dboPC018P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC010100', @source_owner = N'dbo', @source_object = N'PC010100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC010100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC010100]', @del_cmd = N'CALL [sp_MSdel_dboPC010100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC010100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012P00', @source_owner = N'dbo', @source_object = N'PC012P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012P00]', @del_cmd = N'CALL [sp_MSdel_dboPC012P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC010200', @source_owner = N'dbo', @source_object = N'PC010200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC010200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC010200]', @del_cmd = N'CALL [sp_MSdel_dboPC010200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC010200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC010500', @source_owner = N'dbo', @source_object = N'PC010500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC010500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC010500]', @del_cmd = N'CALL [sp_MSdel_dboPC010500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC010500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC010600', @source_owner = N'dbo', @source_object = N'PC010600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC010600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC010600]', @del_cmd = N'CALL [sp_MSdel_dboPC010600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC010600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC010700', @source_owner = N'dbo', @source_object = N'PC010700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC010700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC010700]', @del_cmd = N'CALL [sp_MSdel_dboPC010700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC010700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC010800', @source_owner = N'dbo', @source_object = N'PC010800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC010800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC010800]', @del_cmd = N'CALL [sp_MSdel_dboPC010800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC010800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC010900', @source_owner = N'dbo', @source_object = N'PC010900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC010900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC010900]', @del_cmd = N'CALL [sp_MSdel_dboPC010900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC010900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011000', @source_owner = N'dbo', @source_object = N'PC011000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011000]', @del_cmd = N'CALL [sp_MSdel_dboPC011000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011100', @source_owner = N'dbo', @source_object = N'PC011100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011100]', @del_cmd = N'CALL [sp_MSdel_dboPC011100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011200', @source_owner = N'dbo', @source_object = N'PC011200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011200]', @del_cmd = N'CALL [sp_MSdel_dboPC011200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011300', @source_owner = N'dbo', @source_object = N'PC011300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011300]', @del_cmd = N'CALL [sp_MSdel_dboPC011300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011400', @source_owner = N'dbo', @source_object = N'PC011400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011400]', @del_cmd = N'CALL [sp_MSdel_dboPC011400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011600', @source_owner = N'dbo', @source_object = N'PC011600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011600]', @del_cmd = N'CALL [sp_MSdel_dboPC011600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011900', @source_owner = N'dbo', @source_object = N'PC011900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011900]', @del_cmd = N'CALL [sp_MSdel_dboPC011900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011L00', @source_owner = N'dbo', @source_object = N'PC011L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011L00]', @del_cmd = N'CALL [sp_MSdel_dboPC011L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011M00', @source_owner = N'dbo', @source_object = N'PC011M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011M00]', @del_cmd = N'CALL [sp_MSdel_dboPC011M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011N00', @source_owner = N'dbo', @source_object = N'PC011N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011N00]', @del_cmd = N'CALL [sp_MSdel_dboPC011N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC011P00', @source_owner = N'dbo', @source_object = N'PC011P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC011P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC011P00]', @del_cmd = N'CALL [sp_MSdel_dboPC011P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC011P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012000', @source_owner = N'dbo', @source_object = N'PC012000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012000]', @del_cmd = N'CALL [sp_MSdel_dboPC012000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012100', @source_owner = N'dbo', @source_object = N'PC012100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012100]', @del_cmd = N'CALL [sp_MSdel_dboPC012100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012200', @source_owner = N'dbo', @source_object = N'PC012200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012200]', @del_cmd = N'CALL [sp_MSdel_dboPC012200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012300', @source_owner = N'dbo', @source_object = N'PC012300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012300]', @del_cmd = N'CALL [sp_MSdel_dboPC012300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012400', @source_owner = N'dbo', @source_object = N'PC012400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012400]', @del_cmd = N'CALL [sp_MSdel_dboPC012400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012500', @source_owner = N'dbo', @source_object = N'PC012500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012500]', @del_cmd = N'CALL [sp_MSdel_dboPC012500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012600', @source_owner = N'dbo', @source_object = N'PC012600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012600]', @del_cmd = N'CALL [sp_MSdel_dboPC012600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012700', @source_owner = N'dbo', @source_object = N'PC012700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012700]', @del_cmd = N'CALL [sp_MSdel_dboPC012700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012800', @source_owner = N'dbo', @source_object = N'PC012800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012800]', @del_cmd = N'CALL [sp_MSdel_dboPC012800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012900', @source_owner = N'dbo', @source_object = N'PC012900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012900]', @del_cmd = N'CALL [sp_MSdel_dboPC012900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012L00', @source_owner = N'dbo', @source_object = N'PC012L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012L00]', @del_cmd = N'CALL [sp_MSdel_dboPC012L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012M00', @source_owner = N'dbo', @source_object = N'PC012M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012M00]', @del_cmd = N'CALL [sp_MSdel_dboPC012M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC012N00', @source_owner = N'dbo', @source_object = N'PC012N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC012N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC012N00]', @del_cmd = N'CALL [sp_MSdel_dboPC012N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC012N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013000', @source_owner = N'dbo', @source_object = N'PC013000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013000]', @del_cmd = N'CALL [sp_MSdel_dboPC013000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013100', @source_owner = N'dbo', @source_object = N'PC013100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013100]', @del_cmd = N'CALL [sp_MSdel_dboPC013100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013500', @source_owner = N'dbo', @source_object = N'PC013500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013500]', @del_cmd = N'CALL [sp_MSdel_dboPC013500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013600', @source_owner = N'dbo', @source_object = N'PC013600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013600]', @del_cmd = N'CALL [sp_MSdel_dboPC013600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013900', @source_owner = N'dbo', @source_object = N'PC013900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013900]', @del_cmd = N'CALL [sp_MSdel_dboPC013900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013L00', @source_owner = N'dbo', @source_object = N'PC013L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013L00]', @del_cmd = N'CALL [sp_MSdel_dboPC013L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013M00', @source_owner = N'dbo', @source_object = N'PC013M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013M00]', @del_cmd = N'CALL [sp_MSdel_dboPC013M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013N00', @source_owner = N'dbo', @source_object = N'PC013N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013N00]', @del_cmd = N'CALL [sp_MSdel_dboPC013N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC013P00', @source_owner = N'dbo', @source_object = N'PC013P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC013P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC013P00]', @del_cmd = N'CALL [sp_MSdel_dboPC013P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC013P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014000', @source_owner = N'dbo', @source_object = N'PC014000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014000]', @del_cmd = N'CALL [sp_MSdel_dboPC014000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014100', @source_owner = N'dbo', @source_object = N'PC014100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014100]', @del_cmd = N'CALL [sp_MSdel_dboPC014100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014200', @source_owner = N'dbo', @source_object = N'PC014200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014200]', @del_cmd = N'CALL [sp_MSdel_dboPC014200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014300', @source_owner = N'dbo', @source_object = N'PC014300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014300]', @del_cmd = N'CALL [sp_MSdel_dboPC014300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014400', @source_owner = N'dbo', @source_object = N'PC014400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014400]', @del_cmd = N'CALL [sp_MSdel_dboPC014400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014500', @source_owner = N'dbo', @source_object = N'PC014500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014500]', @del_cmd = N'CALL [sp_MSdel_dboPC014500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014600', @source_owner = N'dbo', @source_object = N'PC014600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014600]', @del_cmd = N'CALL [sp_MSdel_dboPC014600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014700', @source_owner = N'dbo', @source_object = N'PC014700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014700]', @del_cmd = N'CALL [sp_MSdel_dboPC014700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014800', @source_owner = N'dbo', @source_object = N'PC014800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014800]', @del_cmd = N'CALL [sp_MSdel_dboPC014800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014900', @source_owner = N'dbo', @source_object = N'PC014900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014900]', @del_cmd = N'CALL [sp_MSdel_dboPC014900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014L00', @source_owner = N'dbo', @source_object = N'PC014L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014L00]', @del_cmd = N'CALL [sp_MSdel_dboPC014L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014M00', @source_owner = N'dbo', @source_object = N'PC014M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014M00]', @del_cmd = N'CALL [sp_MSdel_dboPC014M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014N00', @source_owner = N'dbo', @source_object = N'PC014N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014N00]', @del_cmd = N'CALL [sp_MSdel_dboPC014N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC014P00', @source_owner = N'dbo', @source_object = N'PC014P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC014P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC014P00]', @del_cmd = N'CALL [sp_MSdel_dboPC014P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC014P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015000', @source_owner = N'dbo', @source_object = N'PC015000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015000]', @del_cmd = N'CALL [sp_MSdel_dboPC015000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015100', @source_owner = N'dbo', @source_object = N'PC015100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015100]', @del_cmd = N'CALL [sp_MSdel_dboPC015100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015200', @source_owner = N'dbo', @source_object = N'PC015200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015200]', @del_cmd = N'CALL [sp_MSdel_dboPC015200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015300', @source_owner = N'dbo', @source_object = N'PC015300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015300]', @del_cmd = N'CALL [sp_MSdel_dboPC015300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015400', @source_owner = N'dbo', @source_object = N'PC015400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015400]', @del_cmd = N'CALL [sp_MSdel_dboPC015400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015600', @source_owner = N'dbo', @source_object = N'PC015600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015600]', @del_cmd = N'CALL [sp_MSdel_dboPC015600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015700', @source_owner = N'dbo', @source_object = N'PC015700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015700]', @del_cmd = N'CALL [sp_MSdel_dboPC015700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015800', @source_owner = N'dbo', @source_object = N'PC015800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015800]', @del_cmd = N'CALL [sp_MSdel_dboPC015800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015900', @source_owner = N'dbo', @source_object = N'PC015900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015900]', @del_cmd = N'CALL [sp_MSdel_dboPC015900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015L00', @source_owner = N'dbo', @source_object = N'PC015L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015L00]', @del_cmd = N'CALL [sp_MSdel_dboPC015L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015M00', @source_owner = N'dbo', @source_object = N'PC015M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015M00]', @del_cmd = N'CALL [sp_MSdel_dboPC015M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC015N00', @source_owner = N'dbo', @source_object = N'PC015N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC015N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC015N00]', @del_cmd = N'CALL [sp_MSdel_dboPC015N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC015N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016000', @source_owner = N'dbo', @source_object = N'PC016000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016000]', @del_cmd = N'CALL [sp_MSdel_dboPC016000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016100', @source_owner = N'dbo', @source_object = N'PC016100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016100]', @del_cmd = N'CALL [sp_MSdel_dboPC016100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016200', @source_owner = N'dbo', @source_object = N'PC016200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016200]', @del_cmd = N'CALL [sp_MSdel_dboPC016200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016300', @source_owner = N'dbo', @source_object = N'PC016300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016300]', @del_cmd = N'CALL [sp_MSdel_dboPC016300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016400', @source_owner = N'dbo', @source_object = N'PC016400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016400]', @del_cmd = N'CALL [sp_MSdel_dboPC016400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016500', @source_owner = N'dbo', @source_object = N'PC016500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016500]', @del_cmd = N'CALL [sp_MSdel_dboPC016500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016600', @source_owner = N'dbo', @source_object = N'PC016600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016600]', @del_cmd = N'CALL [sp_MSdel_dboPC016600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016700', @source_owner = N'dbo', @source_object = N'PC016700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016700]', @del_cmd = N'CALL [sp_MSdel_dboPC016700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016900', @source_owner = N'dbo', @source_object = N'PC016900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016900]', @del_cmd = N'CALL [sp_MSdel_dboPC016900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016L00', @source_owner = N'dbo', @source_object = N'PC016L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016L00]', @del_cmd = N'CALL [sp_MSdel_dboPC016L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016M00', @source_owner = N'dbo', @source_object = N'PC016M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016M00]', @del_cmd = N'CALL [sp_MSdel_dboPC016M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC016N00', @source_owner = N'dbo', @source_object = N'PC016N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC016N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC016N00]', @del_cmd = N'CALL [sp_MSdel_dboPC016N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC016N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017000', @source_owner = N'dbo', @source_object = N'PC017000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017000]', @del_cmd = N'CALL [sp_MSdel_dboPC017000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017100', @source_owner = N'dbo', @source_object = N'PC017100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017100]', @del_cmd = N'CALL [sp_MSdel_dboPC017100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017200', @source_owner = N'dbo', @source_object = N'PC017200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017200]', @del_cmd = N'CALL [sp_MSdel_dboPC017200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017300', @source_owner = N'dbo', @source_object = N'PC017300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017300]', @del_cmd = N'CALL [sp_MSdel_dboPC017300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017400', @source_owner = N'dbo', @source_object = N'PC017400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017400]', @del_cmd = N'CALL [sp_MSdel_dboPC017400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017500', @source_owner = N'dbo', @source_object = N'PC017500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017500]', @del_cmd = N'CALL [sp_MSdel_dboPC017500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017600', @source_owner = N'dbo', @source_object = N'PC017600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017600]', @del_cmd = N'CALL [sp_MSdel_dboPC017600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017700', @source_owner = N'dbo', @source_object = N'PC017700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017700]', @del_cmd = N'CALL [sp_MSdel_dboPC017700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017800', @source_owner = N'dbo', @source_object = N'PC017800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017800]', @del_cmd = N'CALL [sp_MSdel_dboPC017800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017L00', @source_owner = N'dbo', @source_object = N'PC017L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017L00]', @del_cmd = N'CALL [sp_MSdel_dboPC017L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017M00', @source_owner = N'dbo', @source_object = N'PC017M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017M00]', @del_cmd = N'CALL [sp_MSdel_dboPC017M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC017N00', @source_owner = N'dbo', @source_object = N'PC017N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC017N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC017N00]', @del_cmd = N'CALL [sp_MSdel_dboPC017N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC017N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018000', @source_owner = N'dbo', @source_object = N'PC018000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018000]', @del_cmd = N'CALL [sp_MSdel_dboPC018000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018100', @source_owner = N'dbo', @source_object = N'PC018100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018100]', @del_cmd = N'CALL [sp_MSdel_dboPC018100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018300', @source_owner = N'dbo', @source_object = N'PC018300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018300]', @del_cmd = N'CALL [sp_MSdel_dboPC018300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018400', @source_owner = N'dbo', @source_object = N'PC018400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018400]', @del_cmd = N'CALL [sp_MSdel_dboPC018400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018500', @source_owner = N'dbo', @source_object = N'PC018500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018500]', @del_cmd = N'CALL [sp_MSdel_dboPC018500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018800', @source_owner = N'dbo', @source_object = N'PC018800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018800]', @del_cmd = N'CALL [sp_MSdel_dboPC018800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018900', @source_owner = N'dbo', @source_object = N'PC018900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018900]', @del_cmd = N'CALL [sp_MSdel_dboPC018900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018L00', @source_owner = N'dbo', @source_object = N'PC018L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018L00]', @del_cmd = N'CALL [sp_MSdel_dboPC018L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018M00', @source_owner = N'dbo', @source_object = N'PC018M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018M00]', @del_cmd = N'CALL [sp_MSdel_dboPC018M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC018N00', @source_owner = N'dbo', @source_object = N'PC018N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC018N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC018N00]', @del_cmd = N'CALL [sp_MSdel_dboPC018N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC018N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019000', @source_owner = N'dbo', @source_object = N'PC019000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019000]', @del_cmd = N'CALL [sp_MSdel_dboPC019000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019100', @source_owner = N'dbo', @source_object = N'PC019100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019100]', @del_cmd = N'CALL [sp_MSdel_dboPC019100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019200', @source_owner = N'dbo', @source_object = N'PC019200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019200]', @del_cmd = N'CALL [sp_MSdel_dboPC019200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019300', @source_owner = N'dbo', @source_object = N'PC019300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019300]', @del_cmd = N'CALL [sp_MSdel_dboPC019300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019400', @source_owner = N'dbo', @source_object = N'PC019400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019400]', @del_cmd = N'CALL [sp_MSdel_dboPC019400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019500', @source_owner = N'dbo', @source_object = N'PC019500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019500]', @del_cmd = N'CALL [sp_MSdel_dboPC019500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019600', @source_owner = N'dbo', @source_object = N'PC019600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019600]', @del_cmd = N'CALL [sp_MSdel_dboPC019600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019700', @source_owner = N'dbo', @source_object = N'PC019700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019700]', @del_cmd = N'CALL [sp_MSdel_dboPC019700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019900', @source_owner = N'dbo', @source_object = N'PC019900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019900]', @del_cmd = N'CALL [sp_MSdel_dboPC019900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019L00', @source_owner = N'dbo', @source_object = N'PC019L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019L00]', @del_cmd = N'CALL [sp_MSdel_dboPC019L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC019M00', @source_owner = N'dbo', @source_object = N'PC019M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019M00]', @del_cmd = N'CALL [sp_MSdel_dboPC019M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article =N'PC019N00', @source_owner = N'dbo', @source_object = N'PC019N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC019N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC019N00]', @del_cmd = N'CALL [sp_MSdel_dboPC019N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC019N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V100', @source_owner = N'dbo', @source_object = N'PC01V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V100]', @del_cmd = N'CALL [sp_MSdel_dboPC01V100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V200', @source_owner = N'dbo', @source_object = N'PC01V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V200]', @del_cmd = N'CALL [sp_MSdel_dboPC01V200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V300', @source_owner = N'dbo', @source_object = N'PC01V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V300]', @del_cmd = N'CALL [sp_MSdel_dboPC01V300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V400', @source_owner = N'dbo', @source_object = N'PC01V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V400]', @del_cmd = N'CALL [sp_MSdel_dboPC01V400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V700', @source_owner = N'dbo', @source_object = N'PC01V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V700]', @del_cmd = N'CALL [sp_MSdel_dboPC01V700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V800', @source_owner = N'dbo', @source_object = N'PC01V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V800]', @del_cmd = N'CALL [sp_MSdel_dboPC01V800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC01', @article = N'PC01V900', @source_owner = N'dbo', @source_object = N'PC01V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC01V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC01V900]', @del_cmd = N'CALL [sp_MSdel_dboPC01V900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC01V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaPC01', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaPC01', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

