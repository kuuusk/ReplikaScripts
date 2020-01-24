---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaPL01', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaPL01', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'GUNVORGROUP\skuusk-p'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'GUNVORGROUP\scalaappTAL-s'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL01', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V500', @source_owner = N'dbo', @source_object = N'PL01V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V500]', @del_cmd = N'CALL [sp_MSdel_dboPL01V500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019P00', @source_owner = N'dbo', @source_object = N'PL019P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019P00]', @del_cmd = N'CALL [sp_MSdel_dboPL019P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015P00', @source_owner = N'dbo', @source_object = N'PL015P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015P00]', @del_cmd = N'CALL [sp_MSdel_dboPL015P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016P00', @source_owner = N'dbo', @source_object = N'PL016P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016P00]', @del_cmd = N'CALL [sp_MSdel_dboPL016P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017P00', @source_owner = N'dbo', @source_object = N'PL017P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017P00]', @del_cmd = N'CALL [sp_MSdel_dboPL017P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018P00', @source_owner = N'dbo', @source_object = N'PL018P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018P00]', @del_cmd = N'CALL [sp_MSdel_dboPL018P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL010100', @source_owner = N'dbo', @source_object = N'PL010100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL010100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL010100]', @del_cmd = N'CALL [sp_MSdel_dboPL010100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL010100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012P00', @source_owner = N'dbo', @source_object = N'PL012P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012P00]', @del_cmd = N'CALL [sp_MSdel_dboPL012P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL010200', @source_owner = N'dbo', @source_object = N'PL010200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL010200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL010200]', @del_cmd = N'CALL [sp_MSdel_dboPL010200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL010200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL010500', @source_owner = N'dbo', @source_object = N'PL010500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL010500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL010500]', @del_cmd = N'CALL [sp_MSdel_dboPL010500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL010500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL010600', @source_owner = N'dbo', @source_object = N'PL010600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL010600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL010600]', @del_cmd = N'CALL [sp_MSdel_dboPL010600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL010600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL010700', @source_owner = N'dbo', @source_object = N'PL010700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL010700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL010700]', @del_cmd = N'CALL [sp_MSdel_dboPL010700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL010700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL010800', @source_owner = N'dbo', @source_object = N'PL010800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL010800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL010800]', @del_cmd = N'CALL [sp_MSdel_dboPL010800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL010800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL010900', @source_owner = N'dbo', @source_object = N'PL010900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL010900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL010900]', @del_cmd = N'CALL [sp_MSdel_dboPL010900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL010900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011000', @source_owner = N'dbo', @source_object = N'PL011000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011000]', @del_cmd = N'CALL [sp_MSdel_dboPL011000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011100', @source_owner = N'dbo', @source_object = N'PL011100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011100]', @del_cmd = N'CALL [sp_MSdel_dboPL011100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011200', @source_owner = N'dbo', @source_object = N'PL011200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011200]', @del_cmd = N'CALL [sp_MSdel_dboPL011200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011300', @source_owner = N'dbo', @source_object = N'PL011300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011300]', @del_cmd = N'CALL [sp_MSdel_dboPL011300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011400', @source_owner = N'dbo', @source_object = N'PL011400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011400]', @del_cmd = N'CALL [sp_MSdel_dboPL011400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011600', @source_owner = N'dbo', @source_object = N'PL011600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011600]', @del_cmd = N'CALL [sp_MSdel_dboPL011600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011900', @source_owner = N'dbo', @source_object = N'PL011900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011900]', @del_cmd = N'CALL [sp_MSdel_dboPL011900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011L00', @source_owner = N'dbo', @source_object = N'PL011L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011L00]', @del_cmd = N'CALL [sp_MSdel_dboPL011L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011M00', @source_owner = N'dbo', @source_object = N'PL011M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011M00]', @del_cmd = N'CALL [sp_MSdel_dboPL011M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011N00', @source_owner = N'dbo', @source_object = N'PL011N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011N00]', @del_cmd = N'CALL [sp_MSdel_dboPL011N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL011P00', @source_owner = N'dbo', @source_object = N'PL011P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL011P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL011P00]', @del_cmd = N'CALL [sp_MSdel_dboPL011P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL011P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012000', @source_owner = N'dbo', @source_object = N'PL012000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012000]', @del_cmd = N'CALL [sp_MSdel_dboPL012000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012100', @source_owner = N'dbo', @source_object = N'PL012100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012100]', @del_cmd = N'CALL [sp_MSdel_dboPL012100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012200', @source_owner = N'dbo', @source_object = N'PL012200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012200]', @del_cmd = N'CALL [sp_MSdel_dboPL012200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012300', @source_owner = N'dbo', @source_object = N'PL012300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012300]', @del_cmd = N'CALL [sp_MSdel_dboPL012300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012400', @source_owner = N'dbo', @source_object = N'PL012400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012400]', @del_cmd = N'CALL [sp_MSdel_dboPL012400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012500', @source_owner = N'dbo', @source_object = N'PL012500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012500]', @del_cmd = N'CALL [sp_MSdel_dboPL012500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012600', @source_owner = N'dbo', @source_object = N'PL012600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012600]', @del_cmd = N'CALL [sp_MSdel_dboPL012600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012700', @source_owner = N'dbo', @source_object = N'PL012700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012700]', @del_cmd = N'CALL [sp_MSdel_dboPL012700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012800', @source_owner = N'dbo', @source_object = N'PL012800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012800]', @del_cmd = N'CALL [sp_MSdel_dboPL012800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012900', @source_owner = N'dbo', @source_object = N'PL012900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012900]', @del_cmd = N'CALL [sp_MSdel_dboPL012900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012L00', @source_owner = N'dbo', @source_object = N'PL012L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012L00]', @del_cmd = N'CALL [sp_MSdel_dboPL012L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012M00', @source_owner = N'dbo', @source_object = N'PL012M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012M00]', @del_cmd = N'CALL [sp_MSdel_dboPL012M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL012N00', @source_owner = N'dbo', @source_object = N'PL012N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL012N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL012N00]', @del_cmd = N'CALL [sp_MSdel_dboPL012N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL012N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013000', @source_owner = N'dbo', @source_object = N'PL013000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013000]', @del_cmd = N'CALL [sp_MSdel_dboPL013000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013100', @source_owner = N'dbo', @source_object = N'PL013100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013100]', @del_cmd = N'CALL [sp_MSdel_dboPL013100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013500', @source_owner = N'dbo', @source_object = N'PL013500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013500]', @del_cmd = N'CALL [sp_MSdel_dboPL013500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013600', @source_owner = N'dbo', @source_object = N'PL013600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013600]', @del_cmd = N'CALL [sp_MSdel_dboPL013600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013900', @source_owner = N'dbo', @source_object = N'PL013900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013900]', @del_cmd = N'CALL [sp_MSdel_dboPL013900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013L00', @source_owner = N'dbo', @source_object = N'PL013L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013L00]', @del_cmd = N'CALL [sp_MSdel_dboPL013L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013M00', @source_owner = N'dbo', @source_object = N'PL013M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013M00]', @del_cmd = N'CALL [sp_MSdel_dboPL013M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013N00', @source_owner = N'dbo', @source_object = N'PL013N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013N00]', @del_cmd = N'CALL [sp_MSdel_dboPL013N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL013P00', @source_owner = N'dbo', @source_object = N'PL013P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL013P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL013P00]', @del_cmd = N'CALL [sp_MSdel_dboPL013P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL013P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014000', @source_owner = N'dbo', @source_object = N'PL014000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014000]', @del_cmd = N'CALL [sp_MSdel_dboPL014000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014100', @source_owner = N'dbo', @source_object = N'PL014100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014100]', @del_cmd = N'CALL [sp_MSdel_dboPL014100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014200', @source_owner = N'dbo', @source_object = N'PL014200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014200]', @del_cmd = N'CALL [sp_MSdel_dboPL014200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014300', @source_owner = N'dbo', @source_object = N'PL014300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014300]', @del_cmd = N'CALL [sp_MSdel_dboPL014300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014400', @source_owner = N'dbo', @source_object = N'PL014400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014400]', @del_cmd = N'CALL [sp_MSdel_dboPL014400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014500', @source_owner = N'dbo', @source_object = N'PL014500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014500]', @del_cmd = N'CALL [sp_MSdel_dboPL014500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014600', @source_owner = N'dbo', @source_object = N'PL014600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014600]', @del_cmd = N'CALL [sp_MSdel_dboPL014600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014700', @source_owner = N'dbo', @source_object = N'PL014700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014700]', @del_cmd = N'CALL [sp_MSdel_dboPL014700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014800', @source_owner = N'dbo', @source_object = N'PL014800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014800]', @del_cmd = N'CALL [sp_MSdel_dboPL014800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014900', @source_owner = N'dbo', @source_object = N'PL014900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014900]', @del_cmd = N'CALL [sp_MSdel_dboPL014900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014L00', @source_owner = N'dbo', @source_object = N'PL014L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014L00]', @del_cmd = N'CALL [sp_MSdel_dboPL014L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014M00', @source_owner = N'dbo', @source_object = N'PL014M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014M00]', @del_cmd = N'CALL [sp_MSdel_dboPL014M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014N00', @source_owner = N'dbo', @source_object = N'PL014N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014N00]', @del_cmd = N'CALL [sp_MSdel_dboPL014N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL014P00', @source_owner = N'dbo', @source_object = N'PL014P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL014P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL014P00]', @del_cmd = N'CALL [sp_MSdel_dboPL014P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL014P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015000', @source_owner = N'dbo', @source_object = N'PL015000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015000]', @del_cmd = N'CALL [sp_MSdel_dboPL015000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015100', @source_owner = N'dbo', @source_object = N'PL015100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015100]', @del_cmd = N'CALL [sp_MSdel_dboPL015100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015200', @source_owner = N'dbo', @source_object = N'PL015200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015200]', @del_cmd = N'CALL [sp_MSdel_dboPL015200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015300', @source_owner = N'dbo', @source_object = N'PL015300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015300]', @del_cmd = N'CALL [sp_MSdel_dboPL015300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015400', @source_owner = N'dbo', @source_object = N'PL015400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015400]', @del_cmd = N'CALL [sp_MSdel_dboPL015400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015600', @source_owner = N'dbo', @source_object = N'PL015600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015600]', @del_cmd = N'CALL [sp_MSdel_dboPL015600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015700', @source_owner = N'dbo', @source_object = N'PL015700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015700]', @del_cmd = N'CALL [sp_MSdel_dboPL015700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015800', @source_owner = N'dbo', @source_object = N'PL015800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015800]', @del_cmd = N'CALL [sp_MSdel_dboPL015800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015900', @source_owner = N'dbo', @source_object = N'PL015900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015900]', @del_cmd = N'CALL [sp_MSdel_dboPL015900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015L00', @source_owner = N'dbo', @source_object = N'PL015L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015L00]', @del_cmd = N'CALL [sp_MSdel_dboPL015L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015M00', @source_owner = N'dbo', @source_object = N'PL015M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015M00]', @del_cmd = N'CALL [sp_MSdel_dboPL015M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL015N00', @source_owner = N'dbo', @source_object = N'PL015N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL015N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL015N00]', @del_cmd = N'CALL [sp_MSdel_dboPL015N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL015N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016000', @source_owner = N'dbo', @source_object = N'PL016000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016000]', @del_cmd = N'CALL [sp_MSdel_dboPL016000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016100', @source_owner = N'dbo', @source_object = N'PL016100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016100]', @del_cmd = N'CALL [sp_MSdel_dboPL016100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016200', @source_owner = N'dbo', @source_object = N'PL016200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016200]', @del_cmd = N'CALL [sp_MSdel_dboPL016200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016300', @source_owner = N'dbo', @source_object = N'PL016300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016300]', @del_cmd = N'CALL [sp_MSdel_dboPL016300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016400', @source_owner = N'dbo', @source_object = N'PL016400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016400]', @del_cmd = N'CALL [sp_MSdel_dboPL016400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016500', @source_owner = N'dbo', @source_object = N'PL016500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016500]', @del_cmd = N'CALL [sp_MSdel_dboPL016500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016600', @source_owner = N'dbo', @source_object = N'PL016600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016600]', @del_cmd = N'CALL [sp_MSdel_dboPL016600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016700', @source_owner = N'dbo', @source_object = N'PL016700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016700]', @del_cmd = N'CALL [sp_MSdel_dboPL016700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016900', @source_owner = N'dbo', @source_object = N'PL016900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016900]', @del_cmd = N'CALL [sp_MSdel_dboPL016900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016L00', @source_owner = N'dbo', @source_object = N'PL016L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016L00]', @del_cmd = N'CALL [sp_MSdel_dboPL016L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016M00', @source_owner = N'dbo', @source_object = N'PL016M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016M00]', @del_cmd = N'CALL [sp_MSdel_dboPL016M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL016N00', @source_owner = N'dbo', @source_object = N'PL016N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL016N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL016N00]', @del_cmd = N'CALL [sp_MSdel_dboPL016N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL016N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017000', @source_owner = N'dbo', @source_object = N'PL017000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017000]', @del_cmd = N'CALL [sp_MSdel_dboPL017000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017100', @source_owner = N'dbo', @source_object = N'PL017100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017100]', @del_cmd = N'CALL [sp_MSdel_dboPL017100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017200', @source_owner = N'dbo', @source_object = N'PL017200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017200]', @del_cmd = N'CALL [sp_MSdel_dboPL017200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017300', @source_owner = N'dbo', @source_object = N'PL017300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017300]', @del_cmd = N'CALL [sp_MSdel_dboPL017300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017400', @source_owner = N'dbo', @source_object = N'PL017400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017400]', @del_cmd = N'CALL [sp_MSdel_dboPL017400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017500', @source_owner = N'dbo', @source_object = N'PL017500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017500]', @del_cmd = N'CALL [sp_MSdel_dboPL017500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017600', @source_owner = N'dbo', @source_object = N'PL017600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017600]', @del_cmd = N'CALL [sp_MSdel_dboPL017600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017700', @source_owner = N'dbo', @source_object = N'PL017700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017700]', @del_cmd = N'CALL [sp_MSdel_dboPL017700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017800', @source_owner = N'dbo', @source_object = N'PL017800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017800]', @del_cmd = N'CALL [sp_MSdel_dboPL017800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017L00', @source_owner = N'dbo', @source_object = N'PL017L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017L00]', @del_cmd = N'CALL [sp_MSdel_dboPL017L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017M00', @source_owner = N'dbo', @source_object = N'PL017M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017M00]', @del_cmd = N'CALL [sp_MSdel_dboPL017M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL017N00', @source_owner = N'dbo', @source_object = N'PL017N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL017N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL017N00]', @del_cmd = N'CALL [sp_MSdel_dboPL017N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL017N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018000', @source_owner = N'dbo', @source_object = N'PL018000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018000]', @del_cmd = N'CALL [sp_MSdel_dboPL018000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018100', @source_owner = N'dbo', @source_object = N'PL018100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018100]', @del_cmd = N'CALL [sp_MSdel_dboPL018100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018300', @source_owner = N'dbo', @source_object = N'PL018300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018300]', @del_cmd = N'CALL [sp_MSdel_dboPL018300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018400', @source_owner = N'dbo', @source_object = N'PL018400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018400]', @del_cmd = N'CALL [sp_MSdel_dboPL018400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018500', @source_owner = N'dbo', @source_object = N'PL018500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018500]', @del_cmd = N'CALL [sp_MSdel_dboPL018500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018800', @source_owner = N'dbo', @source_object = N'PL018800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018800]', @del_cmd = N'CALL [sp_MSdel_dboPL018800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018900', @source_owner = N'dbo', @source_object = N'PL018900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018900]', @del_cmd = N'CALL [sp_MSdel_dboPL018900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018L00', @source_owner = N'dbo', @source_object = N'PL018L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018L00]', @del_cmd = N'CALL [sp_MSdel_dboPL018L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018M00', @source_owner = N'dbo', @source_object = N'PL018M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018M00]', @del_cmd = N'CALL [sp_MSdel_dboPL018M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL018N00', @source_owner = N'dbo', @source_object = N'PL018N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL018N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL018N00]', @del_cmd = N'CALL [sp_MSdel_dboPL018N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL018N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019000', @source_owner = N'dbo', @source_object = N'PL019000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019000]', @del_cmd = N'CALL [sp_MSdel_dboPL019000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019100', @source_owner = N'dbo', @source_object = N'PL019100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019100]', @del_cmd = N'CALL [sp_MSdel_dboPL019100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019200', @source_owner = N'dbo', @source_object = N'PL019200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019200]', @del_cmd = N'CALL [sp_MSdel_dboPL019200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019300', @source_owner = N'dbo', @source_object = N'PL019300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019300]', @del_cmd = N'CALL [sp_MSdel_dboPL019300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019400', @source_owner = N'dbo', @source_object = N'PL019400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019400]', @del_cmd = N'CALL [sp_MSdel_dboPL019400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019500', @source_owner = N'dbo', @source_object = N'PL019500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019500]', @del_cmd = N'CALL [sp_MSdel_dboPL019500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019600', @source_owner = N'dbo', @source_object = N'PL019600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019600]', @del_cmd = N'CALL [sp_MSdel_dboPL019600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019700', @source_owner = N'dbo', @source_object = N'PL019700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019700]', @del_cmd = N'CALL [sp_MSdel_dboPL019700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019900', @source_owner = N'dbo', @source_object = N'PL019900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019900]', @del_cmd = N'CALL [sp_MSdel_dboPL019900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019L00', @source_owner = N'dbo', @source_object = N'PL019L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019L00]', @del_cmd = N'CALL [sp_MSdel_dboPL019L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL019M00', @source_owner = N'dbo', @source_object = N'PL019M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019M00]', @del_cmd = N'CALL [sp_MSdel_dboPL019M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article =N'PL019N00', @source_owner = N'dbo', @source_object = N'PL019N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL019N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL019N00]', @del_cmd = N'CALL [sp_MSdel_dboPL019N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL019N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V100', @source_owner = N'dbo', @source_object = N'PL01V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V100]', @del_cmd = N'CALL [sp_MSdel_dboPL01V100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V200', @source_owner = N'dbo', @source_object = N'PL01V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V200]', @del_cmd = N'CALL [sp_MSdel_dboPL01V200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V300', @source_owner = N'dbo', @source_object = N'PL01V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V300]', @del_cmd = N'CALL [sp_MSdel_dboPL01V300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V400', @source_owner = N'dbo', @source_object = N'PL01V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V400]', @del_cmd = N'CALL [sp_MSdel_dboPL01V400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V700', @source_owner = N'dbo', @source_object = N'PL01V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V700]', @del_cmd = N'CALL [sp_MSdel_dboPL01V700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V800', @source_owner = N'dbo', @source_object = N'PL01V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V800]', @del_cmd = N'CALL [sp_MSdel_dboPL01V800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL01', @article = N'PL01V900', @source_owner = N'dbo', @source_object = N'PL01V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL01V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL01V900]', @del_cmd = N'CALL [sp_MSdel_dboPL01V900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL01V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaPL01', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'automatic', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaPL01', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'repl2', @subscriber_password = null, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

