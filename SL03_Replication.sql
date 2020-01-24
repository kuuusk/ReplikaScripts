-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSL03', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSL03', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSL03', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL03', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL03', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL03', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL03', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSL03', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V500', @source_owner = N'dbo', @source_object = N'SL03V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V500]', @del_cmd = N'CALL [sp_MSdel_dboSL03V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039P00', @source_owner = N'dbo', @source_object = N'SL039P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039P00]', @del_cmd = N'CALL [sp_MSdel_dboSL039P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035P00', @source_owner = N'dbo', @source_object = N'SL035P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035P00]', @del_cmd = N'CALL [sp_MSdel_dboSL035P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036P00', @source_owner = N'dbo', @source_object = N'SL036P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036P00]', @del_cmd = N'CALL [sp_MSdel_dboSL036P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037P00', @source_owner = N'dbo', @source_object = N'SL037P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037P00]', @del_cmd = N'CALL [sp_MSdel_dboSL037P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038P00', @source_owner = N'dbo', @source_object = N'SL038P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038P00]', @del_cmd = N'CALL [sp_MSdel_dboSL038P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL030100', @source_owner = N'dbo', @source_object = N'SL030100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL030100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL030100]', @del_cmd = N'CALL [sp_MSdel_dboSL030100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL030100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032P00', @source_owner = N'dbo', @source_object = N'SL032P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032P00]', @del_cmd = N'CALL [sp_MSdel_dboSL032P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL030200', @source_owner = N'dbo', @source_object = N'SL030200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL030200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL030200]', @del_cmd = N'CALL [sp_MSdel_dboSL030200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL030200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL030500', @source_owner = N'dbo', @source_object = N'SL030500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL030500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL030500]', @del_cmd = N'CALL [sp_MSdel_dboSL030500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL030500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL030600', @source_owner = N'dbo', @source_object = N'SL030600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL030600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL030600]', @del_cmd = N'CALL [sp_MSdel_dboSL030600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL030600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL030700', @source_owner = N'dbo', @source_object = N'SL030700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL030700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL030700]', @del_cmd = N'CALL [sp_MSdel_dboSL030700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL030700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL030800', @source_owner = N'dbo', @source_object = N'SL030800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL030800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL030800]', @del_cmd = N'CALL [sp_MSdel_dboSL030800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL030800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL030900', @source_owner = N'dbo', @source_object = N'SL030900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL030900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL030900]', @del_cmd = N'CALL [sp_MSdel_dboSL030900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL030900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031000', @source_owner = N'dbo', @source_object = N'SL031000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031000]', @del_cmd = N'CALL [sp_MSdel_dboSL031000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031100', @source_owner = N'dbo', @source_object = N'SL031100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031100]', @del_cmd = N'CALL [sp_MSdel_dboSL031100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031200', @source_owner = N'dbo', @source_object = N'SL031200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031200]', @del_cmd = N'CALL [sp_MSdel_dboSL031200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031300', @source_owner = N'dbo', @source_object = N'SL031300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031300]', @del_cmd = N'CALL [sp_MSdel_dboSL031300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031400', @source_owner = N'dbo', @source_object = N'SL031400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031400]', @del_cmd = N'CALL [sp_MSdel_dboSL031400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031600', @source_owner = N'dbo', @source_object = N'SL031600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031600]', @del_cmd = N'CALL [sp_MSdel_dboSL031600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031900', @source_owner = N'dbo', @source_object = N'SL031900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031900]', @del_cmd = N'CALL [sp_MSdel_dboSL031900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031L00', @source_owner = N'dbo', @source_object = N'SL031L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031L00]', @del_cmd = N'CALL [sp_MSdel_dboSL031L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031M00', @source_owner = N'dbo', @source_object = N'SL031M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031M00]', @del_cmd = N'CALL [sp_MSdel_dboSL031M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031N00', @source_owner = N'dbo', @source_object = N'SL031N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031N00]', @del_cmd = N'CALL [sp_MSdel_dboSL031N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL031P00', @source_owner = N'dbo', @source_object = N'SL031P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL031P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL031P00]', @del_cmd = N'CALL [sp_MSdel_dboSL031P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL031P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032000', @source_owner = N'dbo', @source_object = N'SL032000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032000]', @del_cmd = N'CALL [sp_MSdel_dboSL032000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032100', @source_owner = N'dbo', @source_object = N'SL032100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032100]', @del_cmd = N'CALL [sp_MSdel_dboSL032100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032200', @source_owner = N'dbo', @source_object = N'SL032200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032200]', @del_cmd = N'CALL [sp_MSdel_dboSL032200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032300', @source_owner = N'dbo', @source_object = N'SL032300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032300]', @del_cmd = N'CALL [sp_MSdel_dboSL032300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032400', @source_owner = N'dbo', @source_object = N'SL032400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032400]', @del_cmd = N'CALL [sp_MSdel_dboSL032400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032500', @source_owner = N'dbo', @source_object = N'SL032500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032500]', @del_cmd = N'CALL [sp_MSdel_dboSL032500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032600', @source_owner = N'dbo', @source_object = N'SL032600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032600]', @del_cmd = N'CALL [sp_MSdel_dboSL032600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032700', @source_owner = N'dbo', @source_object = N'SL032700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032700]', @del_cmd = N'CALL [sp_MSdel_dboSL032700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032800', @source_owner = N'dbo', @source_object = N'SL032800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032800]', @del_cmd = N'CALL [sp_MSdel_dboSL032800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032900', @source_owner = N'dbo', @source_object = N'SL032900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032900]', @del_cmd = N'CALL [sp_MSdel_dboSL032900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032L00', @source_owner = N'dbo', @source_object = N'SL032L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032L00]', @del_cmd = N'CALL [sp_MSdel_dboSL032L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032M00', @source_owner = N'dbo', @source_object = N'SL032M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032M00]', @del_cmd = N'CALL [sp_MSdel_dboSL032M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL032N00', @source_owner = N'dbo', @source_object = N'SL032N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL032N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL032N00]', @del_cmd = N'CALL [sp_MSdel_dboSL032N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL032N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033000', @source_owner = N'dbo', @source_object = N'SL033000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033000]', @del_cmd = N'CALL [sp_MSdel_dboSL033000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033100', @source_owner = N'dbo', @source_object = N'SL033100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033100]', @del_cmd = N'CALL [sp_MSdel_dboSL033100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033500', @source_owner = N'dbo', @source_object = N'SL033500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033500]', @del_cmd = N'CALL [sp_MSdel_dboSL033500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033600', @source_owner = N'dbo', @source_object = N'SL033600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033600]', @del_cmd = N'CALL [sp_MSdel_dboSL033600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033900', @source_owner = N'dbo', @source_object = N'SL033900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033900]', @del_cmd = N'CALL [sp_MSdel_dboSL033900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033L00', @source_owner = N'dbo', @source_object = N'SL033L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033L00]', @del_cmd = N'CALL [sp_MSdel_dboSL033L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033M00', @source_owner = N'dbo', @source_object = N'SL033M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033M00]', @del_cmd = N'CALL [sp_MSdel_dboSL033M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033N00', @source_owner = N'dbo', @source_object = N'SL033N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033N00]', @del_cmd = N'CALL [sp_MSdel_dboSL033N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL033P00', @source_owner = N'dbo', @source_object = N'SL033P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL033P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL033P00]', @del_cmd = N'CALL [sp_MSdel_dboSL033P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL033P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034000', @source_owner = N'dbo', @source_object = N'SL034000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034000]', @del_cmd = N'CALL [sp_MSdel_dboSL034000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034100', @source_owner = N'dbo', @source_object = N'SL034100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034100]', @del_cmd = N'CALL [sp_MSdel_dboSL034100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034200', @source_owner = N'dbo', @source_object = N'SL034200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034200]', @del_cmd = N'CALL [sp_MSdel_dboSL034200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034300', @source_owner = N'dbo', @source_object = N'SL034300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034300]', @del_cmd = N'CALL [sp_MSdel_dboSL034300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034400', @source_owner = N'dbo', @source_object = N'SL034400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034400]', @del_cmd = N'CALL [sp_MSdel_dboSL034400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034500', @source_owner = N'dbo', @source_object = N'SL034500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034500]', @del_cmd = N'CALL [sp_MSdel_dboSL034500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034600', @source_owner = N'dbo', @source_object = N'SL034600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034600]', @del_cmd = N'CALL [sp_MSdel_dboSL034600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034700', @source_owner = N'dbo', @source_object = N'SL034700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034700]', @del_cmd = N'CALL [sp_MSdel_dboSL034700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034800', @source_owner = N'dbo', @source_object = N'SL034800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034800]', @del_cmd = N'CALL [sp_MSdel_dboSL034800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034900', @source_owner = N'dbo', @source_object = N'SL034900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034900]', @del_cmd = N'CALL [sp_MSdel_dboSL034900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034L00', @source_owner = N'dbo', @source_object = N'SL034L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034L00]', @del_cmd = N'CALL [sp_MSdel_dboSL034L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034M00', @source_owner = N'dbo', @source_object = N'SL034M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034M00]', @del_cmd = N'CALL [sp_MSdel_dboSL034M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034N00', @source_owner = N'dbo', @source_object = N'SL034N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034N00]', @del_cmd = N'CALL [sp_MSdel_dboSL034N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL034P00', @source_owner = N'dbo', @source_object = N'SL034P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL034P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL034P00]', @del_cmd = N'CALL [sp_MSdel_dboSL034P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL034P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035000', @source_owner = N'dbo', @source_object = N'SL035000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035000]', @del_cmd = N'CALL [sp_MSdel_dboSL035000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035100', @source_owner = N'dbo', @source_object = N'SL035100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035100]', @del_cmd = N'CALL [sp_MSdel_dboSL035100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035200', @source_owner = N'dbo', @source_object = N'SL035200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035200]', @del_cmd = N'CALL [sp_MSdel_dboSL035200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035300', @source_owner = N'dbo', @source_object = N'SL035300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035300]', @del_cmd = N'CALL [sp_MSdel_dboSL035300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035400', @source_owner = N'dbo', @source_object = N'SL035400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035400]', @del_cmd = N'CALL [sp_MSdel_dboSL035400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035600', @source_owner = N'dbo', @source_object = N'SL035600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035600]', @del_cmd = N'CALL [sp_MSdel_dboSL035600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035700', @source_owner = N'dbo', @source_object = N'SL035700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035700]', @del_cmd = N'CALL [sp_MSdel_dboSL035700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035800', @source_owner = N'dbo', @source_object = N'SL035800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035800]', @del_cmd = N'CALL [sp_MSdel_dboSL035800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035900', @source_owner = N'dbo', @source_object = N'SL035900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035900]', @del_cmd = N'CALL [sp_MSdel_dboSL035900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035L00', @source_owner = N'dbo', @source_object = N'SL035L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035L00]', @del_cmd = N'CALL [sp_MSdel_dboSL035L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035M00', @source_owner = N'dbo', @source_object = N'SL035M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035M00]', @del_cmd = N'CALL [sp_MSdel_dboSL035M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL035N00', @source_owner = N'dbo', @source_object = N'SL035N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL035N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL035N00]', @del_cmd = N'CALL [sp_MSdel_dboSL035N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL035N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036000', @source_owner = N'dbo', @source_object = N'SL036000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036000]', @del_cmd = N'CALL [sp_MSdel_dboSL036000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036100', @source_owner = N'dbo', @source_object = N'SL036100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036100]', @del_cmd = N'CALL [sp_MSdel_dboSL036100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036200', @source_owner = N'dbo', @source_object = N'SL036200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036200]', @del_cmd = N'CALL [sp_MSdel_dboSL036200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036300', @source_owner = N'dbo', @source_object = N'SL036300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036300]', @del_cmd = N'CALL [sp_MSdel_dboSL036300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036400', @source_owner = N'dbo', @source_object = N'SL036400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036400]', @del_cmd = N'CALL [sp_MSdel_dboSL036400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036500', @source_owner = N'dbo', @source_object = N'SL036500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036500]', @del_cmd = N'CALL [sp_MSdel_dboSL036500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036600', @source_owner = N'dbo', @source_object = N'SL036600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036600]', @del_cmd = N'CALL [sp_MSdel_dboSL036600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036700', @source_owner = N'dbo', @source_object = N'SL036700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036700]', @del_cmd = N'CALL [sp_MSdel_dboSL036700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036900', @source_owner = N'dbo', @source_object = N'SL036900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036900]', @del_cmd = N'CALL [sp_MSdel_dboSL036900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036L00', @source_owner = N'dbo', @source_object = N'SL036L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036L00]', @del_cmd = N'CALL [sp_MSdel_dboSL036L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036M00', @source_owner = N'dbo', @source_object = N'SL036M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036M00]', @del_cmd = N'CALL [sp_MSdel_dboSL036M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL036N00', @source_owner = N'dbo', @source_object = N'SL036N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL036N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL036N00]', @del_cmd = N'CALL [sp_MSdel_dboSL036N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL036N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037000', @source_owner = N'dbo', @source_object = N'SL037000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037000]', @del_cmd = N'CALL [sp_MSdel_dboSL037000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037100', @source_owner = N'dbo', @source_object = N'SL037100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037100]', @del_cmd = N'CALL [sp_MSdel_dboSL037100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037200', @source_owner = N'dbo', @source_object = N'SL037200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037200]', @del_cmd = N'CALL [sp_MSdel_dboSL037200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037300', @source_owner = N'dbo', @source_object = N'SL037300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037300]', @del_cmd = N'CALL [sp_MSdel_dboSL037300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037400', @source_owner = N'dbo', @source_object = N'SL037400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037400]', @del_cmd = N'CALL [sp_MSdel_dboSL037400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037500', @source_owner = N'dbo', @source_object = N'SL037500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037500]', @del_cmd = N'CALL [sp_MSdel_dboSL037500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037600', @source_owner = N'dbo', @source_object = N'SL037600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037600]', @del_cmd = N'CALL [sp_MSdel_dboSL037600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037700', @source_owner = N'dbo', @source_object = N'SL037700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037700]', @del_cmd = N'CALL [sp_MSdel_dboSL037700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037800', @source_owner = N'dbo', @source_object = N'SL037800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037800]', @del_cmd = N'CALL [sp_MSdel_dboSL037800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037L00', @source_owner = N'dbo', @source_object = N'SL037L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037L00]', @del_cmd = N'CALL [sp_MSdel_dboSL037L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037M00', @source_owner = N'dbo', @source_object = N'SL037M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037M00]', @del_cmd = N'CALL [sp_MSdel_dboSL037M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL037N00', @source_owner = N'dbo', @source_object = N'SL037N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL037N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL037N00]', @del_cmd = N'CALL [sp_MSdel_dboSL037N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL037N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038000', @source_owner = N'dbo', @source_object = N'SL038000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038000]', @del_cmd = N'CALL [sp_MSdel_dboSL038000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038100', @source_owner = N'dbo', @source_object = N'SL038100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038100]', @del_cmd = N'CALL [sp_MSdel_dboSL038100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038300', @source_owner = N'dbo', @source_object = N'SL038300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038300]', @del_cmd = N'CALL [sp_MSdel_dboSL038300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038400', @source_owner = N'dbo', @source_object = N'SL038400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038400]', @del_cmd = N'CALL [sp_MSdel_dboSL038400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038500', @source_owner = N'dbo', @source_object = N'SL038500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038500]', @del_cmd = N'CALL [sp_MSdel_dboSL038500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038800', @source_owner = N'dbo', @source_object = N'SL038800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038800]', @del_cmd = N'CALL [sp_MSdel_dboSL038800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038900', @source_owner = N'dbo', @source_object = N'SL038900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038900]', @del_cmd = N'CALL [sp_MSdel_dboSL038900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038L00', @source_owner = N'dbo', @source_object = N'SL038L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038L00]', @del_cmd = N'CALL [sp_MSdel_dboSL038L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038M00', @source_owner = N'dbo', @source_object = N'SL038M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038M00]', @del_cmd = N'CALL [sp_MSdel_dboSL038M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL038N00', @source_owner = N'dbo', @source_object = N'SL038N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL038N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL038N00]', @del_cmd = N'CALL [sp_MSdel_dboSL038N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL038N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039000', @source_owner = N'dbo', @source_object = N'SL039000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039000]', @del_cmd = N'CALL [sp_MSdel_dboSL039000]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039100', @source_owner = N'dbo', @source_object = N'SL039100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039100]', @del_cmd = N'CALL [sp_MSdel_dboSL039100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039200', @source_owner = N'dbo', @source_object = N'SL039200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039200]', @del_cmd = N'CALL [sp_MSdel_dboSL039200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039300', @source_owner = N'dbo', @source_object = N'SL039300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039300]', @del_cmd = N'CALL [sp_MSdel_dboSL039300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039400', @source_owner = N'dbo', @source_object = N'SL039400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039400]', @del_cmd = N'CALL [sp_MSdel_dboSL039400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039500', @source_owner = N'dbo', @source_object = N'SL039500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039500]', @del_cmd = N'CALL [sp_MSdel_dboSL039500]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039600', @source_owner = N'dbo', @source_object = N'SL039600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039600]', @del_cmd = N'CALL [sp_MSdel_dboSL039600]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039700', @source_owner = N'dbo', @source_object = N'SL039700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039700]', @del_cmd = N'CALL [sp_MSdel_dboSL039700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039900', @source_owner = N'dbo', @source_object = N'SL039900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039900]', @del_cmd = N'CALL [sp_MSdel_dboSL039900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039L00', @source_owner = N'dbo', @source_object = N'SL039L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039L00]', @del_cmd = N'CALL [sp_MSdel_dboSL039L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL039M00', @source_owner = N'dbo', @source_object = N'SL039M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039M00]', @del_cmd = N'CALL [sp_MSdel_dboSL039M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article =N'SL039N00', @source_owner = N'dbo', @source_object = N'SL039N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL039N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL039N00]', @del_cmd = N'CALL [sp_MSdel_dboSL039N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSL039N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V100', @source_owner = N'dbo', @source_object = N'SL03V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V100]', @del_cmd = N'CALL [sp_MSdel_dboSL03V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V200', @source_owner = N'dbo', @source_object = N'SL03V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V200]', @del_cmd = N'CALL [sp_MSdel_dboSL03V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V300', @source_owner = N'dbo', @source_object = N'SL03V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V300]', @del_cmd = N'CALL [sp_MSdel_dboSL03V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V400', @source_owner = N'dbo', @source_object = N'SL03V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V400]', @del_cmd = N'CALL [sp_MSdel_dboSL03V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V700', @source_owner = N'dbo', @source_object = N'SL03V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V700]', @del_cmd = N'CALL [sp_MSdel_dboSL03V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V800', @source_owner = N'dbo', @source_object = N'SL03V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V800]', @del_cmd = N'CALL [sp_MSdel_dboSL03V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSL03', @article = N'SL03V900', @source_owner = N'dbo', @source_object = N'SL03V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SL03V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSL03V900]', @del_cmd = N'CALL [sp_MSdel_dboSL03V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSL03V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSL03', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSL03', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

