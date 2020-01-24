-- Enabling the replication database
--use master
--exec sp_replicationdboption @dbname = N'scalaDB', @optname = N'publish', @value = N'true'
--GO

--exec [scalaDB].sys.sp_addlogreader_agent @job_login = null, @job_password = null, @publisher_security_mode = 1
--GO
-- Adding the transactional publication
use [scalaDB]
exec sp_addpublication @publication = N'PublicationScalaPC41', @description = N'Transactional publication of database ''scalaDB'' from Publisher ''VM-TLN-SCP01''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'false', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'false', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'true', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'PublicationScalaPC41', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1
exec sp_grant_publication_access @publication = N'PublicationScalaPC41', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC41', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC41', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC41', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC41', @login = N'repl2'
GO
exec sp_grant_publication_access @publication = N'PublicationScalaPC41', @login = N'distributor_admin'
GO

-- Adding the transactional articles
-- Adding the transactional articles
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V500', @source_owner = N'dbo', @source_object = N'PC41V500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V500]', @del_cmd = N'CALL [sp_MSdel_dboPC41V500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419P00', @source_owner = N'dbo', @source_object = N'PC419P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419P00]', @del_cmd = N'CALL [sp_MSdel_dboPC419P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415P00', @source_owner = N'dbo', @source_object = N'PC415P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415P00]', @del_cmd = N'CALL [sp_MSdel_dboPC415P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416P00', @source_owner = N'dbo', @source_object = N'PC416P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416P00]', @del_cmd = N'CALL [sp_MSdel_dboPC416P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417P00', @source_owner = N'dbo', @source_object = N'PC417P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417P00]', @del_cmd = N'CALL [sp_MSdel_dboPC417P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418P00', @source_owner = N'dbo', @source_object = N'PC418P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418P00]', @del_cmd = N'CALL [sp_MSdel_dboPC418P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC410100', @source_owner = N'dbo', @source_object = N'PC410100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC410100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC410100]', @del_cmd = N'CALL [sp_MSdel_dboPC410100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC410100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412P00', @source_owner = N'dbo', @source_object = N'PC412P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412P00]', @del_cmd = N'CALL [sp_MSdel_dboPC412P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC410200', @source_owner = N'dbo', @source_object = N'PC410200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC410200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC410200]', @del_cmd = N'CALL [sp_MSdel_dboPC410200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC410200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC410500', @source_owner = N'dbo', @source_object = N'PC410500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC410500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC410500]', @del_cmd = N'CALL [sp_MSdel_dboPC410500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC410500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC410600', @source_owner = N'dbo', @source_object = N'PC410600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC410600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC410600]', @del_cmd = N'CALL [sp_MSdel_dboPC410600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC410600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC410700', @source_owner = N'dbo', @source_object = N'PC410700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC410700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC410700]', @del_cmd = N'CALL [sp_MSdel_dboPC410700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC410700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC410800', @source_owner = N'dbo', @source_object = N'PC410800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC410800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC410800]', @del_cmd = N'CALL [sp_MSdel_dboPC410800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC410800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC410900', @source_owner = N'dbo', @source_object = N'PC410900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC410900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC410900]', @del_cmd = N'CALL [sp_MSdel_dboPC410900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC410900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411000', @source_owner = N'dbo', @source_object = N'PC411000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411000]', @del_cmd = N'CALL [sp_MSdel_dboPC411000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411100', @source_owner = N'dbo', @source_object = N'PC411100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411100]', @del_cmd = N'CALL [sp_MSdel_dboPC411100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411200', @source_owner = N'dbo', @source_object = N'PC411200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411200]', @del_cmd = N'CALL [sp_MSdel_dboPC411200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411300', @source_owner = N'dbo', @source_object = N'PC411300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411300]', @del_cmd = N'CALL [sp_MSdel_dboPC411300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411400', @source_owner = N'dbo', @source_object = N'PC411400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411400]', @del_cmd = N'CALL [sp_MSdel_dboPC411400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411600', @source_owner = N'dbo', @source_object = N'PC411600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411600]', @del_cmd = N'CALL [sp_MSdel_dboPC411600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411900', @source_owner = N'dbo', @source_object = N'PC411900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411900]', @del_cmd = N'CALL [sp_MSdel_dboPC411900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411L00', @source_owner = N'dbo', @source_object = N'PC411L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411L00]', @del_cmd = N'CALL [sp_MSdel_dboPC411L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411M00', @source_owner = N'dbo', @source_object = N'PC411M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411M00]', @del_cmd = N'CALL [sp_MSdel_dboPC411M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411N00', @source_owner = N'dbo', @source_object = N'PC411N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411N00]', @del_cmd = N'CALL [sp_MSdel_dboPC411N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC411P00', @source_owner = N'dbo', @source_object = N'PC411P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC411P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC411P00]', @del_cmd = N'CALL [sp_MSdel_dboPC411P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC411P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412000', @source_owner = N'dbo', @source_object = N'PC412000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412000]', @del_cmd = N'CALL [sp_MSdel_dboPC412000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412100', @source_owner = N'dbo', @source_object = N'PC412100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412100]', @del_cmd = N'CALL [sp_MSdel_dboPC412100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412200', @source_owner = N'dbo', @source_object = N'PC412200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412200]', @del_cmd = N'CALL [sp_MSdel_dboPC412200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412300', @source_owner = N'dbo', @source_object = N'PC412300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412300]', @del_cmd = N'CALL [sp_MSdel_dboPC412300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412400', @source_owner = N'dbo', @source_object = N'PC412400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412400]', @del_cmd = N'CALL [sp_MSdel_dboPC412400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412500', @source_owner = N'dbo', @source_object = N'PC412500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412500]', @del_cmd = N'CALL [sp_MSdel_dboPC412500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412600', @source_owner = N'dbo', @source_object = N'PC412600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412600]', @del_cmd = N'CALL [sp_MSdel_dboPC412600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412700', @source_owner = N'dbo', @source_object = N'PC412700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412700]', @del_cmd = N'CALL [sp_MSdel_dboPC412700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412800', @source_owner = N'dbo', @source_object = N'PC412800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412800]', @del_cmd = N'CALL [sp_MSdel_dboPC412800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412900', @source_owner = N'dbo', @source_object = N'PC412900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412900]', @del_cmd = N'CALL [sp_MSdel_dboPC412900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412L00', @source_owner = N'dbo', @source_object = N'PC412L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412L00]', @del_cmd = N'CALL [sp_MSdel_dboPC412L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412M00', @source_owner = N'dbo', @source_object = N'PC412M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412M00]', @del_cmd = N'CALL [sp_MSdel_dboPC412M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC412N00', @source_owner = N'dbo', @source_object = N'PC412N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC412N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC412N00]', @del_cmd = N'CALL [sp_MSdel_dboPC412N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC412N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413000', @source_owner = N'dbo', @source_object = N'PC413000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413000]', @del_cmd = N'CALL [sp_MSdel_dboPC413000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413100', @source_owner = N'dbo', @source_object = N'PC413100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413100]', @del_cmd = N'CALL [sp_MSdel_dboPC413100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413500', @source_owner = N'dbo', @source_object = N'PC413500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413500]', @del_cmd = N'CALL [sp_MSdel_dboPC413500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413600', @source_owner = N'dbo', @source_object = N'PC413600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413600]', @del_cmd = N'CALL [sp_MSdel_dboPC413600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413900', @source_owner = N'dbo', @source_object = N'PC413900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413900]', @del_cmd = N'CALL [sp_MSdel_dboPC413900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413L00', @source_owner = N'dbo', @source_object = N'PC413L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413L00]', @del_cmd = N'CALL [sp_MSdel_dboPC413L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413M00', @source_owner = N'dbo', @source_object = N'PC413M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413M00]', @del_cmd = N'CALL [sp_MSdel_dboPC413M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413N00', @source_owner = N'dbo', @source_object = N'PC413N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413N00]', @del_cmd = N'CALL [sp_MSdel_dboPC413N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC413P00', @source_owner = N'dbo', @source_object = N'PC413P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC413P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC413P00]', @del_cmd = N'CALL [sp_MSdel_dboPC413P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC413P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414000', @source_owner = N'dbo', @source_object = N'PC414000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414000]', @del_cmd = N'CALL [sp_MSdel_dboPC414000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414100', @source_owner = N'dbo', @source_object = N'PC414100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414100]', @del_cmd = N'CALL [sp_MSdel_dboPC414100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414200', @source_owner = N'dbo', @source_object = N'PC414200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414200]', @del_cmd = N'CALL [sp_MSdel_dboPC414200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414300', @source_owner = N'dbo', @source_object = N'PC414300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414300]', @del_cmd = N'CALL [sp_MSdel_dboPC414300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414400', @source_owner = N'dbo', @source_object = N'PC414400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414400]', @del_cmd = N'CALL [sp_MSdel_dboPC414400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414500', @source_owner = N'dbo', @source_object = N'PC414500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414500]', @del_cmd = N'CALL [sp_MSdel_dboPC414500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414600', @source_owner = N'dbo', @source_object = N'PC414600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414600]', @del_cmd = N'CALL [sp_MSdel_dboPC414600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414700', @source_owner = N'dbo', @source_object = N'PC414700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414700]', @del_cmd = N'CALL [sp_MSdel_dboPC414700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414800', @source_owner = N'dbo', @source_object = N'PC414800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414800]', @del_cmd = N'CALL [sp_MSdel_dboPC414800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414900', @source_owner = N'dbo', @source_object = N'PC414900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414900]', @del_cmd = N'CALL [sp_MSdel_dboPC414900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414L00', @source_owner = N'dbo', @source_object = N'PC414L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414L00]', @del_cmd = N'CALL [sp_MSdel_dboPC414L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414M00', @source_owner = N'dbo', @source_object = N'PC414M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414M00]', @del_cmd = N'CALL [sp_MSdel_dboPC414M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414N00', @source_owner = N'dbo', @source_object = N'PC414N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414N00]', @del_cmd = N'CALL [sp_MSdel_dboPC414N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC414P00', @source_owner = N'dbo', @source_object = N'PC414P00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC414P00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC414P00]', @del_cmd = N'CALL [sp_MSdel_dboPC414P00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC414P00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415000', @source_owner = N'dbo', @source_object = N'PC415000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415000]', @del_cmd = N'CALL [sp_MSdel_dboPC415000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415100', @source_owner = N'dbo', @source_object = N'PC415100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415100]', @del_cmd = N'CALL [sp_MSdel_dboPC415100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415200', @source_owner = N'dbo', @source_object = N'PC415200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415200]', @del_cmd = N'CALL [sp_MSdel_dboPC415200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415300', @source_owner = N'dbo', @source_object = N'PC415300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415300]', @del_cmd = N'CALL [sp_MSdel_dboPC415300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415400', @source_owner = N'dbo', @source_object = N'PC415400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415400]', @del_cmd = N'CALL [sp_MSdel_dboPC415400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415600', @source_owner = N'dbo', @source_object = N'PC415600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415600]', @del_cmd = N'CALL [sp_MSdel_dboPC415600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415700', @source_owner = N'dbo', @source_object = N'PC415700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415700]', @del_cmd = N'CALL [sp_MSdel_dboPC415700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415800', @source_owner = N'dbo', @source_object = N'PC415800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415800]', @del_cmd = N'CALL [sp_MSdel_dboPC415800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415900', @source_owner = N'dbo', @source_object = N'PC415900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415900]', @del_cmd = N'CALL [sp_MSdel_dboPC415900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415L00', @source_owner = N'dbo', @source_object = N'PC415L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415L00]', @del_cmd = N'CALL [sp_MSdel_dboPC415L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415M00', @source_owner = N'dbo', @source_object = N'PC415M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415M00]', @del_cmd = N'CALL [sp_MSdel_dboPC415M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC415N00', @source_owner = N'dbo', @source_object = N'PC415N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC415N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC415N00]', @del_cmd = N'CALL [sp_MSdel_dboPC415N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC415N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416000', @source_owner = N'dbo', @source_object = N'PC416000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416000]', @del_cmd = N'CALL [sp_MSdel_dboPC416000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416100', @source_owner = N'dbo', @source_object = N'PC416100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416100]', @del_cmd = N'CALL [sp_MSdel_dboPC416100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416200', @source_owner = N'dbo', @source_object = N'PC416200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416200]', @del_cmd = N'CALL [sp_MSdel_dboPC416200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416300', @source_owner = N'dbo', @source_object = N'PC416300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416300]', @del_cmd = N'CALL [sp_MSdel_dboPC416300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416400', @source_owner = N'dbo', @source_object = N'PC416400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416400]', @del_cmd = N'CALL [sp_MSdel_dboPC416400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416500', @source_owner = N'dbo', @source_object = N'PC416500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416500]', @del_cmd = N'CALL [sp_MSdel_dboPC416500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416600', @source_owner = N'dbo', @source_object = N'PC416600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416600]', @del_cmd = N'CALL [sp_MSdel_dboPC416600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416700', @source_owner = N'dbo', @source_object = N'PC416700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416700]', @del_cmd = N'CALL [sp_MSdel_dboPC416700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416900', @source_owner = N'dbo', @source_object = N'PC416900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416900]', @del_cmd = N'CALL [sp_MSdel_dboPC416900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416L00', @source_owner = N'dbo', @source_object = N'PC416L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416L00]', @del_cmd = N'CALL [sp_MSdel_dboPC416L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416M00', @source_owner = N'dbo', @source_object = N'PC416M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416M00]', @del_cmd = N'CALL [sp_MSdel_dboPC416M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC416N00', @source_owner = N'dbo', @source_object = N'PC416N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC416N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC416N00]', @del_cmd = N'CALL [sp_MSdel_dboPC416N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC416N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417000', @source_owner = N'dbo', @source_object = N'PC417000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417000]', @del_cmd = N'CALL [sp_MSdel_dboPC417000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417100', @source_owner = N'dbo', @source_object = N'PC417100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417100]', @del_cmd = N'CALL [sp_MSdel_dboPC417100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417200', @source_owner = N'dbo', @source_object = N'PC417200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417200]', @del_cmd = N'CALL [sp_MSdel_dboPC417200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417300', @source_owner = N'dbo', @source_object = N'PC417300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417300]', @del_cmd = N'CALL [sp_MSdel_dboPC417300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417400', @source_owner = N'dbo', @source_object = N'PC417400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417400]', @del_cmd = N'CALL [sp_MSdel_dboPC417400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417500', @source_owner = N'dbo', @source_object = N'PC417500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417500]', @del_cmd = N'CALL [sp_MSdel_dboPC417500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417600', @source_owner = N'dbo', @source_object = N'PC417600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417600]', @del_cmd = N'CALL [sp_MSdel_dboPC417600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417700', @source_owner = N'dbo', @source_object = N'PC417700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417700]', @del_cmd = N'CALL [sp_MSdel_dboPC417700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417800', @source_owner = N'dbo', @source_object = N'PC417800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417800]', @del_cmd = N'CALL [sp_MSdel_dboPC417800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417L00', @source_owner = N'dbo', @source_object = N'PC417L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417L00]', @del_cmd = N'CALL [sp_MSdel_dboPC417L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417M00', @source_owner = N'dbo', @source_object = N'PC417M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417M00]', @del_cmd = N'CALL [sp_MSdel_dboPC417M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC417N00', @source_owner = N'dbo', @source_object = N'PC417N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC417N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC417N00]', @del_cmd = N'CALL [sp_MSdel_dboPC417N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC417N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418000', @source_owner = N'dbo', @source_object = N'PC418000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418000]', @del_cmd = N'CALL [sp_MSdel_dboPC418000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418100', @source_owner = N'dbo', @source_object = N'PC418100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418100]', @del_cmd = N'CALL [sp_MSdel_dboPC418100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418300', @source_owner = N'dbo', @source_object = N'PC418300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418300]', @del_cmd = N'CALL [sp_MSdel_dboPC418300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418400', @source_owner = N'dbo', @source_object = N'PC418400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418400]', @del_cmd = N'CALL [sp_MSdel_dboPC418400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418500', @source_owner = N'dbo', @source_object = N'PC418500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418500]', @del_cmd = N'CALL [sp_MSdel_dboPC418500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418800', @source_owner = N'dbo', @source_object = N'PC418800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418800]', @del_cmd = N'CALL [sp_MSdel_dboPC418800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418900', @source_owner = N'dbo', @source_object = N'PC418900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418900]', @del_cmd = N'CALL [sp_MSdel_dboPC418900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418L00', @source_owner = N'dbo', @source_object = N'PC418L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418L00]', @del_cmd = N'CALL [sp_MSdel_dboPC418L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418M00', @source_owner = N'dbo', @source_object = N'PC418M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418M00]', @del_cmd = N'CALL [sp_MSdel_dboPC418M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC418N00', @source_owner = N'dbo', @source_object = N'PC418N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC418N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC418N00]', @del_cmd = N'CALL [sp_MSdel_dboPC418N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC418N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419000', @source_owner = N'dbo', @source_object = N'PC419000', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419000', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419000]', @del_cmd = N'CALL [sp_MSdel_dboPC419000]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419000]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419100', @source_owner = N'dbo', @source_object = N'PC419100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419100]', @del_cmd = N'CALL [sp_MSdel_dboPC419100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419200', @source_owner = N'dbo', @source_object = N'PC419200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419200]', @del_cmd = N'CALL [sp_MSdel_dboPC419200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419300', @source_owner = N'dbo', @source_object = N'PC419300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419300]', @del_cmd = N'CALL [sp_MSdel_dboPC419300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419400', @source_owner = N'dbo', @source_object = N'PC419400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419400]', @del_cmd = N'CALL [sp_MSdel_dboPC419400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419500', @source_owner = N'dbo', @source_object = N'PC419500', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419500', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419500]', @del_cmd = N'CALL [sp_MSdel_dboPC419500]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419500]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419600', @source_owner = N'dbo', @source_object = N'PC419600', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419600', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419600]', @del_cmd = N'CALL [sp_MSdel_dboPC419600]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419600]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419700', @source_owner = N'dbo', @source_object = N'PC419700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419700]', @del_cmd = N'CALL [sp_MSdel_dboPC419700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419900', @source_owner = N'dbo', @source_object = N'PC419900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419900]', @del_cmd = N'CALL [sp_MSdel_dboPC419900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419900]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419L00', @source_owner = N'dbo', @source_object = N'PC419L00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419L00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419L00]', @del_cmd = N'CALL [sp_MSdel_dboPC419L00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419L00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC419M00', @source_owner = N'dbo', @source_object = N'PC419M00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419M00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419M00]', @del_cmd = N'CALL [sp_MSdel_dboPC419M00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419M00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article =N'PC419N00', @source_owner = N'dbo', @source_object = N'PC419N00', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC419N00', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC419N00]', @del_cmd = N'CALL [sp_MSdel_dboPC419N00]', @upd_cmd = N'SCALL [sp_MSupd_dboPC419N00]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V100', @source_owner = N'dbo', @source_object = N'PC41V100', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V100', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V100]', @del_cmd = N'CALL [sp_MSdel_dboPC41V100]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V100]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V200', @source_owner = N'dbo', @source_object = N'PC41V200', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V200', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V200]', @del_cmd = N'CALL [sp_MSdel_dboPC41V200]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V200]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V300', @source_owner = N'dbo', @source_object = N'PC41V300', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V300', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V300]', @del_cmd = N'CALL [sp_MSdel_dboPC41V300]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V300]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V400', @source_owner = N'dbo', @source_object = N'PC41V400', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V400', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V400]', @del_cmd = N'CALL [sp_MSdel_dboPC41V400]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V400]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V700', @source_owner = N'dbo', @source_object = N'PC41V700', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V700', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V700]', @del_cmd = N'CALL [sp_MSdel_dboPC41V700]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V700]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V800', @source_owner = N'dbo', @source_object = N'PC41V800', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V800', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V800]', @del_cmd = N'CALL [sp_MSdel_dboPC41V800]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V800]'
GO
use [scalaDB]
exec sp_addarticle @publication = N'PublicationScalaPC41', @article = N'PC41V900', @source_owner = N'dbo', @source_object = N'PC41V900', @type = N'logbased', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'none', @destination_table = N'PC41V900', @destination_owner = N'dbo', @status = 24, @vertical_partition = N'false', @ins_cmd = N'CALL [sp_MSins_dboPC41V900]', @del_cmd = N'CALL [sp_MSdel_dboPC41V900]', @upd_cmd = N'SCALL [sp_MSupd_dboPC41V900]'
GO

-- Adding the transactional subscriptions
--use [scalaDB]
--exec sp_addsubscription @publication = N'PublicationScalaPC41', @subscriber = N'VM-TAL-SAP01', @destination_db = N'scalaDB', @subscription_type = N'Push', @sync_type = N'replication support only', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
--exec sp_addpushsubscription_agent @publication = N'PublicationScalaPC41', @subscriber = N'VM-TAL-SAP01', @subscriber_db = N'scalaDB', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 4, @frequency_subday_interval = 5, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @dts_package_location = N'Distributor'
--GO

