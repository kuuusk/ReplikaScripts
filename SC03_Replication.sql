---- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSC03', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSC03', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSC03', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC03', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC03', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC03', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC03', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSC03', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V500', @source_owner = N'dbo', @source_object = N'SC03V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V500]', @del_cmd = N'CALL [sp_MSdel_dboSC03V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039P00', @source_owner = N'dbo', @source_object = N'SC039P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039P00]', @del_cmd = N'CALL [sp_MSdel_dboSC039P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035P00', @source_owner = N'dbo', @source_object = N'SC035P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035P00]', @del_cmd = N'CALL [sp_MSdel_dboSC035P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036P00', @source_owner = N'dbo', @source_object = N'SC036P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036P00]', @del_cmd = N'CALL [sp_MSdel_dboSC036P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037P00', @source_owner = N'dbo', @source_object = N'SC037P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037P00]', @del_cmd = N'CALL [sp_MSdel_dboSC037P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038P00', @source_owner = N'dbo', @source_object = N'SC038P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038P00]', @del_cmd = N'CALL [sp_MSdel_dboSC038P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC030100', @source_owner = N'dbo', @source_object = N'SC030100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC030100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC030100]', @del_cmd = N'CALL [sp_MSdel_dboSC030100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC030100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032P00', @source_owner = N'dbo', @source_object = N'SC032P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032P00]', @del_cmd = N'CALL [sp_MSdel_dboSC032P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC030200', @source_owner = N'dbo', @source_object = N'SC030200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC030200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC030200]', @del_cmd = N'CALL [sp_MSdel_dboSC030200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC030200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC030500', @source_owner = N'dbo', @source_object = N'SC030500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC030500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC030500]', @del_cmd = N'CALL [sp_MSdel_dboSC030500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC030500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC030600', @source_owner = N'dbo', @source_object = N'SC030600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC030600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC030600]', @del_cmd = N'CALL [sp_MSdel_dboSC030600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC030600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC030700', @source_owner = N'dbo', @source_object = N'SC030700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC030700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC030700]', @del_cmd = N'CALL [sp_MSdel_dboSC030700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC030700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC030800', @source_owner = N'dbo', @source_object = N'SC030800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC030800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC030800]', @del_cmd = N'CALL [sp_MSdel_dboSC030800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC030800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC030900', @source_owner = N'dbo', @source_object = N'SC030900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC030900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC030900]', @del_cmd = N'CALL [sp_MSdel_dboSC030900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC030900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031000', @source_owner = N'dbo', @source_object = N'SC031000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031000]', @del_cmd = N'CALL [sp_MSdel_dboSC031000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031100', @source_owner = N'dbo', @source_object = N'SC031100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031100]', @del_cmd = N'CALL [sp_MSdel_dboSC031100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031200', @source_owner = N'dbo', @source_object = N'SC031200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031200]', @del_cmd = N'CALL [sp_MSdel_dboSC031200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031300', @source_owner = N'dbo', @source_object = N'SC031300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031300]', @del_cmd = N'CALL [sp_MSdel_dboSC031300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031400', @source_owner = N'dbo', @source_object = N'SC031400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031400]', @del_cmd = N'CALL [sp_MSdel_dboSC031400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031600', @source_owner = N'dbo', @source_object = N'SC031600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031600]', @del_cmd = N'CALL [sp_MSdel_dboSC031600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031900', @source_owner = N'dbo', @source_object = N'SC031900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031900]', @del_cmd = N'CALL [sp_MSdel_dboSC031900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031L00', @source_owner = N'dbo', @source_object = N'SC031L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031L00]', @del_cmd = N'CALL [sp_MSdel_dboSC031L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031M00', @source_owner = N'dbo', @source_object = N'SC031M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031M00]', @del_cmd = N'CALL [sp_MSdel_dboSC031M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031N00', @source_owner = N'dbo', @source_object = N'SC031N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031N00]', @del_cmd = N'CALL [sp_MSdel_dboSC031N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC031P00', @source_owner = N'dbo', @source_object = N'SC031P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC031P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC031P00]', @del_cmd = N'CALL [sp_MSdel_dboSC031P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC031P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032000', @source_owner = N'dbo', @source_object = N'SC032000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032000]', @del_cmd = N'CALL [sp_MSdel_dboSC032000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032100', @source_owner = N'dbo', @source_object = N'SC032100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032100]', @del_cmd = N'CALL [sp_MSdel_dboSC032100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032200', @source_owner = N'dbo', @source_object = N'SC032200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032200]', @del_cmd = N'CALL [sp_MSdel_dboSC032200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032300', @source_owner = N'dbo', @source_object = N'SC032300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032300]', @del_cmd = N'CALL [sp_MSdel_dboSC032300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032400', @source_owner = N'dbo', @source_object = N'SC032400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032400]', @del_cmd = N'CALL [sp_MSdel_dboSC032400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032500', @source_owner = N'dbo', @source_object = N'SC032500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032500]', @del_cmd = N'CALL [sp_MSdel_dboSC032500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032600', @source_owner = N'dbo', @source_object = N'SC032600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032600]', @del_cmd = N'CALL [sp_MSdel_dboSC032600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032700', @source_owner = N'dbo', @source_object = N'SC032700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032700]', @del_cmd = N'CALL [sp_MSdel_dboSC032700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032800', @source_owner = N'dbo', @source_object = N'SC032800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032800]', @del_cmd = N'CALL [sp_MSdel_dboSC032800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032900', @source_owner = N'dbo', @source_object = N'SC032900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032900]', @del_cmd = N'CALL [sp_MSdel_dboSC032900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032L00', @source_owner = N'dbo', @source_object = N'SC032L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032L00]', @del_cmd = N'CALL [sp_MSdel_dboSC032L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032M00', @source_owner = N'dbo', @source_object = N'SC032M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032M00]', @del_cmd = N'CALL [sp_MSdel_dboSC032M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC032N00', @source_owner = N'dbo', @source_object = N'SC032N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC032N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC032N00]', @del_cmd = N'CALL [sp_MSdel_dboSC032N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC032N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033000', @source_owner = N'dbo', @source_object = N'SC033000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033000]', @del_cmd = N'CALL [sp_MSdel_dboSC033000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033100', @source_owner = N'dbo', @source_object = N'SC033100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033100]', @del_cmd = N'CALL [sp_MSdel_dboSC033100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033500', @source_owner = N'dbo', @source_object = N'SC033500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033500]', @del_cmd = N'CALL [sp_MSdel_dboSC033500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033600', @source_owner = N'dbo', @source_object = N'SC033600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033600]', @del_cmd = N'CALL [sp_MSdel_dboSC033600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033900', @source_owner = N'dbo', @source_object = N'SC033900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033900]', @del_cmd = N'CALL [sp_MSdel_dboSC033900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033L00', @source_owner = N'dbo', @source_object = N'SC033L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033L00]', @del_cmd = N'CALL [sp_MSdel_dboSC033L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033M00', @source_owner = N'dbo', @source_object = N'SC033M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033M00]', @del_cmd = N'CALL [sp_MSdel_dboSC033M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033N00', @source_owner = N'dbo', @source_object = N'SC033N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033N00]', @del_cmd = N'CALL [sp_MSdel_dboSC033N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC033P00', @source_owner = N'dbo', @source_object = N'SC033P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC033P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC033P00]', @del_cmd = N'CALL [sp_MSdel_dboSC033P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC033P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034000', @source_owner = N'dbo', @source_object = N'SC034000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034000]', @del_cmd = N'CALL [sp_MSdel_dboSC034000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034100', @source_owner = N'dbo', @source_object = N'SC034100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034100]', @del_cmd = N'CALL [sp_MSdel_dboSC034100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034200', @source_owner = N'dbo', @source_object = N'SC034200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034200]', @del_cmd = N'CALL [sp_MSdel_dboSC034200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034300', @source_owner = N'dbo', @source_object = N'SC034300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034300]', @del_cmd = N'CALL [sp_MSdel_dboSC034300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034400', @source_owner = N'dbo', @source_object = N'SC034400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034400]', @del_cmd = N'CALL [sp_MSdel_dboSC034400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034500', @source_owner = N'dbo', @source_object = N'SC034500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034500]', @del_cmd = N'CALL [sp_MSdel_dboSC034500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034600', @source_owner = N'dbo', @source_object = N'SC034600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034600]', @del_cmd = N'CALL [sp_MSdel_dboSC034600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034700', @source_owner = N'dbo', @source_object = N'SC034700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034700]', @del_cmd = N'CALL [sp_MSdel_dboSC034700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034800', @source_owner = N'dbo', @source_object = N'SC034800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034800]', @del_cmd = N'CALL [sp_MSdel_dboSC034800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034900', @source_owner = N'dbo', @source_object = N'SC034900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034900]', @del_cmd = N'CALL [sp_MSdel_dboSC034900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034L00', @source_owner = N'dbo', @source_object = N'SC034L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034L00]', @del_cmd = N'CALL [sp_MSdel_dboSC034L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034M00', @source_owner = N'dbo', @source_object = N'SC034M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034M00]', @del_cmd = N'CALL [sp_MSdel_dboSC034M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034N00', @source_owner = N'dbo', @source_object = N'SC034N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034N00]', @del_cmd = N'CALL [sp_MSdel_dboSC034N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC034P00', @source_owner = N'dbo', @source_object = N'SC034P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC034P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC034P00]', @del_cmd = N'CALL [sp_MSdel_dboSC034P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC034P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035000', @source_owner = N'dbo', @source_object = N'SC035000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035000]', @del_cmd = N'CALL [sp_MSdel_dboSC035000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035100', @source_owner = N'dbo', @source_object = N'SC035100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035100]', @del_cmd = N'CALL [sp_MSdel_dboSC035100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035200', @source_owner = N'dbo', @source_object = N'SC035200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035200]', @del_cmd = N'CALL [sp_MSdel_dboSC035200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035300', @source_owner = N'dbo', @source_object = N'SC035300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035300]', @del_cmd = N'CALL [sp_MSdel_dboSC035300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035400', @source_owner = N'dbo', @source_object = N'SC035400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035400]', @del_cmd = N'CALL [sp_MSdel_dboSC035400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035600', @source_owner = N'dbo', @source_object = N'SC035600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035600]', @del_cmd = N'CALL [sp_MSdel_dboSC035600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035700', @source_owner = N'dbo', @source_object = N'SC035700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035700]', @del_cmd = N'CALL [sp_MSdel_dboSC035700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035800', @source_owner = N'dbo', @source_object = N'SC035800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035800]', @del_cmd = N'CALL [sp_MSdel_dboSC035800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035900', @source_owner = N'dbo', @source_object = N'SC035900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035900]', @del_cmd = N'CALL [sp_MSdel_dboSC035900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035L00', @source_owner = N'dbo', @source_object = N'SC035L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035L00]', @del_cmd = N'CALL [sp_MSdel_dboSC035L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035M00', @source_owner = N'dbo', @source_object = N'SC035M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035M00]', @del_cmd = N'CALL [sp_MSdel_dboSC035M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC035N00', @source_owner = N'dbo', @source_object = N'SC035N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC035N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC035N00]', @del_cmd = N'CALL [sp_MSdel_dboSC035N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC035N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036000', @source_owner = N'dbo', @source_object = N'SC036000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036000]', @del_cmd = N'CALL [sp_MSdel_dboSC036000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036100', @source_owner = N'dbo', @source_object = N'SC036100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036100]', @del_cmd = N'CALL [sp_MSdel_dboSC036100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036200', @source_owner = N'dbo', @source_object = N'SC036200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036200]', @del_cmd = N'CALL [sp_MSdel_dboSC036200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036300', @source_owner = N'dbo', @source_object = N'SC036300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036300]', @del_cmd = N'CALL [sp_MSdel_dboSC036300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036400', @source_owner = N'dbo', @source_object = N'SC036400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036400]', @del_cmd = N'CALL [sp_MSdel_dboSC036400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036500', @source_owner = N'dbo', @source_object = N'SC036500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036500]', @del_cmd = N'CALL [sp_MSdel_dboSC036500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036600', @source_owner = N'dbo', @source_object = N'SC036600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036600]', @del_cmd = N'CALL [sp_MSdel_dboSC036600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036700', @source_owner = N'dbo', @source_object = N'SC036700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036700]', @del_cmd = N'CALL [sp_MSdel_dboSC036700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036900', @source_owner = N'dbo', @source_object = N'SC036900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036900]', @del_cmd = N'CALL [sp_MSdel_dboSC036900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036L00', @source_owner = N'dbo', @source_object = N'SC036L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036L00]', @del_cmd = N'CALL [sp_MSdel_dboSC036L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036M00', @source_owner = N'dbo', @source_object = N'SC036M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036M00]', @del_cmd = N'CALL [sp_MSdel_dboSC036M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC036N00', @source_owner = N'dbo', @source_object = N'SC036N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC036N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC036N00]', @del_cmd = N'CALL [sp_MSdel_dboSC036N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC036N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037000', @source_owner = N'dbo', @source_object = N'SC037000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037000]', @del_cmd = N'CALL [sp_MSdel_dboSC037000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037100', @source_owner = N'dbo', @source_object = N'SC037100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037100]', @del_cmd = N'CALL [sp_MSdel_dboSC037100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037200', @source_owner = N'dbo', @source_object = N'SC037200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037200]', @del_cmd = N'CALL [sp_MSdel_dboSC037200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037300', @source_owner = N'dbo', @source_object = N'SC037300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037300]', @del_cmd = N'CALL [sp_MSdel_dboSC037300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037400', @source_owner = N'dbo', @source_object = N'SC037400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037400]', @del_cmd = N'CALL [sp_MSdel_dboSC037400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037500', @source_owner = N'dbo', @source_object = N'SC037500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037500]', @del_cmd = N'CALL [sp_MSdel_dboSC037500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037600', @source_owner = N'dbo', @source_object = N'SC037600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037600]', @del_cmd = N'CALL [sp_MSdel_dboSC037600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037700', @source_owner = N'dbo', @source_object = N'SC037700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037700]', @del_cmd = N'CALL [sp_MSdel_dboSC037700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037800', @source_owner = N'dbo', @source_object = N'SC037800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037800]', @del_cmd = N'CALL [sp_MSdel_dboSC037800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037L00', @source_owner = N'dbo', @source_object = N'SC037L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037L00]', @del_cmd = N'CALL [sp_MSdel_dboSC037L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037M00', @source_owner = N'dbo', @source_object = N'SC037M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037M00]', @del_cmd = N'CALL [sp_MSdel_dboSC037M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC037N00', @source_owner = N'dbo', @source_object = N'SC037N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC037N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC037N00]', @del_cmd = N'CALL [sp_MSdel_dboSC037N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC037N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038000', @source_owner = N'dbo', @source_object = N'SC038000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038000]', @del_cmd = N'CALL [sp_MSdel_dboSC038000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038100', @source_owner = N'dbo', @source_object = N'SC038100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038100]', @del_cmd = N'CALL [sp_MSdel_dboSC038100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038300', @source_owner = N'dbo', @source_object = N'SC038300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038300]', @del_cmd = N'CALL [sp_MSdel_dboSC038300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038400', @source_owner = N'dbo', @source_object = N'SC038400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038400]', @del_cmd = N'CALL [sp_MSdel_dboSC038400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038500', @source_owner = N'dbo', @source_object = N'SC038500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038500]', @del_cmd = N'CALL [sp_MSdel_dboSC038500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038800', @source_owner = N'dbo', @source_object = N'SC038800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038800]', @del_cmd = N'CALL [sp_MSdel_dboSC038800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038900', @source_owner = N'dbo', @source_object = N'SC038900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038900]', @del_cmd = N'CALL [sp_MSdel_dboSC038900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038L00', @source_owner = N'dbo', @source_object = N'SC038L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038L00]', @del_cmd = N'CALL [sp_MSdel_dboSC038L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038M00', @source_owner = N'dbo', @source_object = N'SC038M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038M00]', @del_cmd = N'CALL [sp_MSdel_dboSC038M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC038N00', @source_owner = N'dbo', @source_object = N'SC038N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC038N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC038N00]', @del_cmd = N'CALL [sp_MSdel_dboSC038N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC038N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039000', @source_owner = N'dbo', @source_object = N'SC039000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039000]', @del_cmd = N'CALL [sp_MSdel_dboSC039000]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039100', @source_owner = N'dbo', @source_object = N'SC039100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039100]', @del_cmd = N'CALL [sp_MSdel_dboSC039100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039200', @source_owner = N'dbo', @source_object = N'SC039200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039200]', @del_cmd = N'CALL [sp_MSdel_dboSC039200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039300', @source_owner = N'dbo', @source_object = N'SC039300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039300]', @del_cmd = N'CALL [sp_MSdel_dboSC039300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039400', @source_owner = N'dbo', @source_object = N'SC039400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039400]', @del_cmd = N'CALL [sp_MSdel_dboSC039400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039500', @source_owner = N'dbo', @source_object = N'SC039500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039500]', @del_cmd = N'CALL [sp_MSdel_dboSC039500]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039600', @source_owner = N'dbo', @source_object = N'SC039600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039600]', @del_cmd = N'CALL [sp_MSdel_dboSC039600]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039700', @source_owner = N'dbo', @source_object = N'SC039700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039700]', @del_cmd = N'CALL [sp_MSdel_dboSC039700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039900', @source_owner = N'dbo', @source_object = N'SC039900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039900]', @del_cmd = N'CALL [sp_MSdel_dboSC039900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039L00', @source_owner = N'dbo', @source_object = N'SC039L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039L00]', @del_cmd = N'CALL [sp_MSdel_dboSC039L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC039M00', @source_owner = N'dbo', @source_object = N'SC039M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039M00]', @del_cmd = N'CALL [sp_MSdel_dboSC039M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article =N'SC039N00', @source_owner = N'dbo', @source_object = N'SC039N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC039N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC039N00]', @del_cmd = N'CALL [sp_MSdel_dboSC039N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSC039N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V100', @source_owner = N'dbo', @source_object = N'SC03V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V100]', @del_cmd = N'CALL [sp_MSdel_dboSC03V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V200', @source_owner = N'dbo', @source_object = N'SC03V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V200]', @del_cmd = N'CALL [sp_MSdel_dboSC03V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V300', @source_owner = N'dbo', @source_object = N'SC03V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V300]', @del_cmd = N'CALL [sp_MSdel_dboSC03V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V400', @source_owner = N'dbo', @source_object = N'SC03V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V400]', @del_cmd = N'CALL [sp_MSdel_dboSC03V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V700', @source_owner = N'dbo', @source_object = N'SC03V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V700]', @del_cmd = N'CALL [sp_MSdel_dboSC03V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V800', @source_owner = N'dbo', @source_object = N'SC03V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V800]', @del_cmd = N'CALL [sp_MSdel_dboSC03V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSC03', @article = N'SC03V900', @source_owner = N'dbo', @source_object = N'SC03V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SC03V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSC03V900]', @del_cmd = N'CALL [sp_MSdel_dboSC03V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSC03V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSC03', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSC03', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

