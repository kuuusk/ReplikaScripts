---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSC07', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSC07', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSC07', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC07', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC07', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC07', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC07', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC07', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V500', @source_owner = N'dbo', @source_object = N'SC07V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V500]', @del_cmd = N'CALL [sp_MSdel_dboSC07V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079P00', @source_owner = N'dbo', @source_object = N'SC079P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079P00]', @del_cmd = N'CALL [sp_MSdel_dboSC079P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075P00', @source_owner = N'dbo', @source_object = N'SC075P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075P00]', @del_cmd = N'CALL [sp_MSdel_dboSC075P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076P00', @source_owner = N'dbo', @source_object = N'SC076P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076P00]', @del_cmd = N'CALL [sp_MSdel_dboSC076P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077P00', @source_owner = N'dbo', @source_object = N'SC077P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077P00]', @del_cmd = N'CALL [sp_MSdel_dboSC077P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078P00', @source_owner = N'dbo', @source_object = N'SC078P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078P00]', @del_cmd = N'CALL [sp_MSdel_dboSC078P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC070100', @source_owner = N'dbo', @source_object = N'SC070100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC070100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC070100]', @del_cmd = N'CALL [sp_MSdel_dboSC070100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC070100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC070200', @source_owner = N'dbo', @source_object = N'SC070200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC070200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC070200]', @del_cmd = N'CALL [sp_MSdel_dboSC070200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC070200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC070500', @source_owner = N'dbo', @source_object = N'SC070500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC070500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC070500]', @del_cmd = N'CALL [sp_MSdel_dboSC070500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC070500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC070600', @source_owner = N'dbo', @source_object = N'SC070600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC070600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC070600]', @del_cmd = N'CALL [sp_MSdel_dboSC070600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC070600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC070700', @source_owner = N'dbo', @source_object = N'SC070700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC070700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC070700]', @del_cmd = N'CALL [sp_MSdel_dboSC070700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC070700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC070800', @source_owner = N'dbo', @source_object = N'SC070800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC070800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC070800]', @del_cmd = N'CALL [sp_MSdel_dboSC070800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC070800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC070900', @source_owner = N'dbo', @source_object = N'SC070900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC070900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC070900]', @del_cmd = N'CALL [sp_MSdel_dboSC070900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC070900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071000', @source_owner = N'dbo', @source_object = N'SC071000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071000]', @del_cmd = N'CALL [sp_MSdel_dboSC071000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071100', @source_owner = N'dbo', @source_object = N'SC071100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071100]', @del_cmd = N'CALL [sp_MSdel_dboSC071100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071200', @source_owner = N'dbo', @source_object = N'SC071200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071200]', @del_cmd = N'CALL [sp_MSdel_dboSC071200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071300', @source_owner = N'dbo', @source_object = N'SC071300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071300]', @del_cmd = N'CALL [sp_MSdel_dboSC071300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071400', @source_owner = N'dbo', @source_object = N'SC071400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071400]', @del_cmd = N'CALL [sp_MSdel_dboSC071400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071600', @source_owner = N'dbo', @source_object = N'SC071600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071600]', @del_cmd = N'CALL [sp_MSdel_dboSC071600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071900', @source_owner = N'dbo', @source_object = N'SC071900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071900]', @del_cmd = N'CALL [sp_MSdel_dboSC071900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071L00', @source_owner = N'dbo', @source_object = N'SC071L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071L00]', @del_cmd = N'CALL [sp_MSdel_dboSC071L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071M00', @source_owner = N'dbo', @source_object = N'SC071M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071M00]', @del_cmd = N'CALL [sp_MSdel_dboSC071M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071N00', @source_owner = N'dbo', @source_object = N'SC071N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071N00]', @del_cmd = N'CALL [sp_MSdel_dboSC071N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC071P00', @source_owner = N'dbo', @source_object = N'SC071P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC071P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC071P00]', @del_cmd = N'CALL [sp_MSdel_dboSC071P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC071P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072000', @source_owner = N'dbo', @source_object = N'SC072000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072000]', @del_cmd = N'CALL [sp_MSdel_dboSC072000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072100', @source_owner = N'dbo', @source_object = N'SC072100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072100]', @del_cmd = N'CALL [sp_MSdel_dboSC072100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072200', @source_owner = N'dbo', @source_object = N'SC072200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072200]', @del_cmd = N'CALL [sp_MSdel_dboSC072200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072300', @source_owner = N'dbo', @source_object = N'SC072300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072300]', @del_cmd = N'CALL [sp_MSdel_dboSC072300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072400', @source_owner = N'dbo', @source_object = N'SC072400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072400]', @del_cmd = N'CALL [sp_MSdel_dboSC072400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072500', @source_owner = N'dbo', @source_object = N'SC072500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072500]', @del_cmd = N'CALL [sp_MSdel_dboSC072500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072600', @source_owner = N'dbo', @source_object = N'SC072600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072600]', @del_cmd = N'CALL [sp_MSdel_dboSC072600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072700', @source_owner = N'dbo', @source_object = N'SC072700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072700]', @del_cmd = N'CALL [sp_MSdel_dboSC072700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072800', @source_owner = N'dbo', @source_object = N'SC072800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072800]', @del_cmd = N'CALL [sp_MSdel_dboSC072800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072900', @source_owner = N'dbo', @source_object = N'SC072900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072900]', @del_cmd = N'CALL [sp_MSdel_dboSC072900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072L00', @source_owner = N'dbo', @source_object = N'SC072L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072L00]', @del_cmd = N'CALL [sp_MSdel_dboSC072L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072M00', @source_owner = N'dbo', @source_object = N'SC072M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072M00]', @del_cmd = N'CALL [sp_MSdel_dboSC072M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072N00', @source_owner = N'dbo', @source_object = N'SC072N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072N00]', @del_cmd = N'CALL [sp_MSdel_dboSC072N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC072P00', @source_owner = N'dbo', @source_object = N'SC072P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC072P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC072P00]', @del_cmd = N'CALL [sp_MSdel_dboSC072P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC072P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073000', @source_owner = N'dbo', @source_object = N'SC073000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073000]', @del_cmd = N'CALL [sp_MSdel_dboSC073000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073100', @source_owner = N'dbo', @source_object = N'SC073100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073100]', @del_cmd = N'CALL [sp_MSdel_dboSC073100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073500', @source_owner = N'dbo', @source_object = N'SC073500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073500]', @del_cmd = N'CALL [sp_MSdel_dboSC073500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073600', @source_owner = N'dbo', @source_object = N'SC073600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073600]', @del_cmd = N'CALL [sp_MSdel_dboSC073600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073900', @source_owner = N'dbo', @source_object = N'SC073900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073900]', @del_cmd = N'CALL [sp_MSdel_dboSC073900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073L00', @source_owner = N'dbo', @source_object = N'SC073L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073L00]', @del_cmd = N'CALL [sp_MSdel_dboSC073L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073M00', @source_owner = N'dbo', @source_object = N'SC073M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073M00]', @del_cmd = N'CALL [sp_MSdel_dboSC073M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073N00', @source_owner = N'dbo', @source_object = N'SC073N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073N00]', @del_cmd = N'CALL [sp_MSdel_dboSC073N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC073P00', @source_owner = N'dbo', @source_object = N'SC073P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC073P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC073P00]', @del_cmd = N'CALL [sp_MSdel_dboSC073P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC073P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074000', @source_owner = N'dbo', @source_object = N'SC074000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074000]', @del_cmd = N'CALL [sp_MSdel_dboSC074000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074100', @source_owner = N'dbo', @source_object = N'SC074100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074100]', @del_cmd = N'CALL [sp_MSdel_dboSC074100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074200', @source_owner = N'dbo', @source_object = N'SC074200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074200]', @del_cmd = N'CALL [sp_MSdel_dboSC074200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074300', @source_owner = N'dbo', @source_object = N'SC074300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074300]', @del_cmd = N'CALL [sp_MSdel_dboSC074300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074400', @source_owner = N'dbo', @source_object = N'SC074400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074400]', @del_cmd = N'CALL [sp_MSdel_dboSC074400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074500', @source_owner = N'dbo', @source_object = N'SC074500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074500]', @del_cmd = N'CALL [sp_MSdel_dboSC074500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074600', @source_owner = N'dbo', @source_object = N'SC074600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074600]', @del_cmd = N'CALL [sp_MSdel_dboSC074600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074700', @source_owner = N'dbo', @source_object = N'SC074700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074700]', @del_cmd = N'CALL [sp_MSdel_dboSC074700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074800', @source_owner = N'dbo', @source_object = N'SC074800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074800]', @del_cmd = N'CALL [sp_MSdel_dboSC074800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074900', @source_owner = N'dbo', @source_object = N'SC074900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074900]', @del_cmd = N'CALL [sp_MSdel_dboSC074900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074L00', @source_owner = N'dbo', @source_object = N'SC074L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074L00]', @del_cmd = N'CALL [sp_MSdel_dboSC074L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074M00', @source_owner = N'dbo', @source_object = N'SC074M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074M00]', @del_cmd = N'CALL [sp_MSdel_dboSC074M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074N00', @source_owner = N'dbo', @source_object = N'SC074N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074N00]', @del_cmd = N'CALL [sp_MSdel_dboSC074N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC074P00', @source_owner = N'dbo', @source_object = N'SC074P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC074P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC074P00]', @del_cmd = N'CALL [sp_MSdel_dboSC074P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC074P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075000', @source_owner = N'dbo', @source_object = N'SC075000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075000]', @del_cmd = N'CALL [sp_MSdel_dboSC075000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075100', @source_owner = N'dbo', @source_object = N'SC075100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075100]', @del_cmd = N'CALL [sp_MSdel_dboSC075100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075200', @source_owner = N'dbo', @source_object = N'SC075200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075200]', @del_cmd = N'CALL [sp_MSdel_dboSC075200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075300', @source_owner = N'dbo', @source_object = N'SC075300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075300]', @del_cmd = N'CALL [sp_MSdel_dboSC075300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075400', @source_owner = N'dbo', @source_object = N'SC075400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075400]', @del_cmd = N'CALL [sp_MSdel_dboSC075400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075600', @source_owner = N'dbo', @source_object = N'SC075600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075600]', @del_cmd = N'CALL [sp_MSdel_dboSC075600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075700', @source_owner = N'dbo', @source_object = N'SC075700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075700]', @del_cmd = N'CALL [sp_MSdel_dboSC075700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075800', @source_owner = N'dbo', @source_object = N'SC075800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075800]', @del_cmd = N'CALL [sp_MSdel_dboSC075800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075900', @source_owner = N'dbo', @source_object = N'SC075900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075900]', @del_cmd = N'CALL [sp_MSdel_dboSC075900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075L00', @source_owner = N'dbo', @source_object = N'SC075L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075L00]', @del_cmd = N'CALL [sp_MSdel_dboSC075L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075M00', @source_owner = N'dbo', @source_object = N'SC075M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075M00]', @del_cmd = N'CALL [sp_MSdel_dboSC075M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC075N00', @source_owner = N'dbo', @source_object = N'SC075N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC075N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC075N00]', @del_cmd = N'CALL [sp_MSdel_dboSC075N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC075N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076000', @source_owner = N'dbo', @source_object = N'SC076000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076000]', @del_cmd = N'CALL [sp_MSdel_dboSC076000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076100', @source_owner = N'dbo', @source_object = N'SC076100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076100]', @del_cmd = N'CALL [sp_MSdel_dboSC076100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076200', @source_owner = N'dbo', @source_object = N'SC076200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076200]', @del_cmd = N'CALL [sp_MSdel_dboSC076200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076300', @source_owner = N'dbo', @source_object = N'SC076300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076300]', @del_cmd = N'CALL [sp_MSdel_dboSC076300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076400', @source_owner = N'dbo', @source_object = N'SC076400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076400]', @del_cmd = N'CALL [sp_MSdel_dboSC076400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076500', @source_owner = N'dbo', @source_object = N'SC076500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076500]', @del_cmd = N'CALL [sp_MSdel_dboSC076500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076600', @source_owner = N'dbo', @source_object = N'SC076600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076600]', @del_cmd = N'CALL [sp_MSdel_dboSC076600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076700', @source_owner = N'dbo', @source_object = N'SC076700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076700]', @del_cmd = N'CALL [sp_MSdel_dboSC076700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076900', @source_owner = N'dbo', @source_object = N'SC076900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076900]', @del_cmd = N'CALL [sp_MSdel_dboSC076900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076L00', @source_owner = N'dbo', @source_object = N'SC076L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076L00]', @del_cmd = N'CALL [sp_MSdel_dboSC076L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076M00', @source_owner = N'dbo', @source_object = N'SC076M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076M00]', @del_cmd = N'CALL [sp_MSdel_dboSC076M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC076N00', @source_owner = N'dbo', @source_object = N'SC076N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC076N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC076N00]', @del_cmd = N'CALL [sp_MSdel_dboSC076N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC076N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077000', @source_owner = N'dbo', @source_object = N'SC077000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077000]', @del_cmd = N'CALL [sp_MSdel_dboSC077000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077100', @source_owner = N'dbo', @source_object = N'SC077100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077100]', @del_cmd = N'CALL [sp_MSdel_dboSC077100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077200', @source_owner = N'dbo', @source_object = N'SC077200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077200]', @del_cmd = N'CALL [sp_MSdel_dboSC077200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077300', @source_owner = N'dbo', @source_object = N'SC077300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077300]', @del_cmd = N'CALL [sp_MSdel_dboSC077300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077400', @source_owner = N'dbo', @source_object = N'SC077400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077400]', @del_cmd = N'CALL [sp_MSdel_dboSC077400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077500', @source_owner = N'dbo', @source_object = N'SC077500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077500]', @del_cmd = N'CALL [sp_MSdel_dboSC077500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077600', @source_owner = N'dbo', @source_object = N'SC077600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077600]', @del_cmd = N'CALL [sp_MSdel_dboSC077600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077700', @source_owner = N'dbo', @source_object = N'SC077700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077700]', @del_cmd = N'CALL [sp_MSdel_dboSC077700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077800', @source_owner = N'dbo', @source_object = N'SC077800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077800]', @del_cmd = N'CALL [sp_MSdel_dboSC077800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077L00', @source_owner = N'dbo', @source_object = N'SC077L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077L00]', @del_cmd = N'CALL [sp_MSdel_dboSC077L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077M00', @source_owner = N'dbo', @source_object = N'SC077M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077M00]', @del_cmd = N'CALL [sp_MSdel_dboSC077M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC077N00', @source_owner = N'dbo', @source_object = N'SC077N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC077N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC077N00]', @del_cmd = N'CALL [sp_MSdel_dboSC077N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC077N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078000', @source_owner = N'dbo', @source_object = N'SC078000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078000]', @del_cmd = N'CALL [sp_MSdel_dboSC078000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078100', @source_owner = N'dbo', @source_object = N'SC078100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078100]', @del_cmd = N'CALL [sp_MSdel_dboSC078100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078300', @source_owner = N'dbo', @source_object = N'SC078300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078300]', @del_cmd = N'CALL [sp_MSdel_dboSC078300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078400', @source_owner = N'dbo', @source_object = N'SC078400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078400]', @del_cmd = N'CALL [sp_MSdel_dboSC078400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078500', @source_owner = N'dbo', @source_object = N'SC078500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078500]', @del_cmd = N'CALL [sp_MSdel_dboSC078500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078600', @source_owner = N'dbo', @source_object = N'SC078600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078600]', @del_cmd = N'CALL [sp_MSdel_dboSC078600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078800', @source_owner = N'dbo', @source_object = N'SC078800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078800]', @del_cmd = N'CALL [sp_MSdel_dboSC078800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078900', @source_owner = N'dbo', @source_object = N'SC078900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078900]', @del_cmd = N'CALL [sp_MSdel_dboSC078900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078L00', @source_owner = N'dbo', @source_object = N'SC078L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078L00]', @del_cmd = N'CALL [sp_MSdel_dboSC078L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078M00', @source_owner = N'dbo', @source_object = N'SC078M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078M00]', @del_cmd = N'CALL [sp_MSdel_dboSC078M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC078N00', @source_owner = N'dbo', @source_object = N'SC078N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC078N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC078N00]', @del_cmd = N'CALL [sp_MSdel_dboSC078N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC078N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079000', @source_owner = N'dbo', @source_object = N'SC079000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079000]', @del_cmd = N'CALL [sp_MSdel_dboSC079000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079100', @source_owner = N'dbo', @source_object = N'SC079100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079100]', @del_cmd = N'CALL [sp_MSdel_dboSC079100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079200', @source_owner = N'dbo', @source_object = N'SC079200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079200]', @del_cmd = N'CALL [sp_MSdel_dboSC079200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079300', @source_owner = N'dbo', @source_object = N'SC079300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079300]', @del_cmd = N'CALL [sp_MSdel_dboSC079300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079400', @source_owner = N'dbo', @source_object = N'SC079400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079400]', @del_cmd = N'CALL [sp_MSdel_dboSC079400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079500', @source_owner = N'dbo', @source_object = N'SC079500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079500]', @del_cmd = N'CALL [sp_MSdel_dboSC079500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079600', @source_owner = N'dbo', @source_object = N'SC079600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079600]', @del_cmd = N'CALL [sp_MSdel_dboSC079600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079700', @source_owner = N'dbo', @source_object = N'SC079700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079700]', @del_cmd = N'CALL [sp_MSdel_dboSC079700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079900', @source_owner = N'dbo', @source_object = N'SC079900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079900]', @del_cmd = N'CALL [sp_MSdel_dboSC079900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079L00', @source_owner = N'dbo', @source_object = N'SC079L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079L00]', @del_cmd = N'CALL [sp_MSdel_dboSC079L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079M00', @source_owner = N'dbo', @source_object = N'SC079M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079M00]', @del_cmd = N'CALL [sp_MSdel_dboSC079M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC079N00', @source_owner = N'dbo', @source_object = N'SC079N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC079N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC079N00]', @del_cmd = N'CALL [sp_MSdel_dboSC079N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC079N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V100', @source_owner = N'dbo', @source_object = N'SC07V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V100]', @del_cmd = N'CALL [sp_MSdel_dboSC07V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V200', @source_owner = N'dbo', @source_object = N'SC07V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V200]', @del_cmd = N'CALL [sp_MSdel_dboSC07V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V300', @source_owner = N'dbo', @source_object = N'SC07V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V300]', @del_cmd = N'CALL [sp_MSdel_dboSC07V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V400', @source_owner = N'dbo', @source_object = N'SC07V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V400]', @del_cmd = N'CALL [sp_MSdel_dboSC07V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V700', @source_owner = N'dbo', @source_object = N'SC07V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V700]', @del_cmd = N'CALL [sp_MSdel_dboSC07V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V800', @source_owner = N'dbo', @source_object = N'SC07V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V800]', @del_cmd = N'CALL [sp_MSdel_dboSC07V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC07', @article = N'SC07V900', @source_owner = N'dbo', @source_object = N'SC07V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC07V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC07V900]', @del_cmd = N'CALL [sp_MSdel_dboSC07V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC07V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSC07', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSC07', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

