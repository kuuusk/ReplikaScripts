-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaOR20', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaOR20', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaOR20', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR20', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR20', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR20', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR20', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaOR20', @login = N'distributor_admin'
GO

-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V500', @source_owner = N'dbo', @source_object = N'OR20V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V500]', @del_cmd = N'CALL [sp_MSdel_dboOR20V500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209P00', @source_owner = N'dbo', @source_object = N'OR209P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209P00]', @del_cmd = N'CALL [sp_MSdel_dboOR209P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205P00', @source_owner = N'dbo', @source_object = N'OR205P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205P00]', @del_cmd = N'CALL [sp_MSdel_dboOR205P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206P00', @source_owner = N'dbo', @source_object = N'OR206P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206P00]', @del_cmd = N'CALL [sp_MSdel_dboOR206P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207P00', @source_owner = N'dbo', @source_object = N'OR207P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207P00]', @del_cmd = N'CALL [sp_MSdel_dboOR207P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208P00', @source_owner = N'dbo', @source_object = N'OR208P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208P00]', @del_cmd = N'CALL [sp_MSdel_dboOR208P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR200100', @source_owner = N'dbo', @source_object = N'OR200100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR200100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR200100]', @del_cmd = N'CALL [sp_MSdel_dboOR200100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR200100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202P00', @source_owner = N'dbo', @source_object = N'OR202P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202P00]', @del_cmd = N'CALL [sp_MSdel_dboOR202P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR200200', @source_owner = N'dbo', @source_object = N'OR200200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR200200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR200200]', @del_cmd = N'CALL [sp_MSdel_dboOR200200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR200200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR200500', @source_owner = N'dbo', @source_object = N'OR200500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR200500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR200500]', @del_cmd = N'CALL [sp_MSdel_dboOR200500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR200500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR200600', @source_owner = N'dbo', @source_object = N'OR200600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR200600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR200600]', @del_cmd = N'CALL [sp_MSdel_dboOR200600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR200600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR200700', @source_owner = N'dbo', @source_object = N'OR200700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR200700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR200700]', @del_cmd = N'CALL [sp_MSdel_dboOR200700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR200700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR200800', @source_owner = N'dbo', @source_object = N'OR200800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR200800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR200800]', @del_cmd = N'CALL [sp_MSdel_dboOR200800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR200800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR200900', @source_owner = N'dbo', @source_object = N'OR200900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR200900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR200900]', @del_cmd = N'CALL [sp_MSdel_dboOR200900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR200900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201000', @source_owner = N'dbo', @source_object = N'OR201000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201000]', @del_cmd = N'CALL [sp_MSdel_dboOR201000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201100', @source_owner = N'dbo', @source_object = N'OR201100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201100]', @del_cmd = N'CALL [sp_MSdel_dboOR201100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201200', @source_owner = N'dbo', @source_object = N'OR201200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201200]', @del_cmd = N'CALL [sp_MSdel_dboOR201200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201300', @source_owner = N'dbo', @source_object = N'OR201300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201300]', @del_cmd = N'CALL [sp_MSdel_dboOR201300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201400', @source_owner = N'dbo', @source_object = N'OR201400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201400]', @del_cmd = N'CALL [sp_MSdel_dboOR201400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201600', @source_owner = N'dbo', @source_object = N'OR201600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201600]', @del_cmd = N'CALL [sp_MSdel_dboOR201600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201900', @source_owner = N'dbo', @source_object = N'OR201900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201900]', @del_cmd = N'CALL [sp_MSdel_dboOR201900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201L00', @source_owner = N'dbo', @source_object = N'OR201L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201L00]', @del_cmd = N'CALL [sp_MSdel_dboOR201L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201M00', @source_owner = N'dbo', @source_object = N'OR201M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201M00]', @del_cmd = N'CALL [sp_MSdel_dboOR201M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201N00', @source_owner = N'dbo', @source_object = N'OR201N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201N00]', @del_cmd = N'CALL [sp_MSdel_dboOR201N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR201P00', @source_owner = N'dbo', @source_object = N'OR201P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR201P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR201P00]', @del_cmd = N'CALL [sp_MSdel_dboOR201P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR201P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202000', @source_owner = N'dbo', @source_object = N'OR202000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202000]', @del_cmd = N'CALL [sp_MSdel_dboOR202000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202100', @source_owner = N'dbo', @source_object = N'OR202100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202100]', @del_cmd = N'CALL [sp_MSdel_dboOR202100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202200', @source_owner = N'dbo', @source_object = N'OR202200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202200]', @del_cmd = N'CALL [sp_MSdel_dboOR202200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202300', @source_owner = N'dbo', @source_object = N'OR202300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202300]', @del_cmd = N'CALL [sp_MSdel_dboOR202300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202400', @source_owner = N'dbo', @source_object = N'OR202400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202400]', @del_cmd = N'CALL [sp_MSdel_dboOR202400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202500', @source_owner = N'dbo', @source_object = N'OR202500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202500]', @del_cmd = N'CALL [sp_MSdel_dboOR202500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202600', @source_owner = N'dbo', @source_object = N'OR202600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202600]', @del_cmd = N'CALL [sp_MSdel_dboOR202600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202700', @source_owner = N'dbo', @source_object = N'OR202700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202700]', @del_cmd = N'CALL [sp_MSdel_dboOR202700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202800', @source_owner = N'dbo', @source_object = N'OR202800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202800]', @del_cmd = N'CALL [sp_MSdel_dboOR202800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202900', @source_owner = N'dbo', @source_object = N'OR202900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202900]', @del_cmd = N'CALL [sp_MSdel_dboOR202900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202L00', @source_owner = N'dbo', @source_object = N'OR202L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202L00]', @del_cmd = N'CALL [sp_MSdel_dboOR202L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202M00', @source_owner = N'dbo', @source_object = N'OR202M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202M00]', @del_cmd = N'CALL [sp_MSdel_dboOR202M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR202N00', @source_owner = N'dbo', @source_object = N'OR202N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR202N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR202N00]', @del_cmd = N'CALL [sp_MSdel_dboOR202N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR202N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203000', @source_owner = N'dbo', @source_object = N'OR203000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203000]', @del_cmd = N'CALL [sp_MSdel_dboOR203000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203100', @source_owner = N'dbo', @source_object = N'OR203100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203100]', @del_cmd = N'CALL [sp_MSdel_dboOR203100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203500', @source_owner = N'dbo', @source_object = N'OR203500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203500]', @del_cmd = N'CALL [sp_MSdel_dboOR203500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203600', @source_owner = N'dbo', @source_object = N'OR203600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203600]', @del_cmd = N'CALL [sp_MSdel_dboOR203600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203900', @source_owner = N'dbo', @source_object = N'OR203900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203900]', @del_cmd = N'CALL [sp_MSdel_dboOR203900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203L00', @source_owner = N'dbo', @source_object = N'OR203L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203L00]', @del_cmd = N'CALL [sp_MSdel_dboOR203L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203M00', @source_owner = N'dbo', @source_object = N'OR203M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203M00]', @del_cmd = N'CALL [sp_MSdel_dboOR203M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203N00', @source_owner = N'dbo', @source_object = N'OR203N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203N00]', @del_cmd = N'CALL [sp_MSdel_dboOR203N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR203P00', @source_owner = N'dbo', @source_object = N'OR203P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR203P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR203P00]', @del_cmd = N'CALL [sp_MSdel_dboOR203P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR203P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204000', @source_owner = N'dbo', @source_object = N'OR204000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204000]', @del_cmd = N'CALL [sp_MSdel_dboOR204000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204100', @source_owner = N'dbo', @source_object = N'OR204100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204100]', @del_cmd = N'CALL [sp_MSdel_dboOR204100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204200', @source_owner = N'dbo', @source_object = N'OR204200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204200]', @del_cmd = N'CALL [sp_MSdel_dboOR204200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204300', @source_owner = N'dbo', @source_object = N'OR204300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204300]', @del_cmd = N'CALL [sp_MSdel_dboOR204300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204400', @source_owner = N'dbo', @source_object = N'OR204400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204400]', @del_cmd = N'CALL [sp_MSdel_dboOR204400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204500', @source_owner = N'dbo', @source_object = N'OR204500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204500]', @del_cmd = N'CALL [sp_MSdel_dboOR204500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204600', @source_owner = N'dbo', @source_object = N'OR204600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204600]', @del_cmd = N'CALL [sp_MSdel_dboOR204600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204700', @source_owner = N'dbo', @source_object = N'OR204700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204700]', @del_cmd = N'CALL [sp_MSdel_dboOR204700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204800', @source_owner = N'dbo', @source_object = N'OR204800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204800]', @del_cmd = N'CALL [sp_MSdel_dboOR204800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204900', @source_owner = N'dbo', @source_object = N'OR204900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204900]', @del_cmd = N'CALL [sp_MSdel_dboOR204900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204L00', @source_owner = N'dbo', @source_object = N'OR204L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204L00]', @del_cmd = N'CALL [sp_MSdel_dboOR204L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204M00', @source_owner = N'dbo', @source_object = N'OR204M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204M00]', @del_cmd = N'CALL [sp_MSdel_dboOR204M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204N00', @source_owner = N'dbo', @source_object = N'OR204N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204N00]', @del_cmd = N'CALL [sp_MSdel_dboOR204N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR204P00', @source_owner = N'dbo', @source_object = N'OR204P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR204P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR204P00]', @del_cmd = N'CALL [sp_MSdel_dboOR204P00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR204P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205000', @source_owner = N'dbo', @source_object = N'OR205000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205000]', @del_cmd = N'CALL [sp_MSdel_dboOR205000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205100', @source_owner = N'dbo', @source_object = N'OR205100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205100]', @del_cmd = N'CALL [sp_MSdel_dboOR205100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205200', @source_owner = N'dbo', @source_object = N'OR205200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205200]', @del_cmd = N'CALL [sp_MSdel_dboOR205200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205300', @source_owner = N'dbo', @source_object = N'OR205300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205300]', @del_cmd = N'CALL [sp_MSdel_dboOR205300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205400', @source_owner = N'dbo', @source_object = N'OR205400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205400]', @del_cmd = N'CALL [sp_MSdel_dboOR205400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205600', @source_owner = N'dbo', @source_object = N'OR205600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205600]', @del_cmd = N'CALL [sp_MSdel_dboOR205600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205700', @source_owner = N'dbo', @source_object = N'OR205700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205700]', @del_cmd = N'CALL [sp_MSdel_dboOR205700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205800', @source_owner = N'dbo', @source_object = N'OR205800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205800]', @del_cmd = N'CALL [sp_MSdel_dboOR205800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205900', @source_owner = N'dbo', @source_object = N'OR205900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205900]', @del_cmd = N'CALL [sp_MSdel_dboOR205900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205L00', @source_owner = N'dbo', @source_object = N'OR205L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205L00]', @del_cmd = N'CALL [sp_MSdel_dboOR205L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205M00', @source_owner = N'dbo', @source_object = N'OR205M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205M00]', @del_cmd = N'CALL [sp_MSdel_dboOR205M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR205N00', @source_owner = N'dbo', @source_object = N'OR205N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR205N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR205N00]', @del_cmd = N'CALL [sp_MSdel_dboOR205N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR205N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206000', @source_owner = N'dbo', @source_object = N'OR206000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206000]', @del_cmd = N'CALL [sp_MSdel_dboOR206000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206100', @source_owner = N'dbo', @source_object = N'OR206100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206100]', @del_cmd = N'CALL [sp_MSdel_dboOR206100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206200', @source_owner = N'dbo', @source_object = N'OR206200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206200]', @del_cmd = N'CALL [sp_MSdel_dboOR206200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206300', @source_owner = N'dbo', @source_object = N'OR206300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206300]', @del_cmd = N'CALL [sp_MSdel_dboOR206300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206400', @source_owner = N'dbo', @source_object = N'OR206400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206400]', @del_cmd = N'CALL [sp_MSdel_dboOR206400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206500', @source_owner = N'dbo', @source_object = N'OR206500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206500]', @del_cmd = N'CALL [sp_MSdel_dboOR206500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206600', @source_owner = N'dbo', @source_object = N'OR206600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206600]', @del_cmd = N'CALL [sp_MSdel_dboOR206600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206700', @source_owner = N'dbo', @source_object = N'OR206700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206700]', @del_cmd = N'CALL [sp_MSdel_dboOR206700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206900', @source_owner = N'dbo', @source_object = N'OR206900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206900]', @del_cmd = N'CALL [sp_MSdel_dboOR206900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206L00', @source_owner = N'dbo', @source_object = N'OR206L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206L00]', @del_cmd = N'CALL [sp_MSdel_dboOR206L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206M00', @source_owner = N'dbo', @source_object = N'OR206M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206M00]', @del_cmd = N'CALL [sp_MSdel_dboOR206M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR206N00', @source_owner = N'dbo', @source_object = N'OR206N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR206N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR206N00]', @del_cmd = N'CALL [sp_MSdel_dboOR206N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR206N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207000', @source_owner = N'dbo', @source_object = N'OR207000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207000]', @del_cmd = N'CALL [sp_MSdel_dboOR207000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207100', @source_owner = N'dbo', @source_object = N'OR207100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207100]', @del_cmd = N'CALL [sp_MSdel_dboOR207100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207200', @source_owner = N'dbo', @source_object = N'OR207200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207200]', @del_cmd = N'CALL [sp_MSdel_dboOR207200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207300', @source_owner = N'dbo', @source_object = N'OR207300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207300]', @del_cmd = N'CALL [sp_MSdel_dboOR207300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207400', @source_owner = N'dbo', @source_object = N'OR207400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207400]', @del_cmd = N'CALL [sp_MSdel_dboOR207400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207500', @source_owner = N'dbo', @source_object = N'OR207500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207500]', @del_cmd = N'CALL [sp_MSdel_dboOR207500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207600', @source_owner = N'dbo', @source_object = N'OR207600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207600]', @del_cmd = N'CALL [sp_MSdel_dboOR207600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207700', @source_owner = N'dbo', @source_object = N'OR207700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207700]', @del_cmd = N'CALL [sp_MSdel_dboOR207700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207800', @source_owner = N'dbo', @source_object = N'OR207800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207800]', @del_cmd = N'CALL [sp_MSdel_dboOR207800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207L00', @source_owner = N'dbo', @source_object = N'OR207L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207L00]', @del_cmd = N'CALL [sp_MSdel_dboOR207L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207M00', @source_owner = N'dbo', @source_object = N'OR207M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207M00]', @del_cmd = N'CALL [sp_MSdel_dboOR207M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR207N00', @source_owner = N'dbo', @source_object = N'OR207N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR207N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR207N00]', @del_cmd = N'CALL [sp_MSdel_dboOR207N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR207N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208000', @source_owner = N'dbo', @source_object = N'OR208000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208000]', @del_cmd = N'CALL [sp_MSdel_dboOR208000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208100', @source_owner = N'dbo', @source_object = N'OR208100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208100]', @del_cmd = N'CALL [sp_MSdel_dboOR208100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208300', @source_owner = N'dbo', @source_object = N'OR208300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208300]', @del_cmd = N'CALL [sp_MSdel_dboOR208300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208400', @source_owner = N'dbo', @source_object = N'OR208400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208400]', @del_cmd = N'CALL [sp_MSdel_dboOR208400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208500', @source_owner = N'dbo', @source_object = N'OR208500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208500]', @del_cmd = N'CALL [sp_MSdel_dboOR208500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208800', @source_owner = N'dbo', @source_object = N'OR208800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208800]', @del_cmd = N'CALL [sp_MSdel_dboOR208800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208900', @source_owner = N'dbo', @source_object = N'OR208900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208900]', @del_cmd = N'CALL [sp_MSdel_dboOR208900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208L00', @source_owner = N'dbo', @source_object = N'OR208L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208L00]', @del_cmd = N'CALL [sp_MSdel_dboOR208L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208M00', @source_owner = N'dbo', @source_object = N'OR208M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208M00]', @del_cmd = N'CALL [sp_MSdel_dboOR208M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR208N00', @source_owner = N'dbo', @source_object = N'OR208N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR208N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR208N00]', @del_cmd = N'CALL [sp_MSdel_dboOR208N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR208N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209000', @source_owner = N'dbo', @source_object = N'OR209000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209000]', @del_cmd = N'CALL [sp_MSdel_dboOR209000]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209100', @source_owner = N'dbo', @source_object = N'OR209100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209100]', @del_cmd = N'CALL [sp_MSdel_dboOR209100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209200', @source_owner = N'dbo', @source_object = N'OR209200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209200]', @del_cmd = N'CALL [sp_MSdel_dboOR209200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209300', @source_owner = N'dbo', @source_object = N'OR209300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209300]', @del_cmd = N'CALL [sp_MSdel_dboOR209300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209400', @source_owner = N'dbo', @source_object = N'OR209400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209400]', @del_cmd = N'CALL [sp_MSdel_dboOR209400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209500', @source_owner = N'dbo', @source_object = N'OR209500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209500]', @del_cmd = N'CALL [sp_MSdel_dboOR209500]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209600', @source_owner = N'dbo', @source_object = N'OR209600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209600]', @del_cmd = N'CALL [sp_MSdel_dboOR209600]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209700', @source_owner = N'dbo', @source_object = N'OR209700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209700]', @del_cmd = N'CALL [sp_MSdel_dboOR209700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209900', @source_owner = N'dbo', @source_object = N'OR209900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209900]', @del_cmd = N'CALL [sp_MSdel_dboOR209900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209L00', @source_owner = N'dbo', @source_object = N'OR209L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209L00]', @del_cmd = N'CALL [sp_MSdel_dboOR209L00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR209M00', @source_owner = N'dbo', @source_object = N'OR209M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209M00]', @del_cmd = N'CALL [sp_MSdel_dboOR209M00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article =N'OR209N00', @source_owner = N'dbo', @source_object = N'OR209N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR209N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR209N00]', @del_cmd = N'CALL [sp_MSdel_dboOR209N00]', @upd_cmd = N'SCALL [sp_MSupd_dboOR209N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V100', @source_owner = N'dbo', @source_object = N'OR20V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V100]', @del_cmd = N'CALL [sp_MSdel_dboOR20V100]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V200', @source_owner = N'dbo', @source_object = N'OR20V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V200]', @del_cmd = N'CALL [sp_MSdel_dboOR20V200]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V300', @source_owner = N'dbo', @source_object = N'OR20V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V300]', @del_cmd = N'CALL [sp_MSdel_dboOR20V300]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V400', @source_owner = N'dbo', @source_object = N'OR20V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V400]', @del_cmd = N'CALL [sp_MSdel_dboOR20V400]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V700', @source_owner = N'dbo', @source_object = N'OR20V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V700]', @del_cmd = N'CALL [sp_MSdel_dboOR20V700]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V800', @source_owner = N'dbo', @source_object = N'OR20V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V800]', @del_cmd = N'CALL [sp_MSdel_dboOR20V800]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaOR20', @article = N'OR20V900', @source_owner = N'dbo', @source_object = N'OR20V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'OR20V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboOR20V900]', @del_cmd = N'CALL [sp_MSdel_dboOR20V900]', @upd_cmd = N'SCALL [sp_MSupd_dboOR20V900]'
GO
-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaOR20', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaOR20', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

