-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSL01', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSL01', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'GUNVORGROUP\skuusk-p'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'GUNVORGROUP\scalaappTAL-s'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL01', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V500', @source_owner = N'dbo', @source_object = N'SL01V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V500]', @del_cmd = N'CALL [sp_MSdel_dboSL01V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019P00', @source_owner = N'dbo', @source_object = N'SL019P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019P00]', @del_cmd = N'CALL [sp_MSdel_dboSL019P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015P00', @source_owner = N'dbo', @source_object = N'SL015P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015P00]', @del_cmd = N'CALL [sp_MSdel_dboSL015P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016P00', @source_owner = N'dbo', @source_object = N'SL016P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016P00]', @del_cmd = N'CALL [sp_MSdel_dboSL016P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017P00', @source_owner = N'dbo', @source_object = N'SL017P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017P00]', @del_cmd = N'CALL [sp_MSdel_dboSL017P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018P00', @source_owner = N'dbo', @source_object = N'SL018P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018P00]', @del_cmd = N'CALL [sp_MSdel_dboSL018P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL010100', @source_owner = N'dbo', @source_object = N'SL010100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL010100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL010100]', @del_cmd = N'CALL [sp_MSdel_dboSL010100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL010100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012P00', @source_owner = N'dbo', @source_object = N'SL012P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012P00]', @del_cmd = N'CALL [sp_MSdel_dboSL012P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL010200', @source_owner = N'dbo', @source_object = N'SL010200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL010200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL010200]', @del_cmd = N'CALL [sp_MSdel_dboSL010200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL010200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL010500', @source_owner = N'dbo', @source_object = N'SL010500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL010500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL010500]', @del_cmd = N'CALL [sp_MSdel_dboSL010500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL010500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL010600', @source_owner = N'dbo', @source_object = N'SL010600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL010600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL010600]', @del_cmd = N'CALL [sp_MSdel_dboSL010600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL010600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL010700', @source_owner = N'dbo', @source_object = N'SL010700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL010700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL010700]', @del_cmd = N'CALL [sp_MSdel_dboSL010700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL010700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL010800', @source_owner = N'dbo', @source_object = N'SL010800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL010800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL010800]', @del_cmd = N'CALL [sp_MSdel_dboSL010800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL010800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL010900', @source_owner = N'dbo', @source_object = N'SL010900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL010900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL010900]', @del_cmd = N'CALL [sp_MSdel_dboSL010900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL010900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011000', @source_owner = N'dbo', @source_object = N'SL011000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011000]', @del_cmd = N'CALL [sp_MSdel_dboSL011000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011100', @source_owner = N'dbo', @source_object = N'SL011100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011100]', @del_cmd = N'CALL [sp_MSdel_dboSL011100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011200', @source_owner = N'dbo', @source_object = N'SL011200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011200]', @del_cmd = N'CALL [sp_MSdel_dboSL011200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011300', @source_owner = N'dbo', @source_object = N'SL011300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011300]', @del_cmd = N'CALL [sp_MSdel_dboSL011300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011400', @source_owner = N'dbo', @source_object = N'SL011400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011400]', @del_cmd = N'CALL [sp_MSdel_dboSL011400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011600', @source_owner = N'dbo', @source_object = N'SL011600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011600]', @del_cmd = N'CALL [sp_MSdel_dboSL011600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011900', @source_owner = N'dbo', @source_object = N'SL011900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011900]', @del_cmd = N'CALL [sp_MSdel_dboSL011900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011L00', @source_owner = N'dbo', @source_object = N'SL011L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011L00]', @del_cmd = N'CALL [sp_MSdel_dboSL011L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011M00', @source_owner = N'dbo', @source_object = N'SL011M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011M00]', @del_cmd = N'CALL [sp_MSdel_dboSL011M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011N00', @source_owner = N'dbo', @source_object = N'SL011N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011N00]', @del_cmd = N'CALL [sp_MSdel_dboSL011N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL011P00', @source_owner = N'dbo', @source_object = N'SL011P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL011P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL011P00]', @del_cmd = N'CALL [sp_MSdel_dboSL011P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL011P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012000', @source_owner = N'dbo', @source_object = N'SL012000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012000]', @del_cmd = N'CALL [sp_MSdel_dboSL012000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012100', @source_owner = N'dbo', @source_object = N'SL012100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012100]', @del_cmd = N'CALL [sp_MSdel_dboSL012100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012200', @source_owner = N'dbo', @source_object = N'SL012200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012200]', @del_cmd = N'CALL [sp_MSdel_dboSL012200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012300', @source_owner = N'dbo', @source_object = N'SL012300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012300]', @del_cmd = N'CALL [sp_MSdel_dboSL012300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012400', @source_owner = N'dbo', @source_object = N'SL012400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012400]', @del_cmd = N'CALL [sp_MSdel_dboSL012400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012500', @source_owner = N'dbo', @source_object = N'SL012500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012500]', @del_cmd = N'CALL [sp_MSdel_dboSL012500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012600', @source_owner = N'dbo', @source_object = N'SL012600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012600]', @del_cmd = N'CALL [sp_MSdel_dboSL012600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012700', @source_owner = N'dbo', @source_object = N'SL012700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012700]', @del_cmd = N'CALL [sp_MSdel_dboSL012700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012800', @source_owner = N'dbo', @source_object = N'SL012800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012800]', @del_cmd = N'CALL [sp_MSdel_dboSL012800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012900', @source_owner = N'dbo', @source_object = N'SL012900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012900]', @del_cmd = N'CALL [sp_MSdel_dboSL012900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012L00', @source_owner = N'dbo', @source_object = N'SL012L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012L00]', @del_cmd = N'CALL [sp_MSdel_dboSL012L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012M00', @source_owner = N'dbo', @source_object = N'SL012M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012M00]', @del_cmd = N'CALL [sp_MSdel_dboSL012M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL012N00', @source_owner = N'dbo', @source_object = N'SL012N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL012N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL012N00]', @del_cmd = N'CALL [sp_MSdel_dboSL012N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL012N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013000', @source_owner = N'dbo', @source_object = N'SL013000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013000]', @del_cmd = N'CALL [sp_MSdel_dboSL013000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013100', @source_owner = N'dbo', @source_object = N'SL013100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013100]', @del_cmd = N'CALL [sp_MSdel_dboSL013100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013500', @source_owner = N'dbo', @source_object = N'SL013500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013500]', @del_cmd = N'CALL [sp_MSdel_dboSL013500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013600', @source_owner = N'dbo', @source_object = N'SL013600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013600]', @del_cmd = N'CALL [sp_MSdel_dboSL013600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013900', @source_owner = N'dbo', @source_object = N'SL013900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013900]', @del_cmd = N'CALL [sp_MSdel_dboSL013900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013L00', @source_owner = N'dbo', @source_object = N'SL013L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013L00]', @del_cmd = N'CALL [sp_MSdel_dboSL013L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013M00', @source_owner = N'dbo', @source_object = N'SL013M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013M00]', @del_cmd = N'CALL [sp_MSdel_dboSL013M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013N00', @source_owner = N'dbo', @source_object = N'SL013N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013N00]', @del_cmd = N'CALL [sp_MSdel_dboSL013N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL013P00', @source_owner = N'dbo', @source_object = N'SL013P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL013P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL013P00]', @del_cmd = N'CALL [sp_MSdel_dboSL013P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL013P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014000', @source_owner = N'dbo', @source_object = N'SL014000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014000]', @del_cmd = N'CALL [sp_MSdel_dboSL014000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014100', @source_owner = N'dbo', @source_object = N'SL014100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014100]', @del_cmd = N'CALL [sp_MSdel_dboSL014100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014200', @source_owner = N'dbo', @source_object = N'SL014200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014200]', @del_cmd = N'CALL [sp_MSdel_dboSL014200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014300', @source_owner = N'dbo', @source_object = N'SL014300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014300]', @del_cmd = N'CALL [sp_MSdel_dboSL014300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014400', @source_owner = N'dbo', @source_object = N'SL014400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014400]', @del_cmd = N'CALL [sp_MSdel_dboSL014400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014500', @source_owner = N'dbo', @source_object = N'SL014500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014500]', @del_cmd = N'CALL [sp_MSdel_dboSL014500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014600', @source_owner = N'dbo', @source_object = N'SL014600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014600]', @del_cmd = N'CALL [sp_MSdel_dboSL014600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014700', @source_owner = N'dbo', @source_object = N'SL014700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014700]', @del_cmd = N'CALL [sp_MSdel_dboSL014700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014800', @source_owner = N'dbo', @source_object = N'SL014800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014800]', @del_cmd = N'CALL [sp_MSdel_dboSL014800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014900', @source_owner = N'dbo', @source_object = N'SL014900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014900]', @del_cmd = N'CALL [sp_MSdel_dboSL014900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014L00', @source_owner = N'dbo', @source_object = N'SL014L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014L00]', @del_cmd = N'CALL [sp_MSdel_dboSL014L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014M00', @source_owner = N'dbo', @source_object = N'SL014M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014M00]', @del_cmd = N'CALL [sp_MSdel_dboSL014M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014N00', @source_owner = N'dbo', @source_object = N'SL014N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014N00]', @del_cmd = N'CALL [sp_MSdel_dboSL014N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL014P00', @source_owner = N'dbo', @source_object = N'SL014P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL014P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL014P00]', @del_cmd = N'CALL [sp_MSdel_dboSL014P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL014P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015000', @source_owner = N'dbo', @source_object = N'SL015000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015000]', @del_cmd = N'CALL [sp_MSdel_dboSL015000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015100', @source_owner = N'dbo', @source_object = N'SL015100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015100]', @del_cmd = N'CALL [sp_MSdel_dboSL015100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015200', @source_owner = N'dbo', @source_object = N'SL015200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015200]', @del_cmd = N'CALL [sp_MSdel_dboSL015200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015300', @source_owner = N'dbo', @source_object = N'SL015300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015300]', @del_cmd = N'CALL [sp_MSdel_dboSL015300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015400', @source_owner = N'dbo', @source_object = N'SL015400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015400]', @del_cmd = N'CALL [sp_MSdel_dboSL015400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015600', @source_owner = N'dbo', @source_object = N'SL015600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015600]', @del_cmd = N'CALL [sp_MSdel_dboSL015600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015700', @source_owner = N'dbo', @source_object = N'SL015700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015700]', @del_cmd = N'CALL [sp_MSdel_dboSL015700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015800', @source_owner = N'dbo', @source_object = N'SL015800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015800]', @del_cmd = N'CALL [sp_MSdel_dboSL015800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015900', @source_owner = N'dbo', @source_object = N'SL015900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015900]', @del_cmd = N'CALL [sp_MSdel_dboSL015900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015L00', @source_owner = N'dbo', @source_object = N'SL015L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015L00]', @del_cmd = N'CALL [sp_MSdel_dboSL015L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015M00', @source_owner = N'dbo', @source_object = N'SL015M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015M00]', @del_cmd = N'CALL [sp_MSdel_dboSL015M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL015N00', @source_owner = N'dbo', @source_object = N'SL015N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL015N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL015N00]', @del_cmd = N'CALL [sp_MSdel_dboSL015N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL015N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016000', @source_owner = N'dbo', @source_object = N'SL016000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016000]', @del_cmd = N'CALL [sp_MSdel_dboSL016000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016100', @source_owner = N'dbo', @source_object = N'SL016100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016100]', @del_cmd = N'CALL [sp_MSdel_dboSL016100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016200', @source_owner = N'dbo', @source_object = N'SL016200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016200]', @del_cmd = N'CALL [sp_MSdel_dboSL016200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016300', @source_owner = N'dbo', @source_object = N'SL016300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016300]', @del_cmd = N'CALL [sp_MSdel_dboSL016300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016400', @source_owner = N'dbo', @source_object = N'SL016400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016400]', @del_cmd = N'CALL [sp_MSdel_dboSL016400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016500', @source_owner = N'dbo', @source_object = N'SL016500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016500]', @del_cmd = N'CALL [sp_MSdel_dboSL016500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016600', @source_owner = N'dbo', @source_object = N'SL016600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016600]', @del_cmd = N'CALL [sp_MSdel_dboSL016600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016700', @source_owner = N'dbo', @source_object = N'SL016700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016700]', @del_cmd = N'CALL [sp_MSdel_dboSL016700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016900', @source_owner = N'dbo', @source_object = N'SL016900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016900]', @del_cmd = N'CALL [sp_MSdel_dboSL016900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016L00', @source_owner = N'dbo', @source_object = N'SL016L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016L00]', @del_cmd = N'CALL [sp_MSdel_dboSL016L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016M00', @source_owner = N'dbo', @source_object = N'SL016M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016M00]', @del_cmd = N'CALL [sp_MSdel_dboSL016M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL016N00', @source_owner = N'dbo', @source_object = N'SL016N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL016N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL016N00]', @del_cmd = N'CALL [sp_MSdel_dboSL016N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL016N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017000', @source_owner = N'dbo', @source_object = N'SL017000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017000]', @del_cmd = N'CALL [sp_MSdel_dboSL017000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017100', @source_owner = N'dbo', @source_object = N'SL017100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017100]', @del_cmd = N'CALL [sp_MSdel_dboSL017100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017200', @source_owner = N'dbo', @source_object = N'SL017200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017200]', @del_cmd = N'CALL [sp_MSdel_dboSL017200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017300', @source_owner = N'dbo', @source_object = N'SL017300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017300]', @del_cmd = N'CALL [sp_MSdel_dboSL017300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017400', @source_owner = N'dbo', @source_object = N'SL017400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017400]', @del_cmd = N'CALL [sp_MSdel_dboSL017400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017500', @source_owner = N'dbo', @source_object = N'SL017500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017500]', @del_cmd = N'CALL [sp_MSdel_dboSL017500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017600', @source_owner = N'dbo', @source_object = N'SL017600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017600]', @del_cmd = N'CALL [sp_MSdel_dboSL017600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017700', @source_owner = N'dbo', @source_object = N'SL017700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017700]', @del_cmd = N'CALL [sp_MSdel_dboSL017700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017800', @source_owner = N'dbo', @source_object = N'SL017800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017800]', @del_cmd = N'CALL [sp_MSdel_dboSL017800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017L00', @source_owner = N'dbo', @source_object = N'SL017L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017L00]', @del_cmd = N'CALL [sp_MSdel_dboSL017L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017M00', @source_owner = N'dbo', @source_object = N'SL017M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017M00]', @del_cmd = N'CALL [sp_MSdel_dboSL017M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL017N00', @source_owner = N'dbo', @source_object = N'SL017N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL017N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL017N00]', @del_cmd = N'CALL [sp_MSdel_dboSL017N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL017N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018000', @source_owner = N'dbo', @source_object = N'SL018000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018000]', @del_cmd = N'CALL [sp_MSdel_dboSL018000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018100', @source_owner = N'dbo', @source_object = N'SL018100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018100]', @del_cmd = N'CALL [sp_MSdel_dboSL018100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018300', @source_owner = N'dbo', @source_object = N'SL018300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018300]', @del_cmd = N'CALL [sp_MSdel_dboSL018300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018400', @source_owner = N'dbo', @source_object = N'SL018400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018400]', @del_cmd = N'CALL [sp_MSdel_dboSL018400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018500', @source_owner = N'dbo', @source_object = N'SL018500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018500]', @del_cmd = N'CALL [sp_MSdel_dboSL018500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018800', @source_owner = N'dbo', @source_object = N'SL018800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018800]', @del_cmd = N'CALL [sp_MSdel_dboSL018800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018900', @source_owner = N'dbo', @source_object = N'SL018900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018900]', @del_cmd = N'CALL [sp_MSdel_dboSL018900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018L00', @source_owner = N'dbo', @source_object = N'SL018L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018L00]', @del_cmd = N'CALL [sp_MSdel_dboSL018L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018M00', @source_owner = N'dbo', @source_object = N'SL018M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018M00]', @del_cmd = N'CALL [sp_MSdel_dboSL018M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL018N00', @source_owner = N'dbo', @source_object = N'SL018N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL018N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL018N00]', @del_cmd = N'CALL [sp_MSdel_dboSL018N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL018N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019000', @source_owner = N'dbo', @source_object = N'SL019000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019000]', @del_cmd = N'CALL [sp_MSdel_dboSL019000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019100', @source_owner = N'dbo', @source_object = N'SL019100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019100]', @del_cmd = N'CALL [sp_MSdel_dboSL019100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019200', @source_owner = N'dbo', @source_object = N'SL019200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019200]', @del_cmd = N'CALL [sp_MSdel_dboSL019200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019300', @source_owner = N'dbo', @source_object = N'SL019300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019300]', @del_cmd = N'CALL [sp_MSdel_dboSL019300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019400', @source_owner = N'dbo', @source_object = N'SL019400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019400]', @del_cmd = N'CALL [sp_MSdel_dboSL019400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019500', @source_owner = N'dbo', @source_object = N'SL019500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019500]', @del_cmd = N'CALL [sp_MSdel_dboSL019500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019600', @source_owner = N'dbo', @source_object = N'SL019600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019600]', @del_cmd = N'CALL [sp_MSdel_dboSL019600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019700', @source_owner = N'dbo', @source_object = N'SL019700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019700]', @del_cmd = N'CALL [sp_MSdel_dboSL019700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019900', @source_owner = N'dbo', @source_object = N'SL019900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019900]', @del_cmd = N'CALL [sp_MSdel_dboSL019900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019L00', @source_owner = N'dbo', @source_object = N'SL019L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019L00]', @del_cmd = N'CALL [sp_MSdel_dboSL019L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL019M00', @source_owner = N'dbo', @source_object = N'SL019M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019M00]', @del_cmd = N'CALL [sp_MSdel_dboSL019M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article =N'SL019N00', @source_owner = N'dbo', @source_object = N'SL019N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL019N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL019N00]', @del_cmd = N'CALL [sp_MSdel_dboSL019N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL019N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V100', @source_owner = N'dbo', @source_object = N'SL01V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V100]', @del_cmd = N'CALL [sp_MSdel_dboSL01V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V200', @source_owner = N'dbo', @source_object = N'SL01V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V200]', @del_cmd = N'CALL [sp_MSdel_dboSL01V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V300', @source_owner = N'dbo', @source_object = N'SL01V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V300]', @del_cmd = N'CALL [sp_MSdel_dboSL01V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V400', @source_owner = N'dbo', @source_object = N'SL01V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V400]', @del_cmd = N'CALL [sp_MSdel_dboSL01V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V700', @source_owner = N'dbo', @source_object = N'SL01V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V700]', @del_cmd = N'CALL [sp_MSdel_dboSL01V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V800', @source_owner = N'dbo', @source_object = N'SL01V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V800]', @del_cmd = N'CALL [sp_MSdel_dboSL01V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL01', @article = N'SL01V900', @source_owner = N'dbo', @source_object = N'SL01V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL01V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL01V900]', @del_cmd = N'CALL [sp_MSdel_dboSL01V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL01V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSL01', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'automatic', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSL01', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'repl2', @subscriber_password = null, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

