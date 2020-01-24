---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSC33', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSC33', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSC33', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC33', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC33', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC33', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC33', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC33', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V500', @source_owner = N'dbo', @source_object = N'SC33V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V500]', @del_cmd = N'CALL [sp_MSdel_dboSC33V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339P00', @source_owner = N'dbo', @source_object = N'SC339P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339P00]', @del_cmd = N'CALL [sp_MSdel_dboSC339P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335P00', @source_owner = N'dbo', @source_object = N'SC335P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335P00]', @del_cmd = N'CALL [sp_MSdel_dboSC335P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336P00', @source_owner = N'dbo', @source_object = N'SC336P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336P00]', @del_cmd = N'CALL [sp_MSdel_dboSC336P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337P00', @source_owner = N'dbo', @source_object = N'SC337P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337P00]', @del_cmd = N'CALL [sp_MSdel_dboSC337P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338P00', @source_owner = N'dbo', @source_object = N'SC338P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338P00]', @del_cmd = N'CALL [sp_MSdel_dboSC338P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC330100', @source_owner = N'dbo', @source_object = N'SC330100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC330100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC330100]', @del_cmd = N'CALL [sp_MSdel_dboSC330100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC330100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332P00', @source_owner = N'dbo', @source_object = N'SC332P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332P00]', @del_cmd = N'CALL [sp_MSdel_dboSC332P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC330200', @source_owner = N'dbo', @source_object = N'SC330200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC330200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC330200]', @del_cmd = N'CALL [sp_MSdel_dboSC330200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC330200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC330500', @source_owner = N'dbo', @source_object = N'SC330500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC330500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC330500]', @del_cmd = N'CALL [sp_MSdel_dboSC330500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC330500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC330600', @source_owner = N'dbo', @source_object = N'SC330600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC330600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC330600]', @del_cmd = N'CALL [sp_MSdel_dboSC330600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC330600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC330700', @source_owner = N'dbo', @source_object = N'SC330700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC330700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC330700]', @del_cmd = N'CALL [sp_MSdel_dboSC330700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC330700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC330800', @source_owner = N'dbo', @source_object = N'SC330800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC330800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC330800]', @del_cmd = N'CALL [sp_MSdel_dboSC330800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC330800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC330900', @source_owner = N'dbo', @source_object = N'SC330900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC330900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC330900]', @del_cmd = N'CALL [sp_MSdel_dboSC330900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC330900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331000', @source_owner = N'dbo', @source_object = N'SC331000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331000]', @del_cmd = N'CALL [sp_MSdel_dboSC331000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331100', @source_owner = N'dbo', @source_object = N'SC331100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331100]', @del_cmd = N'CALL [sp_MSdel_dboSC331100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331200', @source_owner = N'dbo', @source_object = N'SC331200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331200]', @del_cmd = N'CALL [sp_MSdel_dboSC331200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331300', @source_owner = N'dbo', @source_object = N'SC331300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331300]', @del_cmd = N'CALL [sp_MSdel_dboSC331300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331400', @source_owner = N'dbo', @source_object = N'SC331400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331400]', @del_cmd = N'CALL [sp_MSdel_dboSC331400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331600', @source_owner = N'dbo', @source_object = N'SC331600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331600]', @del_cmd = N'CALL [sp_MSdel_dboSC331600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331900', @source_owner = N'dbo', @source_object = N'SC331900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331900]', @del_cmd = N'CALL [sp_MSdel_dboSC331900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331L00', @source_owner = N'dbo', @source_object = N'SC331L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331L00]', @del_cmd = N'CALL [sp_MSdel_dboSC331L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331M00', @source_owner = N'dbo', @source_object = N'SC331M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331M00]', @del_cmd = N'CALL [sp_MSdel_dboSC331M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331N00', @source_owner = N'dbo', @source_object = N'SC331N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331N00]', @del_cmd = N'CALL [sp_MSdel_dboSC331N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC331P00', @source_owner = N'dbo', @source_object = N'SC331P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC331P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC331P00]', @del_cmd = N'CALL [sp_MSdel_dboSC331P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC331P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332000', @source_owner = N'dbo', @source_object = N'SC332000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332000]', @del_cmd = N'CALL [sp_MSdel_dboSC332000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332100', @source_owner = N'dbo', @source_object = N'SC332100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332100]', @del_cmd = N'CALL [sp_MSdel_dboSC332100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332200', @source_owner = N'dbo', @source_object = N'SC332200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332200]', @del_cmd = N'CALL [sp_MSdel_dboSC332200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332300', @source_owner = N'dbo', @source_object = N'SC332300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332300]', @del_cmd = N'CALL [sp_MSdel_dboSC332300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332400', @source_owner = N'dbo', @source_object = N'SC332400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332400]', @del_cmd = N'CALL [sp_MSdel_dboSC332400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332500', @source_owner = N'dbo', @source_object = N'SC332500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332500]', @del_cmd = N'CALL [sp_MSdel_dboSC332500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332600', @source_owner = N'dbo', @source_object = N'SC332600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332600]', @del_cmd = N'CALL [sp_MSdel_dboSC332600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332700', @source_owner = N'dbo', @source_object = N'SC332700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332700]', @del_cmd = N'CALL [sp_MSdel_dboSC332700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332800', @source_owner = N'dbo', @source_object = N'SC332800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332800]', @del_cmd = N'CALL [sp_MSdel_dboSC332800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332900', @source_owner = N'dbo', @source_object = N'SC332900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332900]', @del_cmd = N'CALL [sp_MSdel_dboSC332900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332L00', @source_owner = N'dbo', @source_object = N'SC332L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332L00]', @del_cmd = N'CALL [sp_MSdel_dboSC332L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332M00', @source_owner = N'dbo', @source_object = N'SC332M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332M00]', @del_cmd = N'CALL [sp_MSdel_dboSC332M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC332N00', @source_owner = N'dbo', @source_object = N'SC332N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC332N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC332N00]', @del_cmd = N'CALL [sp_MSdel_dboSC332N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC332N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333000', @source_owner = N'dbo', @source_object = N'SC333000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333000]', @del_cmd = N'CALL [sp_MSdel_dboSC333000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333100', @source_owner = N'dbo', @source_object = N'SC333100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333100]', @del_cmd = N'CALL [sp_MSdel_dboSC333100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333500', @source_owner = N'dbo', @source_object = N'SC333500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333500]', @del_cmd = N'CALL [sp_MSdel_dboSC333500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333600', @source_owner = N'dbo', @source_object = N'SC333600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333600]', @del_cmd = N'CALL [sp_MSdel_dboSC333600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333900', @source_owner = N'dbo', @source_object = N'SC333900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333900]', @del_cmd = N'CALL [sp_MSdel_dboSC333900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333L00', @source_owner = N'dbo', @source_object = N'SC333L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333L00]', @del_cmd = N'CALL [sp_MSdel_dboSC333L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333M00', @source_owner = N'dbo', @source_object = N'SC333M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333M00]', @del_cmd = N'CALL [sp_MSdel_dboSC333M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333N00', @source_owner = N'dbo', @source_object = N'SC333N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333N00]', @del_cmd = N'CALL [sp_MSdel_dboSC333N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC333P00', @source_owner = N'dbo', @source_object = N'SC333P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC333P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC333P00]', @del_cmd = N'CALL [sp_MSdel_dboSC333P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC333P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334000', @source_owner = N'dbo', @source_object = N'SC334000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334000]', @del_cmd = N'CALL [sp_MSdel_dboSC334000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334100', @source_owner = N'dbo', @source_object = N'SC334100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334100]', @del_cmd = N'CALL [sp_MSdel_dboSC334100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334200', @source_owner = N'dbo', @source_object = N'SC334200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334200]', @del_cmd = N'CALL [sp_MSdel_dboSC334200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334300', @source_owner = N'dbo', @source_object = N'SC334300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334300]', @del_cmd = N'CALL [sp_MSdel_dboSC334300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334400', @source_owner = N'dbo', @source_object = N'SC334400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334400]', @del_cmd = N'CALL [sp_MSdel_dboSC334400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334500', @source_owner = N'dbo', @source_object = N'SC334500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334500]', @del_cmd = N'CALL [sp_MSdel_dboSC334500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334600', @source_owner = N'dbo', @source_object = N'SC334600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334600]', @del_cmd = N'CALL [sp_MSdel_dboSC334600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334700', @source_owner = N'dbo', @source_object = N'SC334700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334700]', @del_cmd = N'CALL [sp_MSdel_dboSC334700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334800', @source_owner = N'dbo', @source_object = N'SC334800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334800]', @del_cmd = N'CALL [sp_MSdel_dboSC334800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334900', @source_owner = N'dbo', @source_object = N'SC334900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334900]', @del_cmd = N'CALL [sp_MSdel_dboSC334900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334L00', @source_owner = N'dbo', @source_object = N'SC334L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334L00]', @del_cmd = N'CALL [sp_MSdel_dboSC334L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334M00', @source_owner = N'dbo', @source_object = N'SC334M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334M00]', @del_cmd = N'CALL [sp_MSdel_dboSC334M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334N00', @source_owner = N'dbo', @source_object = N'SC334N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334N00]', @del_cmd = N'CALL [sp_MSdel_dboSC334N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC334P00', @source_owner = N'dbo', @source_object = N'SC334P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC334P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC334P00]', @del_cmd = N'CALL [sp_MSdel_dboSC334P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC334P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335000', @source_owner = N'dbo', @source_object = N'SC335000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335000]', @del_cmd = N'CALL [sp_MSdel_dboSC335000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335100', @source_owner = N'dbo', @source_object = N'SC335100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335100]', @del_cmd = N'CALL [sp_MSdel_dboSC335100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335200', @source_owner = N'dbo', @source_object = N'SC335200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335200]', @del_cmd = N'CALL [sp_MSdel_dboSC335200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335300', @source_owner = N'dbo', @source_object = N'SC335300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335300]', @del_cmd = N'CALL [sp_MSdel_dboSC335300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335400', @source_owner = N'dbo', @source_object = N'SC335400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335400]', @del_cmd = N'CALL [sp_MSdel_dboSC335400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335600', @source_owner = N'dbo', @source_object = N'SC335600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335600]', @del_cmd = N'CALL [sp_MSdel_dboSC335600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335700', @source_owner = N'dbo', @source_object = N'SC335700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335700]', @del_cmd = N'CALL [sp_MSdel_dboSC335700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335800', @source_owner = N'dbo', @source_object = N'SC335800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335800]', @del_cmd = N'CALL [sp_MSdel_dboSC335800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335900', @source_owner = N'dbo', @source_object = N'SC335900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335900]', @del_cmd = N'CALL [sp_MSdel_dboSC335900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335L00', @source_owner = N'dbo', @source_object = N'SC335L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335L00]', @del_cmd = N'CALL [sp_MSdel_dboSC335L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335M00', @source_owner = N'dbo', @source_object = N'SC335M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335M00]', @del_cmd = N'CALL [sp_MSdel_dboSC335M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC335N00', @source_owner = N'dbo', @source_object = N'SC335N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC335N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC335N00]', @del_cmd = N'CALL [sp_MSdel_dboSC335N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC335N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336000', @source_owner = N'dbo', @source_object = N'SC336000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336000]', @del_cmd = N'CALL [sp_MSdel_dboSC336000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336100', @source_owner = N'dbo', @source_object = N'SC336100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336100]', @del_cmd = N'CALL [sp_MSdel_dboSC336100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336200', @source_owner = N'dbo', @source_object = N'SC336200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336200]', @del_cmd = N'CALL [sp_MSdel_dboSC336200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336300', @source_owner = N'dbo', @source_object = N'SC336300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336300]', @del_cmd = N'CALL [sp_MSdel_dboSC336300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336400', @source_owner = N'dbo', @source_object = N'SC336400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336400]', @del_cmd = N'CALL [sp_MSdel_dboSC336400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336500', @source_owner = N'dbo', @source_object = N'SC336500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336500]', @del_cmd = N'CALL [sp_MSdel_dboSC336500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336600', @source_owner = N'dbo', @source_object = N'SC336600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336600]', @del_cmd = N'CALL [sp_MSdel_dboSC336600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336700', @source_owner = N'dbo', @source_object = N'SC336700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336700]', @del_cmd = N'CALL [sp_MSdel_dboSC336700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336900', @source_owner = N'dbo', @source_object = N'SC336900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336900]', @del_cmd = N'CALL [sp_MSdel_dboSC336900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336L00', @source_owner = N'dbo', @source_object = N'SC336L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336L00]', @del_cmd = N'CALL [sp_MSdel_dboSC336L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336M00', @source_owner = N'dbo', @source_object = N'SC336M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336M00]', @del_cmd = N'CALL [sp_MSdel_dboSC336M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC336N00', @source_owner = N'dbo', @source_object = N'SC336N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC336N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC336N00]', @del_cmd = N'CALL [sp_MSdel_dboSC336N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC336N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337000', @source_owner = N'dbo', @source_object = N'SC337000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337000]', @del_cmd = N'CALL [sp_MSdel_dboSC337000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337100', @source_owner = N'dbo', @source_object = N'SC337100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337100]', @del_cmd = N'CALL [sp_MSdel_dboSC337100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337200', @source_owner = N'dbo', @source_object = N'SC337200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337200]', @del_cmd = N'CALL [sp_MSdel_dboSC337200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337300', @source_owner = N'dbo', @source_object = N'SC337300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337300]', @del_cmd = N'CALL [sp_MSdel_dboSC337300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337400', @source_owner = N'dbo', @source_object = N'SC337400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337400]', @del_cmd = N'CALL [sp_MSdel_dboSC337400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337500', @source_owner = N'dbo', @source_object = N'SC337500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337500]', @del_cmd = N'CALL [sp_MSdel_dboSC337500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337600', @source_owner = N'dbo', @source_object = N'SC337600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337600]', @del_cmd = N'CALL [sp_MSdel_dboSC337600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337700', @source_owner = N'dbo', @source_object = N'SC337700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337700]', @del_cmd = N'CALL [sp_MSdel_dboSC337700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337800', @source_owner = N'dbo', @source_object = N'SC337800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337800]', @del_cmd = N'CALL [sp_MSdel_dboSC337800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337L00', @source_owner = N'dbo', @source_object = N'SC337L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337L00]', @del_cmd = N'CALL [sp_MSdel_dboSC337L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337M00', @source_owner = N'dbo', @source_object = N'SC337M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337M00]', @del_cmd = N'CALL [sp_MSdel_dboSC337M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC337N00', @source_owner = N'dbo', @source_object = N'SC337N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC337N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC337N00]', @del_cmd = N'CALL [sp_MSdel_dboSC337N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC337N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338000', @source_owner = N'dbo', @source_object = N'SC338000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338000]', @del_cmd = N'CALL [sp_MSdel_dboSC338000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338100', @source_owner = N'dbo', @source_object = N'SC338100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338100]', @del_cmd = N'CALL [sp_MSdel_dboSC338100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338300', @source_owner = N'dbo', @source_object = N'SC338300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338300]', @del_cmd = N'CALL [sp_MSdel_dboSC338300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338400', @source_owner = N'dbo', @source_object = N'SC338400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338400]', @del_cmd = N'CALL [sp_MSdel_dboSC338400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338500', @source_owner = N'dbo', @source_object = N'SC338500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338500]', @del_cmd = N'CALL [sp_MSdel_dboSC338500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338800', @source_owner = N'dbo', @source_object = N'SC338800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338800]', @del_cmd = N'CALL [sp_MSdel_dboSC338800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338900', @source_owner = N'dbo', @source_object = N'SC338900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338900]', @del_cmd = N'CALL [sp_MSdel_dboSC338900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338L00', @source_owner = N'dbo', @source_object = N'SC338L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338L00]', @del_cmd = N'CALL [sp_MSdel_dboSC338L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338M00', @source_owner = N'dbo', @source_object = N'SC338M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338M00]', @del_cmd = N'CALL [sp_MSdel_dboSC338M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC338N00', @source_owner = N'dbo', @source_object = N'SC338N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC338N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC338N00]', @del_cmd = N'CALL [sp_MSdel_dboSC338N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC338N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339000', @source_owner = N'dbo', @source_object = N'SC339000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339000]', @del_cmd = N'CALL [sp_MSdel_dboSC339000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339100', @source_owner = N'dbo', @source_object = N'SC339100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339100]', @del_cmd = N'CALL [sp_MSdel_dboSC339100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339200', @source_owner = N'dbo', @source_object = N'SC339200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339200]', @del_cmd = N'CALL [sp_MSdel_dboSC339200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339300', @source_owner = N'dbo', @source_object = N'SC339300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339300]', @del_cmd = N'CALL [sp_MSdel_dboSC339300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339400', @source_owner = N'dbo', @source_object = N'SC339400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339400]', @del_cmd = N'CALL [sp_MSdel_dboSC339400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339500', @source_owner = N'dbo', @source_object = N'SC339500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339500]', @del_cmd = N'CALL [sp_MSdel_dboSC339500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339600', @source_owner = N'dbo', @source_object = N'SC339600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339600]', @del_cmd = N'CALL [sp_MSdel_dboSC339600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339700', @source_owner = N'dbo', @source_object = N'SC339700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339700]', @del_cmd = N'CALL [sp_MSdel_dboSC339700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339900', @source_owner = N'dbo', @source_object = N'SC339900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339900]', @del_cmd = N'CALL [sp_MSdel_dboSC339900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339L00', @source_owner = N'dbo', @source_object = N'SC339L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339L00]', @del_cmd = N'CALL [sp_MSdel_dboSC339L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC339M00', @source_owner = N'dbo', @source_object = N'SC339M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339M00]', @del_cmd = N'CALL [sp_MSdel_dboSC339M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article =N'SC339N00', @source_owner = N'dbo', @source_object = N'SC339N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC339N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC339N00]', @del_cmd = N'CALL [sp_MSdel_dboSC339N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC339N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V100', @source_owner = N'dbo', @source_object = N'SC33V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V100]', @del_cmd = N'CALL [sp_MSdel_dboSC33V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V200', @source_owner = N'dbo', @source_object = N'SC33V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V200]', @del_cmd = N'CALL [sp_MSdel_dboSC33V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V300', @source_owner = N'dbo', @source_object = N'SC33V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V300]', @del_cmd = N'CALL [sp_MSdel_dboSC33V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V400', @source_owner = N'dbo', @source_object = N'SC33V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V400]', @del_cmd = N'CALL [sp_MSdel_dboSC33V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V700', @source_owner = N'dbo', @source_object = N'SC33V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V700]', @del_cmd = N'CALL [sp_MSdel_dboSC33V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V800', @source_owner = N'dbo', @source_object = N'SC33V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V800]', @del_cmd = N'CALL [sp_MSdel_dboSC33V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC33', @article = N'SC33V900', @source_owner = N'dbo', @source_object = N'SC33V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC33V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC33V900]', @del_cmd = N'CALL [sp_MSdel_dboSC33V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC33V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSC33', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSC33', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

