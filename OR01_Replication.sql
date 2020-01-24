---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaOR01', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaOR01', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaOR01', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR01', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR01', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR01', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR01', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR01', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V500', @source_owner = N'dbo', @source_object = N'OR01V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V500]', @del_cmd = N'CALL [sp_MSdel_dboOR01V500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019P00', @source_owner = N'dbo', @source_object = N'OR019P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019P00]', @del_cmd = N'CALL [sp_MSdel_dboOR019P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015P00', @source_owner = N'dbo', @source_object = N'OR015P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015P00]', @del_cmd = N'CALL [sp_MSdel_dboOR015P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016P00', @source_owner = N'dbo', @source_object = N'OR016P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016P00]', @del_cmd = N'CALL [sp_MSdel_dboOR016P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017P00', @source_owner = N'dbo', @source_object = N'OR017P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017P00]', @del_cmd = N'CALL [sp_MSdel_dboOR017P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018P00', @source_owner = N'dbo', @source_object = N'OR018P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018P00]', @del_cmd = N'CALL [sp_MSdel_dboOR018P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR010100', @source_owner = N'dbo', @source_object = N'OR010100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR010100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR010100]', @del_cmd = N'CALL [sp_MSdel_dboOR010100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR010100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012P00', @source_owner = N'dbo', @source_object = N'OR012P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012P00]', @del_cmd = N'CALL [sp_MSdel_dboOR012P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR010200', @source_owner = N'dbo', @source_object = N'OR010200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR010200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR010200]', @del_cmd = N'CALL [sp_MSdel_dboOR010200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR010200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR010500', @source_owner = N'dbo', @source_object = N'OR010500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR010500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR010500]', @del_cmd = N'CALL [sp_MSdel_dboOR010500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR010500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR010600', @source_owner = N'dbo', @source_object = N'OR010600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR010600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR010600]', @del_cmd = N'CALL [sp_MSdel_dboOR010600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR010600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR010700', @source_owner = N'dbo', @source_object = N'OR010700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR010700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR010700]', @del_cmd = N'CALL [sp_MSdel_dboOR010700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR010700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR010800', @source_owner = N'dbo', @source_object = N'OR010800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR010800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR010800]', @del_cmd = N'CALL [sp_MSdel_dboOR010800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR010800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR010900', @source_owner = N'dbo', @source_object = N'OR010900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR010900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR010900]', @del_cmd = N'CALL [sp_MSdel_dboOR010900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR010900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011000', @source_owner = N'dbo', @source_object = N'OR011000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011000]', @del_cmd = N'CALL [sp_MSdel_dboOR011000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011100', @source_owner = N'dbo', @source_object = N'OR011100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011100]', @del_cmd = N'CALL [sp_MSdel_dboOR011100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011200', @source_owner = N'dbo', @source_object = N'OR011200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011200]', @del_cmd = N'CALL [sp_MSdel_dboOR011200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011300', @source_owner = N'dbo', @source_object = N'OR011300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011300]', @del_cmd = N'CALL [sp_MSdel_dboOR011300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011400', @source_owner = N'dbo', @source_object = N'OR011400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011400]', @del_cmd = N'CALL [sp_MSdel_dboOR011400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011600', @source_owner = N'dbo', @source_object = N'OR011600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011600]', @del_cmd = N'CALL [sp_MSdel_dboOR011600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011900', @source_owner = N'dbo', @source_object = N'OR011900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011900]', @del_cmd = N'CALL [sp_MSdel_dboOR011900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011L00', @source_owner = N'dbo', @source_object = N'OR011L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011L00]', @del_cmd = N'CALL [sp_MSdel_dboOR011L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011M00', @source_owner = N'dbo', @source_object = N'OR011M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011M00]', @del_cmd = N'CALL [sp_MSdel_dboOR011M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011N00', @source_owner = N'dbo', @source_object = N'OR011N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011N00]', @del_cmd = N'CALL [sp_MSdel_dboOR011N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR011P00', @source_owner = N'dbo', @source_object = N'OR011P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR011P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR011P00]', @del_cmd = N'CALL [sp_MSdel_dboOR011P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR011P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012000', @source_owner = N'dbo', @source_object = N'OR012000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012000]', @del_cmd = N'CALL [sp_MSdel_dboOR012000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012100', @source_owner = N'dbo', @source_object = N'OR012100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012100]', @del_cmd = N'CALL [sp_MSdel_dboOR012100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012200', @source_owner = N'dbo', @source_object = N'OR012200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012200]', @del_cmd = N'CALL [sp_MSdel_dboOR012200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012300', @source_owner = N'dbo', @source_object = N'OR012300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012300]', @del_cmd = N'CALL [sp_MSdel_dboOR012300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012400', @source_owner = N'dbo', @source_object = N'OR012400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012400]', @del_cmd = N'CALL [sp_MSdel_dboOR012400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012500', @source_owner = N'dbo', @source_object = N'OR012500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012500]', @del_cmd = N'CALL [sp_MSdel_dboOR012500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012600', @source_owner = N'dbo', @source_object = N'OR012600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012600]', @del_cmd = N'CALL [sp_MSdel_dboOR012600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012700', @source_owner = N'dbo', @source_object = N'OR012700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012700]', @del_cmd = N'CALL [sp_MSdel_dboOR012700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012800', @source_owner = N'dbo', @source_object = N'OR012800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012800]', @del_cmd = N'CALL [sp_MSdel_dboOR012800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012900', @source_owner = N'dbo', @source_object = N'OR012900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012900]', @del_cmd = N'CALL [sp_MSdel_dboOR012900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012L00', @source_owner = N'dbo', @source_object = N'OR012L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012L00]', @del_cmd = N'CALL [sp_MSdel_dboOR012L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012M00', @source_owner = N'dbo', @source_object = N'OR012M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012M00]', @del_cmd = N'CALL [sp_MSdel_dboOR012M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR012N00', @source_owner = N'dbo', @source_object = N'OR012N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR012N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR012N00]', @del_cmd = N'CALL [sp_MSdel_dboOR012N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR012N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013000', @source_owner = N'dbo', @source_object = N'OR013000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013000]', @del_cmd = N'CALL [sp_MSdel_dboOR013000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013100', @source_owner = N'dbo', @source_object = N'OR013100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013100]', @del_cmd = N'CALL [sp_MSdel_dboOR013100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013500', @source_owner = N'dbo', @source_object = N'OR013500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013500]', @del_cmd = N'CALL [sp_MSdel_dboOR013500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013600', @source_owner = N'dbo', @source_object = N'OR013600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013600]', @del_cmd = N'CALL [sp_MSdel_dboOR013600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013900', @source_owner = N'dbo', @source_object = N'OR013900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013900]', @del_cmd = N'CALL [sp_MSdel_dboOR013900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013L00', @source_owner = N'dbo', @source_object = N'OR013L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013L00]', @del_cmd = N'CALL [sp_MSdel_dboOR013L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013M00', @source_owner = N'dbo', @source_object = N'OR013M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013M00]', @del_cmd = N'CALL [sp_MSdel_dboOR013M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013N00', @source_owner = N'dbo', @source_object = N'OR013N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013N00]', @del_cmd = N'CALL [sp_MSdel_dboOR013N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR013P00', @source_owner = N'dbo', @source_object = N'OR013P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR013P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR013P00]', @del_cmd = N'CALL [sp_MSdel_dboOR013P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR013P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014000', @source_owner = N'dbo', @source_object = N'OR014000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014000]', @del_cmd = N'CALL [sp_MSdel_dboOR014000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014100', @source_owner = N'dbo', @source_object = N'OR014100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014100]', @del_cmd = N'CALL [sp_MSdel_dboOR014100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014200', @source_owner = N'dbo', @source_object = N'OR014200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014200]', @del_cmd = N'CALL [sp_MSdel_dboOR014200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014300', @source_owner = N'dbo', @source_object = N'OR014300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014300]', @del_cmd = N'CALL [sp_MSdel_dboOR014300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014400', @source_owner = N'dbo', @source_object = N'OR014400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014400]', @del_cmd = N'CALL [sp_MSdel_dboOR014400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014500', @source_owner = N'dbo', @source_object = N'OR014500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014500]', @del_cmd = N'CALL [sp_MSdel_dboOR014500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014600', @source_owner = N'dbo', @source_object = N'OR014600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014600]', @del_cmd = N'CALL [sp_MSdel_dboOR014600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014700', @source_owner = N'dbo', @source_object = N'OR014700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014700]', @del_cmd = N'CALL [sp_MSdel_dboOR014700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014800', @source_owner = N'dbo', @source_object = N'OR014800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014800]', @del_cmd = N'CALL [sp_MSdel_dboOR014800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014900', @source_owner = N'dbo', @source_object = N'OR014900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014900]', @del_cmd = N'CALL [sp_MSdel_dboOR014900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014L00', @source_owner = N'dbo', @source_object = N'OR014L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014L00]', @del_cmd = N'CALL [sp_MSdel_dboOR014L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014M00', @source_owner = N'dbo', @source_object = N'OR014M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014M00]', @del_cmd = N'CALL [sp_MSdel_dboOR014M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014N00', @source_owner = N'dbo', @source_object = N'OR014N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014N00]', @del_cmd = N'CALL [sp_MSdel_dboOR014N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR014P00', @source_owner = N'dbo', @source_object = N'OR014P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR014P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR014P00]', @del_cmd = N'CALL [sp_MSdel_dboOR014P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR014P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015000', @source_owner = N'dbo', @source_object = N'OR015000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015000]', @del_cmd = N'CALL [sp_MSdel_dboOR015000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015100', @source_owner = N'dbo', @source_object = N'OR015100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015100]', @del_cmd = N'CALL [sp_MSdel_dboOR015100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015200', @source_owner = N'dbo', @source_object = N'OR015200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015200]', @del_cmd = N'CALL [sp_MSdel_dboOR015200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015300', @source_owner = N'dbo', @source_object = N'OR015300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015300]', @del_cmd = N'CALL [sp_MSdel_dboOR015300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015400', @source_owner = N'dbo', @source_object = N'OR015400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015400]', @del_cmd = N'CALL [sp_MSdel_dboOR015400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015600', @source_owner = N'dbo', @source_object = N'OR015600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015600]', @del_cmd = N'CALL [sp_MSdel_dboOR015600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015700', @source_owner = N'dbo', @source_object = N'OR015700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015700]', @del_cmd = N'CALL [sp_MSdel_dboOR015700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015800', @source_owner = N'dbo', @source_object = N'OR015800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015800]', @del_cmd = N'CALL [sp_MSdel_dboOR015800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015900', @source_owner = N'dbo', @source_object = N'OR015900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015900]', @del_cmd = N'CALL [sp_MSdel_dboOR015900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015L00', @source_owner = N'dbo', @source_object = N'OR015L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015L00]', @del_cmd = N'CALL [sp_MSdel_dboOR015L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015M00', @source_owner = N'dbo', @source_object = N'OR015M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015M00]', @del_cmd = N'CALL [sp_MSdel_dboOR015M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR015N00', @source_owner = N'dbo', @source_object = N'OR015N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR015N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR015N00]', @del_cmd = N'CALL [sp_MSdel_dboOR015N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR015N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016000', @source_owner = N'dbo', @source_object = N'OR016000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016000]', @del_cmd = N'CALL [sp_MSdel_dboOR016000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016100', @source_owner = N'dbo', @source_object = N'OR016100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016100]', @del_cmd = N'CALL [sp_MSdel_dboOR016100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016200', @source_owner = N'dbo', @source_object = N'OR016200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016200]', @del_cmd = N'CALL [sp_MSdel_dboOR016200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016300', @source_owner = N'dbo', @source_object = N'OR016300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016300]', @del_cmd = N'CALL [sp_MSdel_dboOR016300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016400', @source_owner = N'dbo', @source_object = N'OR016400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016400]', @del_cmd = N'CALL [sp_MSdel_dboOR016400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016500', @source_owner = N'dbo', @source_object = N'OR016500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016500]', @del_cmd = N'CALL [sp_MSdel_dboOR016500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016600', @source_owner = N'dbo', @source_object = N'OR016600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016600]', @del_cmd = N'CALL [sp_MSdel_dboOR016600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016700', @source_owner = N'dbo', @source_object = N'OR016700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016700]', @del_cmd = N'CALL [sp_MSdel_dboOR016700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016900', @source_owner = N'dbo', @source_object = N'OR016900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016900]', @del_cmd = N'CALL [sp_MSdel_dboOR016900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016L00', @source_owner = N'dbo', @source_object = N'OR016L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016L00]', @del_cmd = N'CALL [sp_MSdel_dboOR016L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016M00', @source_owner = N'dbo', @source_object = N'OR016M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016M00]', @del_cmd = N'CALL [sp_MSdel_dboOR016M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR016N00', @source_owner = N'dbo', @source_object = N'OR016N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR016N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR016N00]', @del_cmd = N'CALL [sp_MSdel_dboOR016N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR016N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017000', @source_owner = N'dbo', @source_object = N'OR017000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017000]', @del_cmd = N'CALL [sp_MSdel_dboOR017000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017100', @source_owner = N'dbo', @source_object = N'OR017100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017100]', @del_cmd = N'CALL [sp_MSdel_dboOR017100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017200', @source_owner = N'dbo', @source_object = N'OR017200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017200]', @del_cmd = N'CALL [sp_MSdel_dboOR017200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017300', @source_owner = N'dbo', @source_object = N'OR017300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017300]', @del_cmd = N'CALL [sp_MSdel_dboOR017300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017400', @source_owner = N'dbo', @source_object = N'OR017400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017400]', @del_cmd = N'CALL [sp_MSdel_dboOR017400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017500', @source_owner = N'dbo', @source_object = N'OR017500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017500]', @del_cmd = N'CALL [sp_MSdel_dboOR017500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017600', @source_owner = N'dbo', @source_object = N'OR017600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017600]', @del_cmd = N'CALL [sp_MSdel_dboOR017600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017700', @source_owner = N'dbo', @source_object = N'OR017700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017700]', @del_cmd = N'CALL [sp_MSdel_dboOR017700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017800', @source_owner = N'dbo', @source_object = N'OR017800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017800]', @del_cmd = N'CALL [sp_MSdel_dboOR017800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017L00', @source_owner = N'dbo', @source_object = N'OR017L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017L00]', @del_cmd = N'CALL [sp_MSdel_dboOR017L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017M00', @source_owner = N'dbo', @source_object = N'OR017M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017M00]', @del_cmd = N'CALL [sp_MSdel_dboOR017M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR017N00', @source_owner = N'dbo', @source_object = N'OR017N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR017N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR017N00]', @del_cmd = N'CALL [sp_MSdel_dboOR017N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR017N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018000', @source_owner = N'dbo', @source_object = N'OR018000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018000]', @del_cmd = N'CALL [sp_MSdel_dboOR018000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018100', @source_owner = N'dbo', @source_object = N'OR018100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018100]', @del_cmd = N'CALL [sp_MSdel_dboOR018100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018300', @source_owner = N'dbo', @source_object = N'OR018300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018300]', @del_cmd = N'CALL [sp_MSdel_dboOR018300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018400', @source_owner = N'dbo', @source_object = N'OR018400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018400]', @del_cmd = N'CALL [sp_MSdel_dboOR018400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018500', @source_owner = N'dbo', @source_object = N'OR018500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018500]', @del_cmd = N'CALL [sp_MSdel_dboOR018500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018800', @source_owner = N'dbo', @source_object = N'OR018800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018800]', @del_cmd = N'CALL [sp_MSdel_dboOR018800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018900', @source_owner = N'dbo', @source_object = N'OR018900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018900]', @del_cmd = N'CALL [sp_MSdel_dboOR018900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018L00', @source_owner = N'dbo', @source_object = N'OR018L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018L00]', @del_cmd = N'CALL [sp_MSdel_dboOR018L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018M00', @source_owner = N'dbo', @source_object = N'OR018M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018M00]', @del_cmd = N'CALL [sp_MSdel_dboOR018M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR018N00', @source_owner = N'dbo', @source_object = N'OR018N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR018N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR018N00]', @del_cmd = N'CALL [sp_MSdel_dboOR018N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR018N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019000', @source_owner = N'dbo', @source_object = N'OR019000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019000]', @del_cmd = N'CALL [sp_MSdel_dboOR019000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019100', @source_owner = N'dbo', @source_object = N'OR019100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019100]', @del_cmd = N'CALL [sp_MSdel_dboOR019100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019200', @source_owner = N'dbo', @source_object = N'OR019200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019200]', @del_cmd = N'CALL [sp_MSdel_dboOR019200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019300', @source_owner = N'dbo', @source_object = N'OR019300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019300]', @del_cmd = N'CALL [sp_MSdel_dboOR019300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019400', @source_owner = N'dbo', @source_object = N'OR019400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019400]', @del_cmd = N'CALL [sp_MSdel_dboOR019400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019500', @source_owner = N'dbo', @source_object = N'OR019500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019500]', @del_cmd = N'CALL [sp_MSdel_dboOR019500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019600', @source_owner = N'dbo', @source_object = N'OR019600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019600]', @del_cmd = N'CALL [sp_MSdel_dboOR019600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019700', @source_owner = N'dbo', @source_object = N'OR019700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019700]', @del_cmd = N'CALL [sp_MSdel_dboOR019700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019900', @source_owner = N'dbo', @source_object = N'OR019900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019900]', @del_cmd = N'CALL [sp_MSdel_dboOR019900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019L00', @source_owner = N'dbo', @source_object = N'OR019L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019L00]', @del_cmd = N'CALL [sp_MSdel_dboOR019L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019M00', @source_owner = N'dbo', @source_object = N'OR019M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019M00]', @del_cmd = N'CALL [sp_MSdel_dboOR019M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR019N00', @source_owner = N'dbo', @source_object = N'OR019N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR019N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR019N00]', @del_cmd = N'CALL [sp_MSdel_dboOR019N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR019N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V100', @source_owner = N'dbo', @source_object = N'OR01V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V100]', @del_cmd = N'CALL [sp_MSdel_dboOR01V100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V200', @source_owner = N'dbo', @source_object = N'OR01V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V200]', @del_cmd = N'CALL [sp_MSdel_dboOR01V200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V300', @source_owner = N'dbo', @source_object = N'OR01V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V300]', @del_cmd = N'CALL [sp_MSdel_dboOR01V300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V400', @source_owner = N'dbo', @source_object = N'OR01V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V400]', @del_cmd = N'CALL [sp_MSdel_dboOR01V400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V700', @source_owner = N'dbo', @source_object = N'OR01V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V700]', @del_cmd = N'CALL [sp_MSdel_dboOR01V700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V800', @source_owner = N'dbo', @source_object = N'OR01V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V800]', @del_cmd = N'CALL [sp_MSdel_dboOR01V800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR01', @article = N'OR01V900', @source_owner = N'dbo', @source_object = N'OR01V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR01V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR01V900]', @del_cmd = N'CALL [sp_MSdel_dboOR01V900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR01V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaOR01', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaOR01', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

