-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSY29', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSY29', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSY29', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY29', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY29', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY29', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY29', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY29', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V500', @source_owner = N'dbo', @source_object = N'SY29V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V500]', @del_cmd = N'CALL [sp_MSdel_dboSY29V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299P00', @source_owner = N'dbo', @source_object = N'SY299P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299P00]', @del_cmd = N'CALL [sp_MSdel_dboSY299P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295P00', @source_owner = N'dbo', @source_object = N'SY295P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295P00]', @del_cmd = N'CALL [sp_MSdel_dboSY295P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296P00', @source_owner = N'dbo', @source_object = N'SY296P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296P00]', @del_cmd = N'CALL [sp_MSdel_dboSY296P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297P00', @source_owner = N'dbo', @source_object = N'SY297P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297P00]', @del_cmd = N'CALL [sp_MSdel_dboSY297P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298P00', @source_owner = N'dbo', @source_object = N'SY298P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298P00]', @del_cmd = N'CALL [sp_MSdel_dboSY298P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY290100', @source_owner = N'dbo', @source_object = N'SY290100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY290100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY290100]', @del_cmd = N'CALL [sp_MSdel_dboSY290100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY290100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292P00', @source_owner = N'dbo', @source_object = N'SY292P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292P00]', @del_cmd = N'CALL [sp_MSdel_dboSY292P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY290200', @source_owner = N'dbo', @source_object = N'SY290200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY290200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY290200]', @del_cmd = N'CALL [sp_MSdel_dboSY290200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY290200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY290500', @source_owner = N'dbo', @source_object = N'SY290500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY290500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY290500]', @del_cmd = N'CALL [sp_MSdel_dboSY290500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY290500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY290600', @source_owner = N'dbo', @source_object = N'SY290600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY290600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY290600]', @del_cmd = N'CALL [sp_MSdel_dboSY290600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY290600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY290700', @source_owner = N'dbo', @source_object = N'SY290700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY290700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY290700]', @del_cmd = N'CALL [sp_MSdel_dboSY290700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY290700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY290800', @source_owner = N'dbo', @source_object = N'SY290800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY290800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY290800]', @del_cmd = N'CALL [sp_MSdel_dboSY290800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY290800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY290900', @source_owner = N'dbo', @source_object = N'SY290900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY290900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY290900]', @del_cmd = N'CALL [sp_MSdel_dboSY290900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY290900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291000', @source_owner = N'dbo', @source_object = N'SY291000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291000]', @del_cmd = N'CALL [sp_MSdel_dboSY291000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291100', @source_owner = N'dbo', @source_object = N'SY291100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291100]', @del_cmd = N'CALL [sp_MSdel_dboSY291100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291200', @source_owner = N'dbo', @source_object = N'SY291200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291200]', @del_cmd = N'CALL [sp_MSdel_dboSY291200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291300', @source_owner = N'dbo', @source_object = N'SY291300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291300]', @del_cmd = N'CALL [sp_MSdel_dboSY291300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291400', @source_owner = N'dbo', @source_object = N'SY291400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291400]', @del_cmd = N'CALL [sp_MSdel_dboSY291400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291600', @source_owner = N'dbo', @source_object = N'SY291600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291600]', @del_cmd = N'CALL [sp_MSdel_dboSY291600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291900', @source_owner = N'dbo', @source_object = N'SY291900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291900]', @del_cmd = N'CALL [sp_MSdel_dboSY291900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291L00', @source_owner = N'dbo', @source_object = N'SY291L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291L00]', @del_cmd = N'CALL [sp_MSdel_dboSY291L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291M00', @source_owner = N'dbo', @source_object = N'SY291M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291M00]', @del_cmd = N'CALL [sp_MSdel_dboSY291M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291N00', @source_owner = N'dbo', @source_object = N'SY291N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291N00]', @del_cmd = N'CALL [sp_MSdel_dboSY291N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY291P00', @source_owner = N'dbo', @source_object = N'SY291P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY291P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY291P00]', @del_cmd = N'CALL [sp_MSdel_dboSY291P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY291P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292000', @source_owner = N'dbo', @source_object = N'SY292000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292000]', @del_cmd = N'CALL [sp_MSdel_dboSY292000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292100', @source_owner = N'dbo', @source_object = N'SY292100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292100]', @del_cmd = N'CALL [sp_MSdel_dboSY292100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292200', @source_owner = N'dbo', @source_object = N'SY292200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292200]', @del_cmd = N'CALL [sp_MSdel_dboSY292200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292300', @source_owner = N'dbo', @source_object = N'SY292300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292300]', @del_cmd = N'CALL [sp_MSdel_dboSY292300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292400', @source_owner = N'dbo', @source_object = N'SY292400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292400]', @del_cmd = N'CALL [sp_MSdel_dboSY292400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292500', @source_owner = N'dbo', @source_object = N'SY292500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292500]', @del_cmd = N'CALL [sp_MSdel_dboSY292500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292600', @source_owner = N'dbo', @source_object = N'SY292600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292600]', @del_cmd = N'CALL [sp_MSdel_dboSY292600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292700', @source_owner = N'dbo', @source_object = N'SY292700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292700]', @del_cmd = N'CALL [sp_MSdel_dboSY292700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292800', @source_owner = N'dbo', @source_object = N'SY292800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292800]', @del_cmd = N'CALL [sp_MSdel_dboSY292800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292900', @source_owner = N'dbo', @source_object = N'SY292900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292900]', @del_cmd = N'CALL [sp_MSdel_dboSY292900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292L00', @source_owner = N'dbo', @source_object = N'SY292L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292L00]', @del_cmd = N'CALL [sp_MSdel_dboSY292L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292M00', @source_owner = N'dbo', @source_object = N'SY292M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292M00]', @del_cmd = N'CALL [sp_MSdel_dboSY292M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY292N00', @source_owner = N'dbo', @source_object = N'SY292N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY292N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY292N00]', @del_cmd = N'CALL [sp_MSdel_dboSY292N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY292N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293000', @source_owner = N'dbo', @source_object = N'SY293000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293000]', @del_cmd = N'CALL [sp_MSdel_dboSY293000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293100', @source_owner = N'dbo', @source_object = N'SY293100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293100]', @del_cmd = N'CALL [sp_MSdel_dboSY293100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293500', @source_owner = N'dbo', @source_object = N'SY293500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293500]', @del_cmd = N'CALL [sp_MSdel_dboSY293500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293600', @source_owner = N'dbo', @source_object = N'SY293600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293600]', @del_cmd = N'CALL [sp_MSdel_dboSY293600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293900', @source_owner = N'dbo', @source_object = N'SY293900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293900]', @del_cmd = N'CALL [sp_MSdel_dboSY293900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293L00', @source_owner = N'dbo', @source_object = N'SY293L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293L00]', @del_cmd = N'CALL [sp_MSdel_dboSY293L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293M00', @source_owner = N'dbo', @source_object = N'SY293M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293M00]', @del_cmd = N'CALL [sp_MSdel_dboSY293M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293N00', @source_owner = N'dbo', @source_object = N'SY293N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293N00]', @del_cmd = N'CALL [sp_MSdel_dboSY293N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY293P00', @source_owner = N'dbo', @source_object = N'SY293P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY293P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY293P00]', @del_cmd = N'CALL [sp_MSdel_dboSY293P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY293P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294000', @source_owner = N'dbo', @source_object = N'SY294000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294000]', @del_cmd = N'CALL [sp_MSdel_dboSY294000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294100', @source_owner = N'dbo', @source_object = N'SY294100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294100]', @del_cmd = N'CALL [sp_MSdel_dboSY294100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294200', @source_owner = N'dbo', @source_object = N'SY294200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294200]', @del_cmd = N'CALL [sp_MSdel_dboSY294200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294300', @source_owner = N'dbo', @source_object = N'SY294300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294300]', @del_cmd = N'CALL [sp_MSdel_dboSY294300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294400', @source_owner = N'dbo', @source_object = N'SY294400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294400]', @del_cmd = N'CALL [sp_MSdel_dboSY294400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294500', @source_owner = N'dbo', @source_object = N'SY294500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294500]', @del_cmd = N'CALL [sp_MSdel_dboSY294500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294600', @source_owner = N'dbo', @source_object = N'SY294600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294600]', @del_cmd = N'CALL [sp_MSdel_dboSY294600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294700', @source_owner = N'dbo', @source_object = N'SY294700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294700]', @del_cmd = N'CALL [sp_MSdel_dboSY294700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294800', @source_owner = N'dbo', @source_object = N'SY294800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294800]', @del_cmd = N'CALL [sp_MSdel_dboSY294800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294900', @source_owner = N'dbo', @source_object = N'SY294900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294900]', @del_cmd = N'CALL [sp_MSdel_dboSY294900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294L00', @source_owner = N'dbo', @source_object = N'SY294L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294L00]', @del_cmd = N'CALL [sp_MSdel_dboSY294L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294M00', @source_owner = N'dbo', @source_object = N'SY294M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294M00]', @del_cmd = N'CALL [sp_MSdel_dboSY294M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294N00', @source_owner = N'dbo', @source_object = N'SY294N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294N00]', @del_cmd = N'CALL [sp_MSdel_dboSY294N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY294P00', @source_owner = N'dbo', @source_object = N'SY294P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY294P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY294P00]', @del_cmd = N'CALL [sp_MSdel_dboSY294P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY294P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295000', @source_owner = N'dbo', @source_object = N'SY295000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295000]', @del_cmd = N'CALL [sp_MSdel_dboSY295000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295100', @source_owner = N'dbo', @source_object = N'SY295100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295100]', @del_cmd = N'CALL [sp_MSdel_dboSY295100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295200', @source_owner = N'dbo', @source_object = N'SY295200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295200]', @del_cmd = N'CALL [sp_MSdel_dboSY295200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295300', @source_owner = N'dbo', @source_object = N'SY295300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295300]', @del_cmd = N'CALL [sp_MSdel_dboSY295300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295400', @source_owner = N'dbo', @source_object = N'SY295400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295400]', @del_cmd = N'CALL [sp_MSdel_dboSY295400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295600', @source_owner = N'dbo', @source_object = N'SY295600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295600]', @del_cmd = N'CALL [sp_MSdel_dboSY295600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295700', @source_owner = N'dbo', @source_object = N'SY295700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295700]', @del_cmd = N'CALL [sp_MSdel_dboSY295700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295800', @source_owner = N'dbo', @source_object = N'SY295800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295800]', @del_cmd = N'CALL [sp_MSdel_dboSY295800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295900', @source_owner = N'dbo', @source_object = N'SY295900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295900]', @del_cmd = N'CALL [sp_MSdel_dboSY295900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295L00', @source_owner = N'dbo', @source_object = N'SY295L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295L00]', @del_cmd = N'CALL [sp_MSdel_dboSY295L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295M00', @source_owner = N'dbo', @source_object = N'SY295M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295M00]', @del_cmd = N'CALL [sp_MSdel_dboSY295M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY295N00', @source_owner = N'dbo', @source_object = N'SY295N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY295N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY295N00]', @del_cmd = N'CALL [sp_MSdel_dboSY295N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY295N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296000', @source_owner = N'dbo', @source_object = N'SY296000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296000]', @del_cmd = N'CALL [sp_MSdel_dboSY296000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296100', @source_owner = N'dbo', @source_object = N'SY296100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296100]', @del_cmd = N'CALL [sp_MSdel_dboSY296100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296200', @source_owner = N'dbo', @source_object = N'SY296200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296200]', @del_cmd = N'CALL [sp_MSdel_dboSY296200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296300', @source_owner = N'dbo', @source_object = N'SY296300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296300]', @del_cmd = N'CALL [sp_MSdel_dboSY296300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296400', @source_owner = N'dbo', @source_object = N'SY296400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296400]', @del_cmd = N'CALL [sp_MSdel_dboSY296400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296500', @source_owner = N'dbo', @source_object = N'SY296500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296500]', @del_cmd = N'CALL [sp_MSdel_dboSY296500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296600', @source_owner = N'dbo', @source_object = N'SY296600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296600]', @del_cmd = N'CALL [sp_MSdel_dboSY296600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296700', @source_owner = N'dbo', @source_object = N'SY296700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296700]', @del_cmd = N'CALL [sp_MSdel_dboSY296700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296900', @source_owner = N'dbo', @source_object = N'SY296900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296900]', @del_cmd = N'CALL [sp_MSdel_dboSY296900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296L00', @source_owner = N'dbo', @source_object = N'SY296L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296L00]', @del_cmd = N'CALL [sp_MSdel_dboSY296L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296M00', @source_owner = N'dbo', @source_object = N'SY296M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296M00]', @del_cmd = N'CALL [sp_MSdel_dboSY296M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY296N00', @source_owner = N'dbo', @source_object = N'SY296N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY296N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY296N00]', @del_cmd = N'CALL [sp_MSdel_dboSY296N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY296N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297000', @source_owner = N'dbo', @source_object = N'SY297000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297000]', @del_cmd = N'CALL [sp_MSdel_dboSY297000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297100', @source_owner = N'dbo', @source_object = N'SY297100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297100]', @del_cmd = N'CALL [sp_MSdel_dboSY297100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297200', @source_owner = N'dbo', @source_object = N'SY297200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297200]', @del_cmd = N'CALL [sp_MSdel_dboSY297200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297300', @source_owner = N'dbo', @source_object = N'SY297300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297300]', @del_cmd = N'CALL [sp_MSdel_dboSY297300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297400', @source_owner = N'dbo', @source_object = N'SY297400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297400]', @del_cmd = N'CALL [sp_MSdel_dboSY297400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297500', @source_owner = N'dbo', @source_object = N'SY297500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297500]', @del_cmd = N'CALL [sp_MSdel_dboSY297500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297600', @source_owner = N'dbo', @source_object = N'SY297600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297600]', @del_cmd = N'CALL [sp_MSdel_dboSY297600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297700', @source_owner = N'dbo', @source_object = N'SY297700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297700]', @del_cmd = N'CALL [sp_MSdel_dboSY297700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297800', @source_owner = N'dbo', @source_object = N'SY297800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297800]', @del_cmd = N'CALL [sp_MSdel_dboSY297800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297L00', @source_owner = N'dbo', @source_object = N'SY297L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297L00]', @del_cmd = N'CALL [sp_MSdel_dboSY297L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297M00', @source_owner = N'dbo', @source_object = N'SY297M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297M00]', @del_cmd = N'CALL [sp_MSdel_dboSY297M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY297N00', @source_owner = N'dbo', @source_object = N'SY297N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY297N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY297N00]', @del_cmd = N'CALL [sp_MSdel_dboSY297N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY297N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298000', @source_owner = N'dbo', @source_object = N'SY298000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298000]', @del_cmd = N'CALL [sp_MSdel_dboSY298000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298100', @source_owner = N'dbo', @source_object = N'SY298100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298100]', @del_cmd = N'CALL [sp_MSdel_dboSY298100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298300', @source_owner = N'dbo', @source_object = N'SY298300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298300]', @del_cmd = N'CALL [sp_MSdel_dboSY298300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298400', @source_owner = N'dbo', @source_object = N'SY298400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298400]', @del_cmd = N'CALL [sp_MSdel_dboSY298400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298500', @source_owner = N'dbo', @source_object = N'SY298500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298500]', @del_cmd = N'CALL [sp_MSdel_dboSY298500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298800', @source_owner = N'dbo', @source_object = N'SY298800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298800]', @del_cmd = N'CALL [sp_MSdel_dboSY298800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298900', @source_owner = N'dbo', @source_object = N'SY298900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298900]', @del_cmd = N'CALL [sp_MSdel_dboSY298900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298L00', @source_owner = N'dbo', @source_object = N'SY298L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298L00]', @del_cmd = N'CALL [sp_MSdel_dboSY298L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298M00', @source_owner = N'dbo', @source_object = N'SY298M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298M00]', @del_cmd = N'CALL [sp_MSdel_dboSY298M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY298N00', @source_owner = N'dbo', @source_object = N'SY298N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY298N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY298N00]', @del_cmd = N'CALL [sp_MSdel_dboSY298N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY298N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299000', @source_owner = N'dbo', @source_object = N'SY299000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299000]', @del_cmd = N'CALL [sp_MSdel_dboSY299000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299100', @source_owner = N'dbo', @source_object = N'SY299100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299100]', @del_cmd = N'CALL [sp_MSdel_dboSY299100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299200', @source_owner = N'dbo', @source_object = N'SY299200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299200]', @del_cmd = N'CALL [sp_MSdel_dboSY299200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299300', @source_owner = N'dbo', @source_object = N'SY299300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299300]', @del_cmd = N'CALL [sp_MSdel_dboSY299300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299400', @source_owner = N'dbo', @source_object = N'SY299400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299400]', @del_cmd = N'CALL [sp_MSdel_dboSY299400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299500', @source_owner = N'dbo', @source_object = N'SY299500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299500]', @del_cmd = N'CALL [sp_MSdel_dboSY299500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299600', @source_owner = N'dbo', @source_object = N'SY299600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299600]', @del_cmd = N'CALL [sp_MSdel_dboSY299600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299700', @source_owner = N'dbo', @source_object = N'SY299700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299700]', @del_cmd = N'CALL [sp_MSdel_dboSY299700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299900', @source_owner = N'dbo', @source_object = N'SY299900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299900]', @del_cmd = N'CALL [sp_MSdel_dboSY299900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299L00', @source_owner = N'dbo', @source_object = N'SY299L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299L00]', @del_cmd = N'CALL [sp_MSdel_dboSY299L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY299M00', @source_owner = N'dbo', @source_object = N'SY299M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299M00]', @del_cmd = N'CALL [sp_MSdel_dboSY299M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article =N'SY299N00', @source_owner = N'dbo', @source_object = N'SY299N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY299N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY299N00]', @del_cmd = N'CALL [sp_MSdel_dboSY299N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY299N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V100', @source_owner = N'dbo', @source_object = N'SY29V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V100]', @del_cmd = N'CALL [sp_MSdel_dboSY29V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V200', @source_owner = N'dbo', @source_object = N'SY29V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V200]', @del_cmd = N'CALL [sp_MSdel_dboSY29V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V300', @source_owner = N'dbo', @source_object = N'SY29V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V300]', @del_cmd = N'CALL [sp_MSdel_dboSY29V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V400', @source_owner = N'dbo', @source_object = N'SY29V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V400]', @del_cmd = N'CALL [sp_MSdel_dboSY29V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V700', @source_owner = N'dbo', @source_object = N'SY29V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V700]', @del_cmd = N'CALL [sp_MSdel_dboSY29V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V800', @source_owner = N'dbo', @source_object = N'SY29V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V800]', @del_cmd = N'CALL [sp_MSdel_dboSY29V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY29', @article = N'SY29V900', @source_owner = N'dbo', @source_object = N'SY29V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY29V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY29V900]', @del_cmd = N'CALL [sp_MSdel_dboSY29V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY29V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSY29', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSY29', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

