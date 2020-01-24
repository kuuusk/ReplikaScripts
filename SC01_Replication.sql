-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSC01', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSC01', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSC01', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC01', @login = N'GUNVORGROUP\skuusk-p'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC01', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC01', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC01', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC01', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC01', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V500', @source_owner = N'dbo', @source_object = N'SC01V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V500]', @del_cmd = N'CALL [sp_MSdel_dboSC01V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019P00', @source_owner = N'dbo', @source_object = N'SC019P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019P00]', @del_cmd = N'CALL [sp_MSdel_dboSC019P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015P00', @source_owner = N'dbo', @source_object = N'SC015P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015P00]', @del_cmd = N'CALL [sp_MSdel_dboSC015P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016P00', @source_owner = N'dbo', @source_object = N'SC016P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016P00]', @del_cmd = N'CALL [sp_MSdel_dboSC016P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017P00', @source_owner = N'dbo', @source_object = N'SC017P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017P00]', @del_cmd = N'CALL [sp_MSdel_dboSC017P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018P00', @source_owner = N'dbo', @source_object = N'SC018P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018P00]', @del_cmd = N'CALL [sp_MSdel_dboSC018P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC010100', @source_owner = N'dbo', @source_object = N'SC010100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC010100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC010100]', @del_cmd = N'CALL [sp_MSdel_dboSC010100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC010100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012P00', @source_owner = N'dbo', @source_object = N'SC012P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012P00]', @del_cmd = N'CALL [sp_MSdel_dboSC012P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC010200', @source_owner = N'dbo', @source_object = N'SC010200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC010200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC010200]', @del_cmd = N'CALL [sp_MSdel_dboSC010200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC010200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC010500', @source_owner = N'dbo', @source_object = N'SC010500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC010500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC010500]', @del_cmd = N'CALL [sp_MSdel_dboSC010500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC010500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC010600', @source_owner = N'dbo', @source_object = N'SC010600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC010600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC010600]', @del_cmd = N'CALL [sp_MSdel_dboSC010600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC010600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC010700', @source_owner = N'dbo', @source_object = N'SC010700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC010700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC010700]', @del_cmd = N'CALL [sp_MSdel_dboSC010700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC010700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC010800', @source_owner = N'dbo', @source_object = N'SC010800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC010800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC010800]', @del_cmd = N'CALL [sp_MSdel_dboSC010800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC010800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC010900', @source_owner = N'dbo', @source_object = N'SC010900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC010900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC010900]', @del_cmd = N'CALL [sp_MSdel_dboSC010900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC010900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011000', @source_owner = N'dbo', @source_object = N'SC011000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011000]', @del_cmd = N'CALL [sp_MSdel_dboSC011000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011100', @source_owner = N'dbo', @source_object = N'SC011100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011100]', @del_cmd = N'CALL [sp_MSdel_dboSC011100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011200', @source_owner = N'dbo', @source_object = N'SC011200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011200]', @del_cmd = N'CALL [sp_MSdel_dboSC011200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011300', @source_owner = N'dbo', @source_object = N'SC011300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011300]', @del_cmd = N'CALL [sp_MSdel_dboSC011300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011400', @source_owner = N'dbo', @source_object = N'SC011400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011400]', @del_cmd = N'CALL [sp_MSdel_dboSC011400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011600', @source_owner = N'dbo', @source_object = N'SC011600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011600]', @del_cmd = N'CALL [sp_MSdel_dboSC011600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011900', @source_owner = N'dbo', @source_object = N'SC011900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011900]', @del_cmd = N'CALL [sp_MSdel_dboSC011900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011L00', @source_owner = N'dbo', @source_object = N'SC011L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011L00]', @del_cmd = N'CALL [sp_MSdel_dboSC011L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011M00', @source_owner = N'dbo', @source_object = N'SC011M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011M00]', @del_cmd = N'CALL [sp_MSdel_dboSC011M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011N00', @source_owner = N'dbo', @source_object = N'SC011N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011N00]', @del_cmd = N'CALL [sp_MSdel_dboSC011N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC011P00', @source_owner = N'dbo', @source_object = N'SC011P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC011P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC011P00]', @del_cmd = N'CALL [sp_MSdel_dboSC011P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC011P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012000', @source_owner = N'dbo', @source_object = N'SC012000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012000]', @del_cmd = N'CALL [sp_MSdel_dboSC012000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012100', @source_owner = N'dbo', @source_object = N'SC012100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012100]', @del_cmd = N'CALL [sp_MSdel_dboSC012100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012200', @source_owner = N'dbo', @source_object = N'SC012200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012200]', @del_cmd = N'CALL [sp_MSdel_dboSC012200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012300', @source_owner = N'dbo', @source_object = N'SC012300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012300]', @del_cmd = N'CALL [sp_MSdel_dboSC012300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012400', @source_owner = N'dbo', @source_object = N'SC012400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012400]', @del_cmd = N'CALL [sp_MSdel_dboSC012400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012500', @source_owner = N'dbo', @source_object = N'SC012500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012500]', @del_cmd = N'CALL [sp_MSdel_dboSC012500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012600', @source_owner = N'dbo', @source_object = N'SC012600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012600]', @del_cmd = N'CALL [sp_MSdel_dboSC012600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012700', @source_owner = N'dbo', @source_object = N'SC012700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012700]', @del_cmd = N'CALL [sp_MSdel_dboSC012700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012800', @source_owner = N'dbo', @source_object = N'SC012800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012800]', @del_cmd = N'CALL [sp_MSdel_dboSC012800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012900', @source_owner = N'dbo', @source_object = N'SC012900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012900]', @del_cmd = N'CALL [sp_MSdel_dboSC012900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012L00', @source_owner = N'dbo', @source_object = N'SC012L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012L00]', @del_cmd = N'CALL [sp_MSdel_dboSC012L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012M00', @source_owner = N'dbo', @source_object = N'SC012M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012M00]', @del_cmd = N'CALL [sp_MSdel_dboSC012M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC012N00', @source_owner = N'dbo', @source_object = N'SC012N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC012N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC012N00]', @del_cmd = N'CALL [sp_MSdel_dboSC012N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC012N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013000', @source_owner = N'dbo', @source_object = N'SC013000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013000]', @del_cmd = N'CALL [sp_MSdel_dboSC013000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013100', @source_owner = N'dbo', @source_object = N'SC013100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013100]', @del_cmd = N'CALL [sp_MSdel_dboSC013100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013500', @source_owner = N'dbo', @source_object = N'SC013500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013500]', @del_cmd = N'CALL [sp_MSdel_dboSC013500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013600', @source_owner = N'dbo', @source_object = N'SC013600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013600]', @del_cmd = N'CALL [sp_MSdel_dboSC013600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013900', @source_owner = N'dbo', @source_object = N'SC013900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013900]', @del_cmd = N'CALL [sp_MSdel_dboSC013900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013L00', @source_owner = N'dbo', @source_object = N'SC013L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013L00]', @del_cmd = N'CALL [sp_MSdel_dboSC013L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013M00', @source_owner = N'dbo', @source_object = N'SC013M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013M00]', @del_cmd = N'CALL [sp_MSdel_dboSC013M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013N00', @source_owner = N'dbo', @source_object = N'SC013N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013N00]', @del_cmd = N'CALL [sp_MSdel_dboSC013N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC013P00', @source_owner = N'dbo', @source_object = N'SC013P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC013P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC013P00]', @del_cmd = N'CALL [sp_MSdel_dboSC013P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC013P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014000', @source_owner = N'dbo', @source_object = N'SC014000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014000]', @del_cmd = N'CALL [sp_MSdel_dboSC014000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014100', @source_owner = N'dbo', @source_object = N'SC014100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014100]', @del_cmd = N'CALL [sp_MSdel_dboSC014100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014200', @source_owner = N'dbo', @source_object = N'SC014200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014200]', @del_cmd = N'CALL [sp_MSdel_dboSC014200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014300', @source_owner = N'dbo', @source_object = N'SC014300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014300]', @del_cmd = N'CALL [sp_MSdel_dboSC014300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014400', @source_owner = N'dbo', @source_object = N'SC014400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014400]', @del_cmd = N'CALL [sp_MSdel_dboSC014400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014500', @source_owner = N'dbo', @source_object = N'SC014500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014500]', @del_cmd = N'CALL [sp_MSdel_dboSC014500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014600', @source_owner = N'dbo', @source_object = N'SC014600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014600]', @del_cmd = N'CALL [sp_MSdel_dboSC014600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014700', @source_owner = N'dbo', @source_object = N'SC014700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014700]', @del_cmd = N'CALL [sp_MSdel_dboSC014700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014800', @source_owner = N'dbo', @source_object = N'SC014800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014800]', @del_cmd = N'CALL [sp_MSdel_dboSC014800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014900', @source_owner = N'dbo', @source_object = N'SC014900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014900]', @del_cmd = N'CALL [sp_MSdel_dboSC014900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014L00', @source_owner = N'dbo', @source_object = N'SC014L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014L00]', @del_cmd = N'CALL [sp_MSdel_dboSC014L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014M00', @source_owner = N'dbo', @source_object = N'SC014M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014M00]', @del_cmd = N'CALL [sp_MSdel_dboSC014M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014N00', @source_owner = N'dbo', @source_object = N'SC014N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014N00]', @del_cmd = N'CALL [sp_MSdel_dboSC014N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC014P00', @source_owner = N'dbo', @source_object = N'SC014P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC014P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC014P00]', @del_cmd = N'CALL [sp_MSdel_dboSC014P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC014P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015000', @source_owner = N'dbo', @source_object = N'SC015000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015000]', @del_cmd = N'CALL [sp_MSdel_dboSC015000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015100', @source_owner = N'dbo', @source_object = N'SC015100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015100]', @del_cmd = N'CALL [sp_MSdel_dboSC015100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015200', @source_owner = N'dbo', @source_object = N'SC015200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015200]', @del_cmd = N'CALL [sp_MSdel_dboSC015200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015300', @source_owner = N'dbo', @source_object = N'SC015300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015300]', @del_cmd = N'CALL [sp_MSdel_dboSC015300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015400', @source_owner = N'dbo', @source_object = N'SC015400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015400]', @del_cmd = N'CALL [sp_MSdel_dboSC015400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015600', @source_owner = N'dbo', @source_object = N'SC015600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015600]', @del_cmd = N'CALL [sp_MSdel_dboSC015600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015700', @source_owner = N'dbo', @source_object = N'SC015700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015700]', @del_cmd = N'CALL [sp_MSdel_dboSC015700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015800', @source_owner = N'dbo', @source_object = N'SC015800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015800]', @del_cmd = N'CALL [sp_MSdel_dboSC015800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015900', @source_owner = N'dbo', @source_object = N'SC015900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015900]', @del_cmd = N'CALL [sp_MSdel_dboSC015900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015L00', @source_owner = N'dbo', @source_object = N'SC015L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015L00]', @del_cmd = N'CALL [sp_MSdel_dboSC015L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015M00', @source_owner = N'dbo', @source_object = N'SC015M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015M00]', @del_cmd = N'CALL [sp_MSdel_dboSC015M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC015N00', @source_owner = N'dbo', @source_object = N'SC015N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC015N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC015N00]', @del_cmd = N'CALL [sp_MSdel_dboSC015N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC015N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016000', @source_owner = N'dbo', @source_object = N'SC016000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016000]', @del_cmd = N'CALL [sp_MSdel_dboSC016000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016100', @source_owner = N'dbo', @source_object = N'SC016100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016100]', @del_cmd = N'CALL [sp_MSdel_dboSC016100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016200', @source_owner = N'dbo', @source_object = N'SC016200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016200]', @del_cmd = N'CALL [sp_MSdel_dboSC016200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016300', @source_owner = N'dbo', @source_object = N'SC016300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016300]', @del_cmd = N'CALL [sp_MSdel_dboSC016300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016400', @source_owner = N'dbo', @source_object = N'SC016400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016400]', @del_cmd = N'CALL [sp_MSdel_dboSC016400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016500', @source_owner = N'dbo', @source_object = N'SC016500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016500]', @del_cmd = N'CALL [sp_MSdel_dboSC016500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016600', @source_owner = N'dbo', @source_object = N'SC016600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016600]', @del_cmd = N'CALL [sp_MSdel_dboSC016600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016700', @source_owner = N'dbo', @source_object = N'SC016700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016700]', @del_cmd = N'CALL [sp_MSdel_dboSC016700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016900', @source_owner = N'dbo', @source_object = N'SC016900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016900]', @del_cmd = N'CALL [sp_MSdel_dboSC016900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016L00', @source_owner = N'dbo', @source_object = N'SC016L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016L00]', @del_cmd = N'CALL [sp_MSdel_dboSC016L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016M00', @source_owner = N'dbo', @source_object = N'SC016M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016M00]', @del_cmd = N'CALL [sp_MSdel_dboSC016M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC016N00', @source_owner = N'dbo', @source_object = N'SC016N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC016N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC016N00]', @del_cmd = N'CALL [sp_MSdel_dboSC016N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC016N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017000', @source_owner = N'dbo', @source_object = N'SC017000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017000]', @del_cmd = N'CALL [sp_MSdel_dboSC017000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017100', @source_owner = N'dbo', @source_object = N'SC017100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017100]', @del_cmd = N'CALL [sp_MSdel_dboSC017100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017200', @source_owner = N'dbo', @source_object = N'SC017200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017200]', @del_cmd = N'CALL [sp_MSdel_dboSC017200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017300', @source_owner = N'dbo', @source_object = N'SC017300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017300]', @del_cmd = N'CALL [sp_MSdel_dboSC017300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017400', @source_owner = N'dbo', @source_object = N'SC017400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017400]', @del_cmd = N'CALL [sp_MSdel_dboSC017400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017500', @source_owner = N'dbo', @source_object = N'SC017500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017500]', @del_cmd = N'CALL [sp_MSdel_dboSC017500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017600', @source_owner = N'dbo', @source_object = N'SC017600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017600]', @del_cmd = N'CALL [sp_MSdel_dboSC017600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017700', @source_owner = N'dbo', @source_object = N'SC017700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017700]', @del_cmd = N'CALL [sp_MSdel_dboSC017700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017800', @source_owner = N'dbo', @source_object = N'SC017800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017800]', @del_cmd = N'CALL [sp_MSdel_dboSC017800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017L00', @source_owner = N'dbo', @source_object = N'SC017L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017L00]', @del_cmd = N'CALL [sp_MSdel_dboSC017L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017M00', @source_owner = N'dbo', @source_object = N'SC017M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017M00]', @del_cmd = N'CALL [sp_MSdel_dboSC017M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC017N00', @source_owner = N'dbo', @source_object = N'SC017N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC017N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC017N00]', @del_cmd = N'CALL [sp_MSdel_dboSC017N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC017N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018000', @source_owner = N'dbo', @source_object = N'SC018000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018000]', @del_cmd = N'CALL [sp_MSdel_dboSC018000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018100', @source_owner = N'dbo', @source_object = N'SC018100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018100]', @del_cmd = N'CALL [sp_MSdel_dboSC018100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018300', @source_owner = N'dbo', @source_object = N'SC018300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018300]', @del_cmd = N'CALL [sp_MSdel_dboSC018300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018400', @source_owner = N'dbo', @source_object = N'SC018400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018400]', @del_cmd = N'CALL [sp_MSdel_dboSC018400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018500', @source_owner = N'dbo', @source_object = N'SC018500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018500]', @del_cmd = N'CALL [sp_MSdel_dboSC018500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018800', @source_owner = N'dbo', @source_object = N'SC018800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018800]', @del_cmd = N'CALL [sp_MSdel_dboSC018800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018900', @source_owner = N'dbo', @source_object = N'SC018900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018900]', @del_cmd = N'CALL [sp_MSdel_dboSC018900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018L00', @source_owner = N'dbo', @source_object = N'SC018L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018L00]', @del_cmd = N'CALL [sp_MSdel_dboSC018L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018M00', @source_owner = N'dbo', @source_object = N'SC018M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018M00]', @del_cmd = N'CALL [sp_MSdel_dboSC018M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC018N00', @source_owner = N'dbo', @source_object = N'SC018N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC018N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC018N00]', @del_cmd = N'CALL [sp_MSdel_dboSC018N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC018N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019000', @source_owner = N'dbo', @source_object = N'SC019000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019000]', @del_cmd = N'CALL [sp_MSdel_dboSC019000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019100', @source_owner = N'dbo', @source_object = N'SC019100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019100]', @del_cmd = N'CALL [sp_MSdel_dboSC019100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019200', @source_owner = N'dbo', @source_object = N'SC019200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019200]', @del_cmd = N'CALL [sp_MSdel_dboSC019200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019300', @source_owner = N'dbo', @source_object = N'SC019300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019300]', @del_cmd = N'CALL [sp_MSdel_dboSC019300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019400', @source_owner = N'dbo', @source_object = N'SC019400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019400]', @del_cmd = N'CALL [sp_MSdel_dboSC019400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019500', @source_owner = N'dbo', @source_object = N'SC019500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019500]', @del_cmd = N'CALL [sp_MSdel_dboSC019500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019600', @source_owner = N'dbo', @source_object = N'SC019600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019600]', @del_cmd = N'CALL [sp_MSdel_dboSC019600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019700', @source_owner = N'dbo', @source_object = N'SC019700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019700]', @del_cmd = N'CALL [sp_MSdel_dboSC019700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019900', @source_owner = N'dbo', @source_object = N'SC019900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019900]', @del_cmd = N'CALL [sp_MSdel_dboSC019900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019L00', @source_owner = N'dbo', @source_object = N'SC019L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019L00]', @del_cmd = N'CALL [sp_MSdel_dboSC019L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC019M00', @source_owner = N'dbo', @source_object = N'SC019M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019M00]', @del_cmd = N'CALL [sp_MSdel_dboSC019M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article =N'SC019N00', @source_owner = N'dbo', @source_object = N'SC019N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC019N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC019N00]', @del_cmd = N'CALL [sp_MSdel_dboSC019N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC019N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V100', @source_owner = N'dbo', @source_object = N'SC01V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V100]', @del_cmd = N'CALL [sp_MSdel_dboSC01V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V200', @source_owner = N'dbo', @source_object = N'SC01V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V200]', @del_cmd = N'CALL [sp_MSdel_dboSC01V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V300', @source_owner = N'dbo', @source_object = N'SC01V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V300]', @del_cmd = N'CALL [sp_MSdel_dboSC01V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V400', @source_owner = N'dbo', @source_object = N'SC01V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V400]', @del_cmd = N'CALL [sp_MSdel_dboSC01V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V700', @source_owner = N'dbo', @source_object = N'SC01V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V700]', @del_cmd = N'CALL [sp_MSdel_dboSC01V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V800', @source_owner = N'dbo', @source_object = N'SC01V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V800]', @del_cmd = N'CALL [sp_MSdel_dboSC01V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC01', @article = N'SC01V900', @source_owner = N'dbo', @source_object = N'SC01V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC01V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC01V900]', @del_cmd = N'CALL [sp_MSdel_dboSC01V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC01V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSC01', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'automatic', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSC01', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'repl2', @subscriber_password = null, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

