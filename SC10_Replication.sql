-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSC10', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'native', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSC10', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSC10', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC10', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC10', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC10', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC10', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC10', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V500', @source_owner = N'dbo', @source_object = N'SC10V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V500]', @del_cmd = N'CALL [sp_MSdel_dboSC10V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109P00', @source_owner = N'dbo', @source_object = N'SC109P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109P00]', @del_cmd = N'CALL [sp_MSdel_dboSC109P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105P00', @source_owner = N'dbo', @source_object = N'SC105P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105P00]', @del_cmd = N'CALL [sp_MSdel_dboSC105P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106P00', @source_owner = N'dbo', @source_object = N'SC106P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106P00]', @del_cmd = N'CALL [sp_MSdel_dboSC106P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107P00', @source_owner = N'dbo', @source_object = N'SC107P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107P00]', @del_cmd = N'CALL [sp_MSdel_dboSC107P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108P00', @source_owner = N'dbo', @source_object = N'SC108P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108P00]', @del_cmd = N'CALL [sp_MSdel_dboSC108P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC100100', @source_owner = N'dbo', @source_object = N'SC100100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC100100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC100100]', @del_cmd = N'CALL [sp_MSdel_dboSC100100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC100100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102P00', @source_owner = N'dbo', @source_object = N'SC102P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102P00]', @del_cmd = N'CALL [sp_MSdel_dboSC102P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC100200', @source_owner = N'dbo', @source_object = N'SC100200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC100200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC100200]', @del_cmd = N'CALL [sp_MSdel_dboSC100200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC100200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC100500', @source_owner = N'dbo', @source_object = N'SC100500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC100500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC100500]', @del_cmd = N'CALL [sp_MSdel_dboSC100500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC100500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC100600', @source_owner = N'dbo', @source_object = N'SC100600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC100600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC100600]', @del_cmd = N'CALL [sp_MSdel_dboSC100600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC100600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC100700', @source_owner = N'dbo', @source_object = N'SC100700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC100700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC100700]', @del_cmd = N'CALL [sp_MSdel_dboSC100700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC100700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC100800', @source_owner = N'dbo', @source_object = N'SC100800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC100800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC100800]', @del_cmd = N'CALL [sp_MSdel_dboSC100800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC100800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC100900', @source_owner = N'dbo', @source_object = N'SC100900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC100900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC100900]', @del_cmd = N'CALL [sp_MSdel_dboSC100900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC100900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101000', @source_owner = N'dbo', @source_object = N'SC101000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101000]', @del_cmd = N'CALL [sp_MSdel_dboSC101000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101100', @source_owner = N'dbo', @source_object = N'SC101100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101100]', @del_cmd = N'CALL [sp_MSdel_dboSC101100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101200', @source_owner = N'dbo', @source_object = N'SC101200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101200]', @del_cmd = N'CALL [sp_MSdel_dboSC101200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101300', @source_owner = N'dbo', @source_object = N'SC101300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101300]', @del_cmd = N'CALL [sp_MSdel_dboSC101300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101400', @source_owner = N'dbo', @source_object = N'SC101400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101400]', @del_cmd = N'CALL [sp_MSdel_dboSC101400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101600', @source_owner = N'dbo', @source_object = N'SC101600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101600]', @del_cmd = N'CALL [sp_MSdel_dboSC101600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101900', @source_owner = N'dbo', @source_object = N'SC101900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101900]', @del_cmd = N'CALL [sp_MSdel_dboSC101900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101L00', @source_owner = N'dbo', @source_object = N'SC101L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101L00]', @del_cmd = N'CALL [sp_MSdel_dboSC101L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101M00', @source_owner = N'dbo', @source_object = N'SC101M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101M00]', @del_cmd = N'CALL [sp_MSdel_dboSC101M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101N00', @source_owner = N'dbo', @source_object = N'SC101N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101N00]', @del_cmd = N'CALL [sp_MSdel_dboSC101N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC101P00', @source_owner = N'dbo', @source_object = N'SC101P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC101P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC101P00]', @del_cmd = N'CALL [sp_MSdel_dboSC101P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC101P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102000', @source_owner = N'dbo', @source_object = N'SC102000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102000]', @del_cmd = N'CALL [sp_MSdel_dboSC102000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102100', @source_owner = N'dbo', @source_object = N'SC102100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102100]', @del_cmd = N'CALL [sp_MSdel_dboSC102100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102200', @source_owner = N'dbo', @source_object = N'SC102200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102200]', @del_cmd = N'CALL [sp_MSdel_dboSC102200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102300', @source_owner = N'dbo', @source_object = N'SC102300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102300]', @del_cmd = N'CALL [sp_MSdel_dboSC102300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102400', @source_owner = N'dbo', @source_object = N'SC102400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102400]', @del_cmd = N'CALL [sp_MSdel_dboSC102400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102500', @source_owner = N'dbo', @source_object = N'SC102500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102500]', @del_cmd = N'CALL [sp_MSdel_dboSC102500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102600', @source_owner = N'dbo', @source_object = N'SC102600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102600]', @del_cmd = N'CALL [sp_MSdel_dboSC102600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102700', @source_owner = N'dbo', @source_object = N'SC102700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102700]', @del_cmd = N'CALL [sp_MSdel_dboSC102700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102800', @source_owner = N'dbo', @source_object = N'SC102800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102800]', @del_cmd = N'CALL [sp_MSdel_dboSC102800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102900', @source_owner = N'dbo', @source_object = N'SC102900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102900]', @del_cmd = N'CALL [sp_MSdel_dboSC102900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102L00', @source_owner = N'dbo', @source_object = N'SC102L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102L00]', @del_cmd = N'CALL [sp_MSdel_dboSC102L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102M00', @source_owner = N'dbo', @source_object = N'SC102M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102M00]', @del_cmd = N'CALL [sp_MSdel_dboSC102M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC102N00', @source_owner = N'dbo', @source_object = N'SC102N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC102N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC102N00]', @del_cmd = N'CALL [sp_MSdel_dboSC102N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC102N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103000', @source_owner = N'dbo', @source_object = N'SC103000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103000]', @del_cmd = N'CALL [sp_MSdel_dboSC103000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103100', @source_owner = N'dbo', @source_object = N'SC103100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103100]', @del_cmd = N'CALL [sp_MSdel_dboSC103100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103500', @source_owner = N'dbo', @source_object = N'SC103500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103500]', @del_cmd = N'CALL [sp_MSdel_dboSC103500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103600', @source_owner = N'dbo', @source_object = N'SC103600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103600]', @del_cmd = N'CALL [sp_MSdel_dboSC103600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103900', @source_owner = N'dbo', @source_object = N'SC103900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103900]', @del_cmd = N'CALL [sp_MSdel_dboSC103900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103L00', @source_owner = N'dbo', @source_object = N'SC103L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103L00]', @del_cmd = N'CALL [sp_MSdel_dboSC103L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103M00', @source_owner = N'dbo', @source_object = N'SC103M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103M00]', @del_cmd = N'CALL [sp_MSdel_dboSC103M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103N00', @source_owner = N'dbo', @source_object = N'SC103N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103N00]', @del_cmd = N'CALL [sp_MSdel_dboSC103N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC103P00', @source_owner = N'dbo', @source_object = N'SC103P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC103P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC103P00]', @del_cmd = N'CALL [sp_MSdel_dboSC103P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC103P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104000', @source_owner = N'dbo', @source_object = N'SC104000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104000]', @del_cmd = N'CALL [sp_MSdel_dboSC104000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104100', @source_owner = N'dbo', @source_object = N'SC104100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104100]', @del_cmd = N'CALL [sp_MSdel_dboSC104100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104200', @source_owner = N'dbo', @source_object = N'SC104200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104200]', @del_cmd = N'CALL [sp_MSdel_dboSC104200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104300', @source_owner = N'dbo', @source_object = N'SC104300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104300]', @del_cmd = N'CALL [sp_MSdel_dboSC104300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104400', @source_owner = N'dbo', @source_object = N'SC104400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104400]', @del_cmd = N'CALL [sp_MSdel_dboSC104400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104500', @source_owner = N'dbo', @source_object = N'SC104500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104500]', @del_cmd = N'CALL [sp_MSdel_dboSC104500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104600', @source_owner = N'dbo', @source_object = N'SC104600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104600]', @del_cmd = N'CALL [sp_MSdel_dboSC104600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104700', @source_owner = N'dbo', @source_object = N'SC104700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104700]', @del_cmd = N'CALL [sp_MSdel_dboSC104700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104800', @source_owner = N'dbo', @source_object = N'SC104800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104800]', @del_cmd = N'CALL [sp_MSdel_dboSC104800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104900', @source_owner = N'dbo', @source_object = N'SC104900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104900]', @del_cmd = N'CALL [sp_MSdel_dboSC104900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104L00', @source_owner = N'dbo', @source_object = N'SC104L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104L00]', @del_cmd = N'CALL [sp_MSdel_dboSC104L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104M00', @source_owner = N'dbo', @source_object = N'SC104M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104M00]', @del_cmd = N'CALL [sp_MSdel_dboSC104M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104N00', @source_owner = N'dbo', @source_object = N'SC104N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104N00]', @del_cmd = N'CALL [sp_MSdel_dboSC104N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC104P00', @source_owner = N'dbo', @source_object = N'SC104P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC104P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC104P00]', @del_cmd = N'CALL [sp_MSdel_dboSC104P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC104P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105000', @source_owner = N'dbo', @source_object = N'SC105000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105000]', @del_cmd = N'CALL [sp_MSdel_dboSC105000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105100', @source_owner = N'dbo', @source_object = N'SC105100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105100]', @del_cmd = N'CALL [sp_MSdel_dboSC105100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105200', @source_owner = N'dbo', @source_object = N'SC105200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105200]', @del_cmd = N'CALL [sp_MSdel_dboSC105200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105300', @source_owner = N'dbo', @source_object = N'SC105300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105300]', @del_cmd = N'CALL [sp_MSdel_dboSC105300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105400', @source_owner = N'dbo', @source_object = N'SC105400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105400]', @del_cmd = N'CALL [sp_MSdel_dboSC105400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105600', @source_owner = N'dbo', @source_object = N'SC105600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105600]', @del_cmd = N'CALL [sp_MSdel_dboSC105600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105700', @source_owner = N'dbo', @source_object = N'SC105700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105700]', @del_cmd = N'CALL [sp_MSdel_dboSC105700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105800', @source_owner = N'dbo', @source_object = N'SC105800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105800]', @del_cmd = N'CALL [sp_MSdel_dboSC105800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105900', @source_owner = N'dbo', @source_object = N'SC105900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105900]', @del_cmd = N'CALL [sp_MSdel_dboSC105900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105L00', @source_owner = N'dbo', @source_object = N'SC105L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105L00]', @del_cmd = N'CALL [sp_MSdel_dboSC105L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105M00', @source_owner = N'dbo', @source_object = N'SC105M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105M00]', @del_cmd = N'CALL [sp_MSdel_dboSC105M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC105N00', @source_owner = N'dbo', @source_object = N'SC105N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC105N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC105N00]', @del_cmd = N'CALL [sp_MSdel_dboSC105N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC105N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106000', @source_owner = N'dbo', @source_object = N'SC106000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106000]', @del_cmd = N'CALL [sp_MSdel_dboSC106000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106100', @source_owner = N'dbo', @source_object = N'SC106100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106100]', @del_cmd = N'CALL [sp_MSdel_dboSC106100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106200', @source_owner = N'dbo', @source_object = N'SC106200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106200]', @del_cmd = N'CALL [sp_MSdel_dboSC106200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106300', @source_owner = N'dbo', @source_object = N'SC106300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106300]', @del_cmd = N'CALL [sp_MSdel_dboSC106300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106400', @source_owner = N'dbo', @source_object = N'SC106400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106400]', @del_cmd = N'CALL [sp_MSdel_dboSC106400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106500', @source_owner = N'dbo', @source_object = N'SC106500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106500]', @del_cmd = N'CALL [sp_MSdel_dboSC106500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106600', @source_owner = N'dbo', @source_object = N'SC106600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106600]', @del_cmd = N'CALL [sp_MSdel_dboSC106600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106700', @source_owner = N'dbo', @source_object = N'SC106700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106700]', @del_cmd = N'CALL [sp_MSdel_dboSC106700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106900', @source_owner = N'dbo', @source_object = N'SC106900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106900]', @del_cmd = N'CALL [sp_MSdel_dboSC106900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106L00', @source_owner = N'dbo', @source_object = N'SC106L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106L00]', @del_cmd = N'CALL [sp_MSdel_dboSC106L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106M00', @source_owner = N'dbo', @source_object = N'SC106M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106M00]', @del_cmd = N'CALL [sp_MSdel_dboSC106M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC106N00', @source_owner = N'dbo', @source_object = N'SC106N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC106N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC106N00]', @del_cmd = N'CALL [sp_MSdel_dboSC106N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC106N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107000', @source_owner = N'dbo', @source_object = N'SC107000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107000]', @del_cmd = N'CALL [sp_MSdel_dboSC107000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107100', @source_owner = N'dbo', @source_object = N'SC107100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107100]', @del_cmd = N'CALL [sp_MSdel_dboSC107100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107200', @source_owner = N'dbo', @source_object = N'SC107200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107200]', @del_cmd = N'CALL [sp_MSdel_dboSC107200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107300', @source_owner = N'dbo', @source_object = N'SC107300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107300]', @del_cmd = N'CALL [sp_MSdel_dboSC107300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107400', @source_owner = N'dbo', @source_object = N'SC107400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107400]', @del_cmd = N'CALL [sp_MSdel_dboSC107400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107500', @source_owner = N'dbo', @source_object = N'SC107500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107500]', @del_cmd = N'CALL [sp_MSdel_dboSC107500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107600', @source_owner = N'dbo', @source_object = N'SC107600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107600]', @del_cmd = N'CALL [sp_MSdel_dboSC107600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107700', @source_owner = N'dbo', @source_object = N'SC107700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107700]', @del_cmd = N'CALL [sp_MSdel_dboSC107700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107800', @source_owner = N'dbo', @source_object = N'SC107800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107800]', @del_cmd = N'CALL [sp_MSdel_dboSC107800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107L00', @source_owner = N'dbo', @source_object = N'SC107L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107L00]', @del_cmd = N'CALL [sp_MSdel_dboSC107L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107M00', @source_owner = N'dbo', @source_object = N'SC107M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107M00]', @del_cmd = N'CALL [sp_MSdel_dboSC107M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC107N00', @source_owner = N'dbo', @source_object = N'SC107N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC107N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC107N00]', @del_cmd = N'CALL [sp_MSdel_dboSC107N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC107N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108000', @source_owner = N'dbo', @source_object = N'SC108000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108000]', @del_cmd = N'CALL [sp_MSdel_dboSC108000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108100', @source_owner = N'dbo', @source_object = N'SC108100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108100]', @del_cmd = N'CALL [sp_MSdel_dboSC108100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108300', @source_owner = N'dbo', @source_object = N'SC108300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108300]', @del_cmd = N'CALL [sp_MSdel_dboSC108300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108400', @source_owner = N'dbo', @source_object = N'SC108400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108400]', @del_cmd = N'CALL [sp_MSdel_dboSC108400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108500', @source_owner = N'dbo', @source_object = N'SC108500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108500]', @del_cmd = N'CALL [sp_MSdel_dboSC108500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108800', @source_owner = N'dbo', @source_object = N'SC108800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108800]', @del_cmd = N'CALL [sp_MSdel_dboSC108800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108900', @source_owner = N'dbo', @source_object = N'SC108900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108900]', @del_cmd = N'CALL [sp_MSdel_dboSC108900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108L00', @source_owner = N'dbo', @source_object = N'SC108L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108L00]', @del_cmd = N'CALL [sp_MSdel_dboSC108L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108M00', @source_owner = N'dbo', @source_object = N'SC108M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108M00]', @del_cmd = N'CALL [sp_MSdel_dboSC108M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC108N00', @source_owner = N'dbo', @source_object = N'SC108N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC108N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC108N00]', @del_cmd = N'CALL [sp_MSdel_dboSC108N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC108N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109000', @source_owner = N'dbo', @source_object = N'SC109000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109000]', @del_cmd = N'CALL [sp_MSdel_dboSC109000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109100', @source_owner = N'dbo', @source_object = N'SC109100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109100]', @del_cmd = N'CALL [sp_MSdel_dboSC109100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109200', @source_owner = N'dbo', @source_object = N'SC109200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109200]', @del_cmd = N'CALL [sp_MSdel_dboSC109200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109300', @source_owner = N'dbo', @source_object = N'SC109300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109300]', @del_cmd = N'CALL [sp_MSdel_dboSC109300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109400', @source_owner = N'dbo', @source_object = N'SC109400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109400]', @del_cmd = N'CALL [sp_MSdel_dboSC109400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109500', @source_owner = N'dbo', @source_object = N'SC109500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109500]', @del_cmd = N'CALL [sp_MSdel_dboSC109500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109600', @source_owner = N'dbo', @source_object = N'SC109600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109600]', @del_cmd = N'CALL [sp_MSdel_dboSC109600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109700', @source_owner = N'dbo', @source_object = N'SC109700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109700]', @del_cmd = N'CALL [sp_MSdel_dboSC109700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109900', @source_owner = N'dbo', @source_object = N'SC109900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109900]', @del_cmd = N'CALL [sp_MSdel_dboSC109900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109L00', @source_owner = N'dbo', @source_object = N'SC109L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109L00]', @del_cmd = N'CALL [sp_MSdel_dboSC109L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC109M00', @source_owner = N'dbo', @source_object = N'SC109M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109M00]', @del_cmd = N'CALL [sp_MSdel_dboSC109M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article =N'SC109N00', @source_owner = N'dbo', @source_object = N'SC109N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC109N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC109N00]', @del_cmd = N'CALL [sp_MSdel_dboSC109N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC109N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V100', @source_owner = N'dbo', @source_object = N'SC10V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V100]', @del_cmd = N'CALL [sp_MSdel_dboSC10V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V200', @source_owner = N'dbo', @source_object = N'SC10V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V200]', @del_cmd = N'CALL [sp_MSdel_dboSC10V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V300', @source_owner = N'dbo', @source_object = N'SC10V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V300]', @del_cmd = N'CALL [sp_MSdel_dboSC10V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V400', @source_owner = N'dbo', @source_object = N'SC10V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V400]', @del_cmd = N'CALL [sp_MSdel_dboSC10V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V700', @source_owner = N'dbo', @source_object = N'SC10V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V700]', @del_cmd = N'CALL [sp_MSdel_dboSC10V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V800', @source_owner = N'dbo', @source_object = N'SC10V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V800]', @del_cmd = N'CALL [sp_MSdel_dboSC10V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC10', @article = N'SC10V900', @source_owner = N'dbo', @source_object = N'SC10V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC10V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC10V900]', @del_cmd = N'CALL [sp_MSdel_dboSC10V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC10V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSC10', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSC10', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

