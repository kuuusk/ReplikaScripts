-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaPL03', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaPL03', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaPL03', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL03', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL03', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL03', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL03', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPL03', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V500', @source_owner = N'dbo', @source_object = N'PL03V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V500]', @del_cmd = N'CALL [sp_MSdel_dboPL03V500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039P00', @source_owner = N'dbo', @source_object = N'PL039P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039P00]', @del_cmd = N'CALL [sp_MSdel_dboPL039P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035P00', @source_owner = N'dbo', @source_object = N'PL035P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035P00]', @del_cmd = N'CALL [sp_MSdel_dboPL035P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036P00', @source_owner = N'dbo', @source_object = N'PL036P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036P00]', @del_cmd = N'CALL [sp_MSdel_dboPL036P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037P00', @source_owner = N'dbo', @source_object = N'PL037P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037P00]', @del_cmd = N'CALL [sp_MSdel_dboPL037P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038P00', @source_owner = N'dbo', @source_object = N'PL038P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038P00]', @del_cmd = N'CALL [sp_MSdel_dboPL038P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL030100', @source_owner = N'dbo', @source_object = N'PL030100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL030100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL030100]', @del_cmd = N'CALL [sp_MSdel_dboPL030100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL030100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032P00', @source_owner = N'dbo', @source_object = N'PL032P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032P00]', @del_cmd = N'CALL [sp_MSdel_dboPL032P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL030200', @source_owner = N'dbo', @source_object = N'PL030200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL030200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL030200]', @del_cmd = N'CALL [sp_MSdel_dboPL030200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL030200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL030500', @source_owner = N'dbo', @source_object = N'PL030500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL030500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL030500]', @del_cmd = N'CALL [sp_MSdel_dboPL030500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL030500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL030600', @source_owner = N'dbo', @source_object = N'PL030600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL030600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL030600]', @del_cmd = N'CALL [sp_MSdel_dboPL030600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL030600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL030700', @source_owner = N'dbo', @source_object = N'PL030700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL030700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL030700]', @del_cmd = N'CALL [sp_MSdel_dboPL030700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL030700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL030800', @source_owner = N'dbo', @source_object = N'PL030800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL030800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL030800]', @del_cmd = N'CALL [sp_MSdel_dboPL030800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL030800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL030900', @source_owner = N'dbo', @source_object = N'PL030900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL030900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL030900]', @del_cmd = N'CALL [sp_MSdel_dboPL030900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL030900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031000', @source_owner = N'dbo', @source_object = N'PL031000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031000]', @del_cmd = N'CALL [sp_MSdel_dboPL031000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031100', @source_owner = N'dbo', @source_object = N'PL031100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031100]', @del_cmd = N'CALL [sp_MSdel_dboPL031100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031200', @source_owner = N'dbo', @source_object = N'PL031200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031200]', @del_cmd = N'CALL [sp_MSdel_dboPL031200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031300', @source_owner = N'dbo', @source_object = N'PL031300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031300]', @del_cmd = N'CALL [sp_MSdel_dboPL031300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031400', @source_owner = N'dbo', @source_object = N'PL031400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031400]', @del_cmd = N'CALL [sp_MSdel_dboPL031400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031600', @source_owner = N'dbo', @source_object = N'PL031600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031600]', @del_cmd = N'CALL [sp_MSdel_dboPL031600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031900', @source_owner = N'dbo', @source_object = N'PL031900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031900]', @del_cmd = N'CALL [sp_MSdel_dboPL031900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031L00', @source_owner = N'dbo', @source_object = N'PL031L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031L00]', @del_cmd = N'CALL [sp_MSdel_dboPL031L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031M00', @source_owner = N'dbo', @source_object = N'PL031M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031M00]', @del_cmd = N'CALL [sp_MSdel_dboPL031M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031N00', @source_owner = N'dbo', @source_object = N'PL031N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031N00]', @del_cmd = N'CALL [sp_MSdel_dboPL031N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL031P00', @source_owner = N'dbo', @source_object = N'PL031P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL031P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL031P00]', @del_cmd = N'CALL [sp_MSdel_dboPL031P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL031P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032000', @source_owner = N'dbo', @source_object = N'PL032000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032000]', @del_cmd = N'CALL [sp_MSdel_dboPL032000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032100', @source_owner = N'dbo', @source_object = N'PL032100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032100]', @del_cmd = N'CALL [sp_MSdel_dboPL032100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032200', @source_owner = N'dbo', @source_object = N'PL032200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032200]', @del_cmd = N'CALL [sp_MSdel_dboPL032200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032300', @source_owner = N'dbo', @source_object = N'PL032300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032300]', @del_cmd = N'CALL [sp_MSdel_dboPL032300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032400', @source_owner = N'dbo', @source_object = N'PL032400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032400]', @del_cmd = N'CALL [sp_MSdel_dboPL032400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032500', @source_owner = N'dbo', @source_object = N'PL032500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032500]', @del_cmd = N'CALL [sp_MSdel_dboPL032500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032600', @source_owner = N'dbo', @source_object = N'PL032600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032600]', @del_cmd = N'CALL [sp_MSdel_dboPL032600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032700', @source_owner = N'dbo', @source_object = N'PL032700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032700]', @del_cmd = N'CALL [sp_MSdel_dboPL032700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032800', @source_owner = N'dbo', @source_object = N'PL032800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032800]', @del_cmd = N'CALL [sp_MSdel_dboPL032800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032900', @source_owner = N'dbo', @source_object = N'PL032900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032900]', @del_cmd = N'CALL [sp_MSdel_dboPL032900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032L00', @source_owner = N'dbo', @source_object = N'PL032L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032L00]', @del_cmd = N'CALL [sp_MSdel_dboPL032L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032M00', @source_owner = N'dbo', @source_object = N'PL032M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032M00]', @del_cmd = N'CALL [sp_MSdel_dboPL032M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL032N00', @source_owner = N'dbo', @source_object = N'PL032N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL032N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL032N00]', @del_cmd = N'CALL [sp_MSdel_dboPL032N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL032N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033000', @source_owner = N'dbo', @source_object = N'PL033000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033000]', @del_cmd = N'CALL [sp_MSdel_dboPL033000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033100', @source_owner = N'dbo', @source_object = N'PL033100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033100]', @del_cmd = N'CALL [sp_MSdel_dboPL033100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033500', @source_owner = N'dbo', @source_object = N'PL033500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033500]', @del_cmd = N'CALL [sp_MSdel_dboPL033500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033600', @source_owner = N'dbo', @source_object = N'PL033600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033600]', @del_cmd = N'CALL [sp_MSdel_dboPL033600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033900', @source_owner = N'dbo', @source_object = N'PL033900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033900]', @del_cmd = N'CALL [sp_MSdel_dboPL033900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033L00', @source_owner = N'dbo', @source_object = N'PL033L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033L00]', @del_cmd = N'CALL [sp_MSdel_dboPL033L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033M00', @source_owner = N'dbo', @source_object = N'PL033M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033M00]', @del_cmd = N'CALL [sp_MSdel_dboPL033M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033N00', @source_owner = N'dbo', @source_object = N'PL033N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033N00]', @del_cmd = N'CALL [sp_MSdel_dboPL033N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL033P00', @source_owner = N'dbo', @source_object = N'PL033P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL033P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL033P00]', @del_cmd = N'CALL [sp_MSdel_dboPL033P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL033P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034000', @source_owner = N'dbo', @source_object = N'PL034000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034000]', @del_cmd = N'CALL [sp_MSdel_dboPL034000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034100', @source_owner = N'dbo', @source_object = N'PL034100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034100]', @del_cmd = N'CALL [sp_MSdel_dboPL034100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034200', @source_owner = N'dbo', @source_object = N'PL034200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034200]', @del_cmd = N'CALL [sp_MSdel_dboPL034200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034300', @source_owner = N'dbo', @source_object = N'PL034300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034300]', @del_cmd = N'CALL [sp_MSdel_dboPL034300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034400', @source_owner = N'dbo', @source_object = N'PL034400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034400]', @del_cmd = N'CALL [sp_MSdel_dboPL034400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034500', @source_owner = N'dbo', @source_object = N'PL034500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034500]', @del_cmd = N'CALL [sp_MSdel_dboPL034500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034600', @source_owner = N'dbo', @source_object = N'PL034600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034600]', @del_cmd = N'CALL [sp_MSdel_dboPL034600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034700', @source_owner = N'dbo', @source_object = N'PL034700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034700]', @del_cmd = N'CALL [sp_MSdel_dboPL034700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034800', @source_owner = N'dbo', @source_object = N'PL034800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034800]', @del_cmd = N'CALL [sp_MSdel_dboPL034800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034900', @source_owner = N'dbo', @source_object = N'PL034900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034900]', @del_cmd = N'CALL [sp_MSdel_dboPL034900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034L00', @source_owner = N'dbo', @source_object = N'PL034L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034L00]', @del_cmd = N'CALL [sp_MSdel_dboPL034L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034M00', @source_owner = N'dbo', @source_object = N'PL034M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034M00]', @del_cmd = N'CALL [sp_MSdel_dboPL034M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034N00', @source_owner = N'dbo', @source_object = N'PL034N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034N00]', @del_cmd = N'CALL [sp_MSdel_dboPL034N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL034P00', @source_owner = N'dbo', @source_object = N'PL034P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL034P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL034P00]', @del_cmd = N'CALL [sp_MSdel_dboPL034P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL034P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035000', @source_owner = N'dbo', @source_object = N'PL035000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035000]', @del_cmd = N'CALL [sp_MSdel_dboPL035000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035100', @source_owner = N'dbo', @source_object = N'PL035100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035100]', @del_cmd = N'CALL [sp_MSdel_dboPL035100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035200', @source_owner = N'dbo', @source_object = N'PL035200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035200]', @del_cmd = N'CALL [sp_MSdel_dboPL035200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035300', @source_owner = N'dbo', @source_object = N'PL035300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035300]', @del_cmd = N'CALL [sp_MSdel_dboPL035300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035400', @source_owner = N'dbo', @source_object = N'PL035400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035400]', @del_cmd = N'CALL [sp_MSdel_dboPL035400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035600', @source_owner = N'dbo', @source_object = N'PL035600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035600]', @del_cmd = N'CALL [sp_MSdel_dboPL035600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035700', @source_owner = N'dbo', @source_object = N'PL035700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035700]', @del_cmd = N'CALL [sp_MSdel_dboPL035700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035800', @source_owner = N'dbo', @source_object = N'PL035800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035800]', @del_cmd = N'CALL [sp_MSdel_dboPL035800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035900', @source_owner = N'dbo', @source_object = N'PL035900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035900]', @del_cmd = N'CALL [sp_MSdel_dboPL035900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035L00', @source_owner = N'dbo', @source_object = N'PL035L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035L00]', @del_cmd = N'CALL [sp_MSdel_dboPL035L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035M00', @source_owner = N'dbo', @source_object = N'PL035M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035M00]', @del_cmd = N'CALL [sp_MSdel_dboPL035M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL035N00', @source_owner = N'dbo', @source_object = N'PL035N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL035N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL035N00]', @del_cmd = N'CALL [sp_MSdel_dboPL035N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL035N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036000', @source_owner = N'dbo', @source_object = N'PL036000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036000]', @del_cmd = N'CALL [sp_MSdel_dboPL036000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036100', @source_owner = N'dbo', @source_object = N'PL036100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036100]', @del_cmd = N'CALL [sp_MSdel_dboPL036100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036200', @source_owner = N'dbo', @source_object = N'PL036200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036200]', @del_cmd = N'CALL [sp_MSdel_dboPL036200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036300', @source_owner = N'dbo', @source_object = N'PL036300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036300]', @del_cmd = N'CALL [sp_MSdel_dboPL036300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036400', @source_owner = N'dbo', @source_object = N'PL036400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036400]', @del_cmd = N'CALL [sp_MSdel_dboPL036400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036500', @source_owner = N'dbo', @source_object = N'PL036500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036500]', @del_cmd = N'CALL [sp_MSdel_dboPL036500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036600', @source_owner = N'dbo', @source_object = N'PL036600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036600]', @del_cmd = N'CALL [sp_MSdel_dboPL036600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036700', @source_owner = N'dbo', @source_object = N'PL036700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036700]', @del_cmd = N'CALL [sp_MSdel_dboPL036700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036900', @source_owner = N'dbo', @source_object = N'PL036900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036900]', @del_cmd = N'CALL [sp_MSdel_dboPL036900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036L00', @source_owner = N'dbo', @source_object = N'PL036L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036L00]', @del_cmd = N'CALL [sp_MSdel_dboPL036L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036M00', @source_owner = N'dbo', @source_object = N'PL036M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036M00]', @del_cmd = N'CALL [sp_MSdel_dboPL036M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL036N00', @source_owner = N'dbo', @source_object = N'PL036N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL036N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL036N00]', @del_cmd = N'CALL [sp_MSdel_dboPL036N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL036N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037000', @source_owner = N'dbo', @source_object = N'PL037000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037000]', @del_cmd = N'CALL [sp_MSdel_dboPL037000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037100', @source_owner = N'dbo', @source_object = N'PL037100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037100]', @del_cmd = N'CALL [sp_MSdel_dboPL037100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037200', @source_owner = N'dbo', @source_object = N'PL037200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037200]', @del_cmd = N'CALL [sp_MSdel_dboPL037200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037300', @source_owner = N'dbo', @source_object = N'PL037300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037300]', @del_cmd = N'CALL [sp_MSdel_dboPL037300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037400', @source_owner = N'dbo', @source_object = N'PL037400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037400]', @del_cmd = N'CALL [sp_MSdel_dboPL037400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037500', @source_owner = N'dbo', @source_object = N'PL037500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037500]', @del_cmd = N'CALL [sp_MSdel_dboPL037500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037600', @source_owner = N'dbo', @source_object = N'PL037600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037600]', @del_cmd = N'CALL [sp_MSdel_dboPL037600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037700', @source_owner = N'dbo', @source_object = N'PL037700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037700]', @del_cmd = N'CALL [sp_MSdel_dboPL037700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037800', @source_owner = N'dbo', @source_object = N'PL037800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037800]', @del_cmd = N'CALL [sp_MSdel_dboPL037800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037L00', @source_owner = N'dbo', @source_object = N'PL037L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037L00]', @del_cmd = N'CALL [sp_MSdel_dboPL037L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037M00', @source_owner = N'dbo', @source_object = N'PL037M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037M00]', @del_cmd = N'CALL [sp_MSdel_dboPL037M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL037N00', @source_owner = N'dbo', @source_object = N'PL037N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL037N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL037N00]', @del_cmd = N'CALL [sp_MSdel_dboPL037N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL037N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038000', @source_owner = N'dbo', @source_object = N'PL038000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038000]', @del_cmd = N'CALL [sp_MSdel_dboPL038000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038100', @source_owner = N'dbo', @source_object = N'PL038100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038100]', @del_cmd = N'CALL [sp_MSdel_dboPL038100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038300', @source_owner = N'dbo', @source_object = N'PL038300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038300]', @del_cmd = N'CALL [sp_MSdel_dboPL038300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038400', @source_owner = N'dbo', @source_object = N'PL038400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038400]', @del_cmd = N'CALL [sp_MSdel_dboPL038400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038500', @source_owner = N'dbo', @source_object = N'PL038500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038500]', @del_cmd = N'CALL [sp_MSdel_dboPL038500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038800', @source_owner = N'dbo', @source_object = N'PL038800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038800]', @del_cmd = N'CALL [sp_MSdel_dboPL038800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038900', @source_owner = N'dbo', @source_object = N'PL038900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038900]', @del_cmd = N'CALL [sp_MSdel_dboPL038900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038L00', @source_owner = N'dbo', @source_object = N'PL038L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038L00]', @del_cmd = N'CALL [sp_MSdel_dboPL038L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038M00', @source_owner = N'dbo', @source_object = N'PL038M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038M00]', @del_cmd = N'CALL [sp_MSdel_dboPL038M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL038N00', @source_owner = N'dbo', @source_object = N'PL038N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL038N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL038N00]', @del_cmd = N'CALL [sp_MSdel_dboPL038N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL038N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039000', @source_owner = N'dbo', @source_object = N'PL039000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039000]', @del_cmd = N'CALL [sp_MSdel_dboPL039000]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039100', @source_owner = N'dbo', @source_object = N'PL039100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039100]', @del_cmd = N'CALL [sp_MSdel_dboPL039100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039200', @source_owner = N'dbo', @source_object = N'PL039200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039200]', @del_cmd = N'CALL [sp_MSdel_dboPL039200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039300', @source_owner = N'dbo', @source_object = N'PL039300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039300]', @del_cmd = N'CALL [sp_MSdel_dboPL039300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039400', @source_owner = N'dbo', @source_object = N'PL039400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039400]', @del_cmd = N'CALL [sp_MSdel_dboPL039400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039500', @source_owner = N'dbo', @source_object = N'PL039500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039500]', @del_cmd = N'CALL [sp_MSdel_dboPL039500]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039600', @source_owner = N'dbo', @source_object = N'PL039600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039600]', @del_cmd = N'CALL [sp_MSdel_dboPL039600]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039700', @source_owner = N'dbo', @source_object = N'PL039700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039700]', @del_cmd = N'CALL [sp_MSdel_dboPL039700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039900', @source_owner = N'dbo', @source_object = N'PL039900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039900]', @del_cmd = N'CALL [sp_MSdel_dboPL039900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039L00', @source_owner = N'dbo', @source_object = N'PL039L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039L00]', @del_cmd = N'CALL [sp_MSdel_dboPL039L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL039M00', @source_owner = N'dbo', @source_object = N'PL039M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039M00]', @del_cmd = N'CALL [sp_MSdel_dboPL039M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article =N'PL039N00', @source_owner = N'dbo', @source_object = N'PL039N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL039N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL039N00]', @del_cmd = N'CALL [sp_MSdel_dboPL039N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPL039N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V100', @source_owner = N'dbo', @source_object = N'PL03V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V100]', @del_cmd = N'CALL [sp_MSdel_dboPL03V100]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V200', @source_owner = N'dbo', @source_object = N'PL03V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V200]', @del_cmd = N'CALL [sp_MSdel_dboPL03V200]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V300', @source_owner = N'dbo', @source_object = N'PL03V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V300]', @del_cmd = N'CALL [sp_MSdel_dboPL03V300]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V400', @source_owner = N'dbo', @source_object = N'PL03V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V400]', @del_cmd = N'CALL [sp_MSdel_dboPL03V400]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V700', @source_owner = N'dbo', @source_object = N'PL03V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V700]', @del_cmd = N'CALL [sp_MSdel_dboPL03V700]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V800', @source_owner = N'dbo', @source_object = N'PL03V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V800]', @del_cmd = N'CALL [sp_MSdel_dboPL03V800]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPL03', @article = N'PL03V900', @source_owner = N'dbo', @source_object = N'PL03V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PL03V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPL03V900]', @del_cmd = N'CALL [sp_MSdel_dboPL03V900]', @upd_cmd = N'SCALL [sp_MSupd_dboPL03V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaPL03', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaPL03', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

