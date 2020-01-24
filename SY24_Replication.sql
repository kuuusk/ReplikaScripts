-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaSY24', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaSY24', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaSY24', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY24', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY24', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY24', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY24', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaSY24', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V500', @source_owner = N'dbo', @source_object = N'SY24V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V500]', @del_cmd = N'CALL [sp_MSdel_dboSY24V500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249P00', @source_owner = N'dbo', @source_object = N'SY249P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249P00]', @del_cmd = N'CALL [sp_MSdel_dboSY249P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245P00', @source_owner = N'dbo', @source_object = N'SY245P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245P00]', @del_cmd = N'CALL [sp_MSdel_dboSY245P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246P00', @source_owner = N'dbo', @source_object = N'SY246P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246P00]', @del_cmd = N'CALL [sp_MSdel_dboSY246P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247P00', @source_owner = N'dbo', @source_object = N'SY247P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247P00]', @del_cmd = N'CALL [sp_MSdel_dboSY247P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248P00', @source_owner = N'dbo', @source_object = N'SY248P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248P00]', @del_cmd = N'CALL [sp_MSdel_dboSY248P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY240100', @source_owner = N'dbo', @source_object = N'SY240100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY240100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY240100]', @del_cmd = N'CALL [sp_MSdel_dboSY240100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY240100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242P00', @source_owner = N'dbo', @source_object = N'SY242P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242P00]', @del_cmd = N'CALL [sp_MSdel_dboSY242P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY240200', @source_owner = N'dbo', @source_object = N'SY240200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY240200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY240200]', @del_cmd = N'CALL [sp_MSdel_dboSY240200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY240200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY240500', @source_owner = N'dbo', @source_object = N'SY240500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY240500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY240500]', @del_cmd = N'CALL [sp_MSdel_dboSY240500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY240500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY240600', @source_owner = N'dbo', @source_object = N'SY240600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY240600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY240600]', @del_cmd = N'CALL [sp_MSdel_dboSY240600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY240600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY240700', @source_owner = N'dbo', @source_object = N'SY240700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY240700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY240700]', @del_cmd = N'CALL [sp_MSdel_dboSY240700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY240700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY240800', @source_owner = N'dbo', @source_object = N'SY240800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY240800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY240800]', @del_cmd = N'CALL [sp_MSdel_dboSY240800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY240800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY240900', @source_owner = N'dbo', @source_object = N'SY240900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY240900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY240900]', @del_cmd = N'CALL [sp_MSdel_dboSY240900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY240900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241000', @source_owner = N'dbo', @source_object = N'SY241000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241000]', @del_cmd = N'CALL [sp_MSdel_dboSY241000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241100', @source_owner = N'dbo', @source_object = N'SY241100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241100]', @del_cmd = N'CALL [sp_MSdel_dboSY241100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241200', @source_owner = N'dbo', @source_object = N'SY241200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241200]', @del_cmd = N'CALL [sp_MSdel_dboSY241200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241300', @source_owner = N'dbo', @source_object = N'SY241300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241300]', @del_cmd = N'CALL [sp_MSdel_dboSY241300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241400', @source_owner = N'dbo', @source_object = N'SY241400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241400]', @del_cmd = N'CALL [sp_MSdel_dboSY241400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241600', @source_owner = N'dbo', @source_object = N'SY241600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241600]', @del_cmd = N'CALL [sp_MSdel_dboSY241600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241900', @source_owner = N'dbo', @source_object = N'SY241900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241900]', @del_cmd = N'CALL [sp_MSdel_dboSY241900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241L00', @source_owner = N'dbo', @source_object = N'SY241L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241L00]', @del_cmd = N'CALL [sp_MSdel_dboSY241L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241M00', @source_owner = N'dbo', @source_object = N'SY241M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241M00]', @del_cmd = N'CALL [sp_MSdel_dboSY241M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241N00', @source_owner = N'dbo', @source_object = N'SY241N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241N00]', @del_cmd = N'CALL [sp_MSdel_dboSY241N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY241P00', @source_owner = N'dbo', @source_object = N'SY241P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY241P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY241P00]', @del_cmd = N'CALL [sp_MSdel_dboSY241P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY241P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242000', @source_owner = N'dbo', @source_object = N'SY242000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242000]', @del_cmd = N'CALL [sp_MSdel_dboSY242000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242100', @source_owner = N'dbo', @source_object = N'SY242100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242100]', @del_cmd = N'CALL [sp_MSdel_dboSY242100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242200', @source_owner = N'dbo', @source_object = N'SY242200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242200]', @del_cmd = N'CALL [sp_MSdel_dboSY242200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242300', @source_owner = N'dbo', @source_object = N'SY242300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242300]', @del_cmd = N'CALL [sp_MSdel_dboSY242300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242400', @source_owner = N'dbo', @source_object = N'SY242400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242400]', @del_cmd = N'CALL [sp_MSdel_dboSY242400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242500', @source_owner = N'dbo', @source_object = N'SY242500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242500]', @del_cmd = N'CALL [sp_MSdel_dboSY242500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242600', @source_owner = N'dbo', @source_object = N'SY242600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242600]', @del_cmd = N'CALL [sp_MSdel_dboSY242600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242700', @source_owner = N'dbo', @source_object = N'SY242700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242700]', @del_cmd = N'CALL [sp_MSdel_dboSY242700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242800', @source_owner = N'dbo', @source_object = N'SY242800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242800]', @del_cmd = N'CALL [sp_MSdel_dboSY242800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242900', @source_owner = N'dbo', @source_object = N'SY242900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242900]', @del_cmd = N'CALL [sp_MSdel_dboSY242900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242L00', @source_owner = N'dbo', @source_object = N'SY242L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242L00]', @del_cmd = N'CALL [sp_MSdel_dboSY242L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242M00', @source_owner = N'dbo', @source_object = N'SY242M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242M00]', @del_cmd = N'CALL [sp_MSdel_dboSY242M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY242N00', @source_owner = N'dbo', @source_object = N'SY242N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY242N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY242N00]', @del_cmd = N'CALL [sp_MSdel_dboSY242N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY242N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243000', @source_owner = N'dbo', @source_object = N'SY243000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243000]', @del_cmd = N'CALL [sp_MSdel_dboSY243000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243100', @source_owner = N'dbo', @source_object = N'SY243100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243100]', @del_cmd = N'CALL [sp_MSdel_dboSY243100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243500', @source_owner = N'dbo', @source_object = N'SY243500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243500]', @del_cmd = N'CALL [sp_MSdel_dboSY243500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243600', @source_owner = N'dbo', @source_object = N'SY243600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243600]', @del_cmd = N'CALL [sp_MSdel_dboSY243600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243900', @source_owner = N'dbo', @source_object = N'SY243900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243900]', @del_cmd = N'CALL [sp_MSdel_dboSY243900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243L00', @source_owner = N'dbo', @source_object = N'SY243L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243L00]', @del_cmd = N'CALL [sp_MSdel_dboSY243L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243M00', @source_owner = N'dbo', @source_object = N'SY243M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243M00]', @del_cmd = N'CALL [sp_MSdel_dboSY243M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243N00', @source_owner = N'dbo', @source_object = N'SY243N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243N00]', @del_cmd = N'CALL [sp_MSdel_dboSY243N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY243P00', @source_owner = N'dbo', @source_object = N'SY243P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY243P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY243P00]', @del_cmd = N'CALL [sp_MSdel_dboSY243P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY243P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244000', @source_owner = N'dbo', @source_object = N'SY244000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244000]', @del_cmd = N'CALL [sp_MSdel_dboSY244000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244100', @source_owner = N'dbo', @source_object = N'SY244100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244100]', @del_cmd = N'CALL [sp_MSdel_dboSY244100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244200', @source_owner = N'dbo', @source_object = N'SY244200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244200]', @del_cmd = N'CALL [sp_MSdel_dboSY244200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244300', @source_owner = N'dbo', @source_object = N'SY244300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244300]', @del_cmd = N'CALL [sp_MSdel_dboSY244300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244400', @source_owner = N'dbo', @source_object = N'SY244400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244400]', @del_cmd = N'CALL [sp_MSdel_dboSY244400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244500', @source_owner = N'dbo', @source_object = N'SY244500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244500]', @del_cmd = N'CALL [sp_MSdel_dboSY244500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244600', @source_owner = N'dbo', @source_object = N'SY244600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244600]', @del_cmd = N'CALL [sp_MSdel_dboSY244600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244700', @source_owner = N'dbo', @source_object = N'SY244700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244700]', @del_cmd = N'CALL [sp_MSdel_dboSY244700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244800', @source_owner = N'dbo', @source_object = N'SY244800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244800]', @del_cmd = N'CALL [sp_MSdel_dboSY244800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244900', @source_owner = N'dbo', @source_object = N'SY244900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244900]', @del_cmd = N'CALL [sp_MSdel_dboSY244900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244L00', @source_owner = N'dbo', @source_object = N'SY244L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244L00]', @del_cmd = N'CALL [sp_MSdel_dboSY244L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244M00', @source_owner = N'dbo', @source_object = N'SY244M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244M00]', @del_cmd = N'CALL [sp_MSdel_dboSY244M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244N00', @source_owner = N'dbo', @source_object = N'SY244N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244N00]', @del_cmd = N'CALL [sp_MSdel_dboSY244N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY244P00', @source_owner = N'dbo', @source_object = N'SY244P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY244P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY244P00]', @del_cmd = N'CALL [sp_MSdel_dboSY244P00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY244P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245000', @source_owner = N'dbo', @source_object = N'SY245000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245000]', @del_cmd = N'CALL [sp_MSdel_dboSY245000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245100', @source_owner = N'dbo', @source_object = N'SY245100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245100]', @del_cmd = N'CALL [sp_MSdel_dboSY245100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245200', @source_owner = N'dbo', @source_object = N'SY245200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245200]', @del_cmd = N'CALL [sp_MSdel_dboSY245200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245300', @source_owner = N'dbo', @source_object = N'SY245300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245300]', @del_cmd = N'CALL [sp_MSdel_dboSY245300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245400', @source_owner = N'dbo', @source_object = N'SY245400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245400]', @del_cmd = N'CALL [sp_MSdel_dboSY245400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245600', @source_owner = N'dbo', @source_object = N'SY245600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245600]', @del_cmd = N'CALL [sp_MSdel_dboSY245600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245700', @source_owner = N'dbo', @source_object = N'SY245700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245700]', @del_cmd = N'CALL [sp_MSdel_dboSY245700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245800', @source_owner = N'dbo', @source_object = N'SY245800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245800]', @del_cmd = N'CALL [sp_MSdel_dboSY245800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245900', @source_owner = N'dbo', @source_object = N'SY245900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245900]', @del_cmd = N'CALL [sp_MSdel_dboSY245900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245L00', @source_owner = N'dbo', @source_object = N'SY245L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245L00]', @del_cmd = N'CALL [sp_MSdel_dboSY245L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245M00', @source_owner = N'dbo', @source_object = N'SY245M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245M00]', @del_cmd = N'CALL [sp_MSdel_dboSY245M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY245N00', @source_owner = N'dbo', @source_object = N'SY245N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY245N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY245N00]', @del_cmd = N'CALL [sp_MSdel_dboSY245N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY245N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246000', @source_owner = N'dbo', @source_object = N'SY246000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246000]', @del_cmd = N'CALL [sp_MSdel_dboSY246000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246100', @source_owner = N'dbo', @source_object = N'SY246100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246100]', @del_cmd = N'CALL [sp_MSdel_dboSY246100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246200', @source_owner = N'dbo', @source_object = N'SY246200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246200]', @del_cmd = N'CALL [sp_MSdel_dboSY246200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246300', @source_owner = N'dbo', @source_object = N'SY246300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246300]', @del_cmd = N'CALL [sp_MSdel_dboSY246300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246400', @source_owner = N'dbo', @source_object = N'SY246400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246400]', @del_cmd = N'CALL [sp_MSdel_dboSY246400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246500', @source_owner = N'dbo', @source_object = N'SY246500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246500]', @del_cmd = N'CALL [sp_MSdel_dboSY246500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246600', @source_owner = N'dbo', @source_object = N'SY246600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246600]', @del_cmd = N'CALL [sp_MSdel_dboSY246600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246700', @source_owner = N'dbo', @source_object = N'SY246700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246700]', @del_cmd = N'CALL [sp_MSdel_dboSY246700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246900', @source_owner = N'dbo', @source_object = N'SY246900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246900]', @del_cmd = N'CALL [sp_MSdel_dboSY246900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246L00', @source_owner = N'dbo', @source_object = N'SY246L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246L00]', @del_cmd = N'CALL [sp_MSdel_dboSY246L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246M00', @source_owner = N'dbo', @source_object = N'SY246M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246M00]', @del_cmd = N'CALL [sp_MSdel_dboSY246M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY246N00', @source_owner = N'dbo', @source_object = N'SY246N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY246N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY246N00]', @del_cmd = N'CALL [sp_MSdel_dboSY246N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY246N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247000', @source_owner = N'dbo', @source_object = N'SY247000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247000]', @del_cmd = N'CALL [sp_MSdel_dboSY247000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247100', @source_owner = N'dbo', @source_object = N'SY247100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247100]', @del_cmd = N'CALL [sp_MSdel_dboSY247100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247200', @source_owner = N'dbo', @source_object = N'SY247200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247200]', @del_cmd = N'CALL [sp_MSdel_dboSY247200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247300', @source_owner = N'dbo', @source_object = N'SY247300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247300]', @del_cmd = N'CALL [sp_MSdel_dboSY247300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247400', @source_owner = N'dbo', @source_object = N'SY247400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247400]', @del_cmd = N'CALL [sp_MSdel_dboSY247400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247500', @source_owner = N'dbo', @source_object = N'SY247500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247500]', @del_cmd = N'CALL [sp_MSdel_dboSY247500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247600', @source_owner = N'dbo', @source_object = N'SY247600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247600]', @del_cmd = N'CALL [sp_MSdel_dboSY247600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247700', @source_owner = N'dbo', @source_object = N'SY247700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247700]', @del_cmd = N'CALL [sp_MSdel_dboSY247700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247800', @source_owner = N'dbo', @source_object = N'SY247800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247800]', @del_cmd = N'CALL [sp_MSdel_dboSY247800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247L00', @source_owner = N'dbo', @source_object = N'SY247L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247L00]', @del_cmd = N'CALL [sp_MSdel_dboSY247L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247M00', @source_owner = N'dbo', @source_object = N'SY247M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247M00]', @del_cmd = N'CALL [sp_MSdel_dboSY247M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY247N00', @source_owner = N'dbo', @source_object = N'SY247N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY247N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY247N00]', @del_cmd = N'CALL [sp_MSdel_dboSY247N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY247N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248000', @source_owner = N'dbo', @source_object = N'SY248000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248000]', @del_cmd = N'CALL [sp_MSdel_dboSY248000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248100', @source_owner = N'dbo', @source_object = N'SY248100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248100]', @del_cmd = N'CALL [sp_MSdel_dboSY248100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248300', @source_owner = N'dbo', @source_object = N'SY248300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248300]', @del_cmd = N'CALL [sp_MSdel_dboSY248300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248400', @source_owner = N'dbo', @source_object = N'SY248400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248400]', @del_cmd = N'CALL [sp_MSdel_dboSY248400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248500', @source_owner = N'dbo', @source_object = N'SY248500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248500]', @del_cmd = N'CALL [sp_MSdel_dboSY248500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248800', @source_owner = N'dbo', @source_object = N'SY248800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248800]', @del_cmd = N'CALL [sp_MSdel_dboSY248800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248900', @source_owner = N'dbo', @source_object = N'SY248900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248900]', @del_cmd = N'CALL [sp_MSdel_dboSY248900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248L00', @source_owner = N'dbo', @source_object = N'SY248L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248L00]', @del_cmd = N'CALL [sp_MSdel_dboSY248L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248M00', @source_owner = N'dbo', @source_object = N'SY248M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248M00]', @del_cmd = N'CALL [sp_MSdel_dboSY248M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY248N00', @source_owner = N'dbo', @source_object = N'SY248N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY248N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY248N00]', @del_cmd = N'CALL [sp_MSdel_dboSY248N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY248N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249000', @source_owner = N'dbo', @source_object = N'SY249000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249000]', @del_cmd = N'CALL [sp_MSdel_dboSY249000]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249100', @source_owner = N'dbo', @source_object = N'SY249100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249100]', @del_cmd = N'CALL [sp_MSdel_dboSY249100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249200', @source_owner = N'dbo', @source_object = N'SY249200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249200]', @del_cmd = N'CALL [sp_MSdel_dboSY249200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249300', @source_owner = N'dbo', @source_object = N'SY249300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249300]', @del_cmd = N'CALL [sp_MSdel_dboSY249300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249400', @source_owner = N'dbo', @source_object = N'SY249400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249400]', @del_cmd = N'CALL [sp_MSdel_dboSY249400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249500', @source_owner = N'dbo', @source_object = N'SY249500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249500]', @del_cmd = N'CALL [sp_MSdel_dboSY249500]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249600', @source_owner = N'dbo', @source_object = N'SY249600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249600]', @del_cmd = N'CALL [sp_MSdel_dboSY249600]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249700', @source_owner = N'dbo', @source_object = N'SY249700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249700]', @del_cmd = N'CALL [sp_MSdel_dboSY249700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249900', @source_owner = N'dbo', @source_object = N'SY249900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249900]', @del_cmd = N'CALL [sp_MSdel_dboSY249900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249L00', @source_owner = N'dbo', @source_object = N'SY249L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249L00]', @del_cmd = N'CALL [sp_MSdel_dboSY249L00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY249M00', @source_owner = N'dbo', @source_object = N'SY249M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249M00]', @del_cmd = N'CALL [sp_MSdel_dboSY249M00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article =N'SY249N00', @source_owner = N'dbo', @source_object = N'SY249N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY249N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY249N00]', @del_cmd = N'CALL [sp_MSdel_dboSY249N00]', @upd_cmd = N'SCALL [sp_MSupd_dboSY249N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V100', @source_owner = N'dbo', @source_object = N'SY24V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V100]', @del_cmd = N'CALL [sp_MSdel_dboSY24V100]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V200', @source_owner = N'dbo', @source_object = N'SY24V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V200]', @del_cmd = N'CALL [sp_MSdel_dboSY24V200]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V300', @source_owner = N'dbo', @source_object = N'SY24V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V300]', @del_cmd = N'CALL [sp_MSdel_dboSY24V300]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V400', @source_owner = N'dbo', @source_object = N'SY24V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V400]', @del_cmd = N'CALL [sp_MSdel_dboSY24V400]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V700', @source_owner = N'dbo', @source_object = N'SY24V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V700]', @del_cmd = N'CALL [sp_MSdel_dboSY24V700]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V800', @source_owner = N'dbo', @source_object = N'SY24V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V800]', @del_cmd = N'CALL [sp_MSdel_dboSY24V800]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaSY24', @article = N'SY24V900', @source_owner = N'dbo', @source_object = N'SY24V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'SY24V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboSY24V900]', @del_cmd = N'CALL [sp_MSdel_dboSY24V900]', @upd_cmd = N'SCALL [sp_MSupd_dboSY24V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaSY24', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaSY24', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

