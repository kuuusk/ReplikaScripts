-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSca', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSca', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSca', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSca', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSca', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSca', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSca', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSca', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSca', @article = N'SCA_TAB_COLUMNS', @source_owner = N'dbo', @source_object = N'SCA_TAB_COLUMNS', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SCA_TAB_COLUMNS', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSCA_TAB_COLUMNS]', @del_cmd = N'CALL [sp_MSdel_dboSCA_TAB_COLUMNS]', @upd_cmd = N'SCALL [sp_MSupd_dboSCA_TAB_COLUMNS]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSca', @article = N'ScaCompanies', @source_owner = N'dbo', @source_object = N'ScaCompanies', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'ScaCompanies', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboScaCompanies]', @del_cmd = N'CALL [sp_MSdel_dboScaCompanies]', @upd_cmd = N'SCALL [sp_MSupd_dboScaCompanies]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSca', @article = N'ScaCompanyProperty', @source_owner = N'dbo', @source_object = N'ScaCompanyProperty', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'ScaCompanyProperty', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboScaCompanyProperty]', @del_cmd = N'CALL [sp_MSdel_dboScaCompanyProperty]', @upd_cmd = N'SCALL [sp_MSupd_dboScaCompanyProperty]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSca', @article = N'ScaCompanyYear', @source_owner = N'dbo', @source_object = N'ScaCompanyYear', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'ScaCompanyYear', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboScaCompanyYear]', @del_cmd = N'CALL [sp_MSdel_dboScaCompanyYear]', @upd_cmd = N'SCALL [sp_MSupd_dboScaCompanyYear]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSca', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSca', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

