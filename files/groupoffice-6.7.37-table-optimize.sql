## only for mailscanner
ALTER TABLE `mailscanner`.`maillog` ADD INDEX (`messageid`);
### all for groupoffice 6.7.37
ALTER TABLE `groupoffice`.`core_user` ADD INDEX (`recoveryEmail`);
ALTER TABLE `groupoffice`.`em_labels` ADD INDEX (`account_id`);
ALTER TABLE `groupoffice`.`em_accounts` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`enabled`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`admin_menu`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`sort_order`);
ALTER TABLE `groupoffice`.`core_change` ADD INDEX (`destroyed`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`package`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`version`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`modSeq`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`modifiedAt`);
ALTER TABLE `groupoffice`.`core_module` ADD INDEX (`deletedAt`);

ALTER TABLE `groupoffice`.`core_acl` ADD INDEX (`modifiedAt`);
ALTER TABLE `groupoffice`.`core_acl` ADD INDEX (`usedIn`);
ALTER TABLE `groupoffice`.`core_acl_group_changes` ADD INDEX (`grantModSeq`);
ALTER TABLE `groupoffice`.`core_cron_job` ADD INDEX (`nextRunAt`);
ALTER TABLE `groupoffice`.`core_cron_job` ADD INDEX (`lastRunAt`);
ALTER TABLE `groupoffice`.`core_cron_job` ADD INDEX (`runningSince`);
ALTER TABLE `groupoffice`.`core_cron_job` ADD INDEX (`enabled`);
ALTER TABLE `groupoffice`.`imapauth_server_domain` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`core_acl_group` ADD INDEX (`aclId`);
ALTER TABLE `groupoffice`.`em_aliases` ADD INDEX (`default`);
ALTER TABLE `groupoffice`.`em_aliases` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`em_aliases` ADD INDEX (`email`);
ALTER TABLE `groupoffice`.`em_accounts_sort` ADD INDEX (`order`);
ALTER TABLE `groupoffice`.`core_acl` ADD INDEX (`entityId`);
ALTER TABLE `groupoffice`.`core_entity` ADD INDEX (`highestModSeq`);

ALTER TABLE `groupoffice`.`su_announcements` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`su_announcements` ADD INDEX (`title`);
ALTER TABLE `groupoffice`.`su_announcements` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`su_announcements` ADD INDEX (`ctime`);
ALTER TABLE `groupoffice`.`su_announcements` ADD INDEX (`mtime`);

ALTER TABLE `groupoffice`.`core_acl_group_changes` ADD INDEX (`revokeModSeq`);
ALTER TABLE `groupoffice`.`core_alert` ADD INDEX (`sendMail`);
ALTER TABLE `groupoffice`.`ab_addressbooks` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`ab_addressbooks` ADD INDEX (`files_folder_id`);
ALTER TABLE `groupoffice`.`ab_addressbooks` ADD INDEX (`users`);
ALTER TABLE `groupoffice`.`ab_addressbooks` ADD INDEX (`create_folder`);
ALTER TABLE `groupoffice`.`ab_addressbooks` ADD INDEX (`name`);

ALTER TABLE `groupoffice`.`ab_contacts` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`ab_contacts` ADD INDEX (`first_name`);
ALTER TABLE `groupoffice`.`ab_contacts` ADD INDEX (`company_id`);

ALTER TABLE `groupoffice`.`ab_settings` ADD INDEX (`default_addressbook_id`);
ALTER TABLE `groupoffice`.`addressbook_email_address` ADD INDEX (`type`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`start_hour`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`end_hour`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`time_interval`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`files_folder_id`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`show_holidays`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`tasklist_id`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`background`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`public`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`shared_acl`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`show_bdays`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`show_completed_tasks`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`comment`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`version`);
ALTER TABLE `groupoffice`.`cal_calendars` ADD INDEX (`tooltip`);

ALTER TABLE `groupoffice`.`core_blob` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`core_blob` ADD INDEX (`type`);
ALTER TABLE `groupoffice`.`core_blob` ADD INDEX (`createdAt`);
ALTER TABLE `groupoffice`.`core_blob` ADD INDEX (`modifiedAt`);
ALTER TABLE `groupoffice`.`core_blob` ADD INDEX (`size`);
ALTER TABLE `groupoffice`.`su_latest_read_announcement_records` ADD INDEX (`announcement_ctime`);
ALTER TABLE `groupoffice`.`cal_events` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`cal_events` ADD INDEX (`all_day_event`);
ALTER TABLE `groupoffice`.`cal_events` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`cal_events` ADD INDEX (`reminder`);
ALTER TABLE `groupoffice`.`cal_events` ADD INDEX (`status`);
ALTER TABLE `groupoffice`.`cal_participants` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`cal_participants` ADD INDEX (`email`);
ALTER TABLE `groupoffice`.`cal_settings` ADD INDEX (`background`);
ALTER TABLE `groupoffice`.`cal_settings` ADD INDEX (`show_statuses`);
ALTER TABLE `groupoffice`.`cal_settings` ADD INDEX (`check_conflict`);
ALTER TABLE `groupoffice`.`cal_settings` ADD INDEX (`reminder`);
ALTER TABLE `groupoffice`.`comments_comment` ADD INDEX (`text`);
ALTER TABLE `groupoffice`.`comments_comment` ADD INDEX (`modifiedAt`);
ALTER TABLE `groupoffice`.`core_auth_remember_me` ADD INDEX (`expiresAt`);
ALTER TABLE `groupoffice`.`core_auth_remember_me` ADD INDEX (`token`);
ALTER TABLE `groupoffice`.`core_auth_token` ADD INDEX (`createdAt`);
ALTER TABLE `groupoffice`.`core_auth_token` ADD INDEX (`expiresAt`);
ALTER TABLE `groupoffice`.`core_auth_token` ADD INDEX (`CSRFToken`);
ALTER TABLE `groupoffice`.`core_auth_token` ADD INDEX (`passedAuthenticators`);
ALTER TABLE `groupoffice`.`core_change` ADD INDEX (`createdAt`);
ALTER TABLE `groupoffice`.`core_group` ADD INDEX (`createdBy`);
ALTER TABLE `groupoffice`.`core_link` ADD INDEX (`folderId`);
ALTER TABLE `groupoffice`.`core_link` ADD INDEX (`modSeq`);
ALTER TABLE `groupoffice`.`core_link` ADD INDEX (`createdAt`);
ALTER TABLE `groupoffice`.`core_permission` ADD INDEX (`rights`);
ALTER TABLE `groupoffice`.`core_search` ADD INDEX (`rebuild`);
ALTER TABLE `groupoffice`.`core_search` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`core_search` ADD INDEX (`description`);
ALTER TABLE `groupoffice`.`core_user` ADD INDEX (`enabled`);
ALTER TABLE `groupoffice`.`em_labels` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`em_labels` ADD INDEX (`flag`);
ALTER TABLE `groupoffice`.`em_labels` ADD INDEX (`default`);
ALTER TABLE `groupoffice`.`em_labels` ADD INDEX (`color`);
ALTER TABLE `groupoffice`.`em_links` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`em_links` ADD INDEX (`subject`);
ALTER TABLE `groupoffice`.`em_links` ADD INDEX (`time`);
ALTER TABLE `groupoffice`.`em_portlet_folders` ADD INDEX (`mtime`);
ALTER TABLE `groupoffice`.`fs_files` ADD INDEX (`version`);
ALTER TABLE `groupoffice`.`fs_files` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`fs_files` ADD INDEX (`locked_user_id`);
ALTER TABLE `groupoffice`.`fs_files` ADD INDEX (`muser_id`);
ALTER TABLE `groupoffice`.`fs_files` ADD INDEX (`status_id`);
ALTER TABLE `groupoffice`.`fs_folders` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`fs_folders` ADD INDEX (`muser_id`);
ALTER TABLE `groupoffice`.`fs_folders` ADD INDEX (`quota_user_id`);
ALTER TABLE `groupoffice`.`fs_folder_pref` ADD INDEX (`thumbs`);
ALTER TABLE `groupoffice`.`fs_versions` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`fs_versions` ADD INDEX (`version`);
ALTER TABLE `groupoffice`.`go_cron` ADD INDEX (`runonce`);
ALTER TABLE `groupoffice`.`go_holidays` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`go_log` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`go_log` ADD INDEX (`username`);
ALTER TABLE `groupoffice`.`go_reminders` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`go_reminders` ADD INDEX (`time`);
ALTER TABLE `groupoffice`.`go_reminders` ADD INDEX (`vtime`);
ALTER TABLE `groupoffice`.`go_reminders` ADD INDEX (`snooze_time`);
ALTER TABLE `groupoffice`.`go_reminders` ADD INDEX (`manual`);
ALTER TABLE `groupoffice`.`go_reminders` ADD INDEX (`model_type_id`);
ALTER TABLE `groupoffice`.`go_reminders` ADD INDEX (`model_id`);
ALTER TABLE `groupoffice`.`go_reminders_users` ADD INDEX (`mail_sent`);
ALTER TABLE `groupoffice`.`go_templates` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`go_templates` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`go_templates` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`go_templates` ADD INDEX (`filename`);
ALTER TABLE `groupoffice`.`go_templates` ADD INDEX (`type`);
ALTER TABLE `groupoffice`.`go_templates` ADD INDEX (`extension`);
ALTER TABLE `groupoffice`.`notes_note` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`notes_note` ADD INDEX (`content`);
ALTER TABLE `groupoffice`.`notes_note` ADD INDEX (`createdAt`);
ALTER TABLE `groupoffice`.`notes_note` ADD INDEX (`filesFolderId`);
ALTER TABLE `groupoffice`.`notes_note` ADD INDEX (`password`);
ALTER TABLE `groupoffice`.`notes_note` ADD INDEX (`modifiedAt`);
ALTER TABLE `groupoffice`.`notes_note` ADD INDEX (`modifiedBy`);
ALTER TABLE `groupoffice`.`notes_note_book` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`notes_note_book` ADD INDEX (`filesFolderId`);
ALTER TABLE `groupoffice`.`notes_note_book` ADD INDEX (`deletedAt`);
ALTER TABLE `groupoffice`.`notes_note_book` ADD INDEX (`createdBy`);
ALTER TABLE `groupoffice`.`notes_user_settings` ADD INDEX (`rememberLastItems`);
ALTER TABLE `groupoffice`.`notes_user_settings` ADD INDEX (`lastNoteBookIds`);
ALTER TABLE `groupoffice`.`otp_secret` ADD INDEX (`secret`);
ALTER TABLE `groupoffice`.`otp_secret` ADD INDEX (`createdAt`);
ALTER TABLE `groupoffice`.`otp_secret` ADD INDEX (`verified`);
ALTER TABLE `groupoffice`.`pr2_statuses` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`pr2_statuses` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`pr2_statuses` ADD INDEX (`show_in_tree`);
ALTER TABLE `groupoffice`.`pr2_statuses` ADD INDEX (`filterable`);
ALTER TABLE `groupoffice`.`pr2_statuses` ADD INDEX (`complete`);
ALTER TABLE `groupoffice`.`pr2_templates` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`pr2_templates` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`pr2_templates` ADD INDEX (`project_type`);
ALTER TABLE `groupoffice`.`pr2_templates` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`pr2_templates` ADD INDEX (`fields`);
ALTER TABLE `groupoffice`.`pr2_templates` ADD INDEX (`files_folder_id`);
ALTER TABLE `groupoffice`.`smi_account_settings` ADD INDEX (`always_sign`);
ALTER TABLE `groupoffice`.`smi_pkcs12` ADD INDEX (`serial`);
ALTER TABLE `groupoffice`.`smi_pkcs12` ADD INDEX (`valid_until`);
ALTER TABLE `groupoffice`.`smi_pkcs12` ADD INDEX (`valid_since`);
ALTER TABLE `groupoffice`.`smi_pkcs12` ADD INDEX (`provided_by`);
ALTER TABLE `groupoffice`.`su_notes` ADD INDEX (`text`);
ALTER TABLE `groupoffice`.`su_rss_feeds` ADD INDEX (`title`);
ALTER TABLE `groupoffice`.`su_rss_feeds` ADD INDEX (`url`);
ALTER TABLE `groupoffice`.`su_rss_feeds` ADD INDEX (`summary`);
ALTER TABLE `groupoffice`.`sync_addressbook_user` ADD INDEX (`isDefault`);
ALTER TABLE `groupoffice`.`sync_calendar_user` ADD INDEX (`default_calendar`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`addressbook_id`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`calendar_id`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`note_category_id`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`account_id`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`server_is_master`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`max_days_old`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`delete_old_events`);
ALTER TABLE `groupoffice`.`sync_settings` ADD INDEX (`allowDeletes`);
ALTER TABLE `groupoffice`.`sync_tasklist_user` ADD INDEX (`isDefault`);
ALTER TABLE `groupoffice`.`sync_user_note_book` ADD INDEX (`isDefault`);
ALTER TABLE `groupoffice`.`tasks_alert` ADD INDEX (`when`);
ALTER TABLE `groupoffice`.`tasks_alert` ADD INDEX (`acknowledged`);
ALTER TABLE `groupoffice`.`tasks_alert` ADD INDEX (`action`);
ALTER TABLE `groupoffice`.`tasks_alert` ADD INDEX (`offset`);
ALTER TABLE `groupoffice`.`tasks_alert` ADD INDEX (`relativeTo`);
ALTER TABLE `groupoffice`.`tasks_category` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`createdAt`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`modifiedAt`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`due`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`start`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`estimatedDuration`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`progressUpdated`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`title`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`description`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`startTime`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`priority`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`color`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`freeBusyStatus`);
ALTER TABLE `groupoffice`.`tasks_task` ADD INDEX (`progressChange`);
ALTER TABLE `groupoffice`.`tasks_tasklist` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`tasks_tasklist` ADD INDEX (`version`);
ALTER TABLE `groupoffice`.`tasks_tasklist` ADD INDEX (`ownerId`);
ALTER TABLE `groupoffice`.`tasks_tasklist` ADD INDEX (`filesFolderId`);
ALTER TABLE `groupoffice`.`tasks_tasklist` ADD INDEX (`role`);
ALTER TABLE `groupoffice`.`tasks_tasklist` ADD INDEX (`projectId`);
ALTER TABLE `groupoffice`.`tasks_tasklist` ADD INDEX (`description`);
ALTER TABLE `groupoffice`.`tasks_user_settings` ADD INDEX (`defaultDate`);
ALTER TABLE `groupoffice`.`tasks_user_settings` ADD INDEX (`lastTasklistIds`);
ALTER TABLE `groupoffice`.`tasks_user_settings` ADD INDEX (`rememberLastItems`);
ALTER TABLE `groupoffice`.`ta_categories` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`ta_settings` ADD INDEX (`reminder_days`);
ALTER TABLE `groupoffice`.`ta_settings` ADD INDEX (`reminder_time`);
ALTER TABLE `groupoffice`.`ta_settings` ADD INDEX (`remind`);
ALTER TABLE `groupoffice`.`ta_settings` ADD INDEX (`default_tasklist_id`);
ALTER TABLE `groupoffice`.`ta_tasklists` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`ta_tasklists` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`ta_tasklists` ADD INDEX (`acl_id`);
ALTER TABLE `groupoffice`.`ta_tasklists` ADD INDEX (`files_folder_id`);
ALTER TABLE `groupoffice`.`ta_tasklists` ADD INDEX (`version`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`user_id`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`muser_id`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`description`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`status`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`start_time`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`due_time`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`completion_time`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`completion_time`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`reminder`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`repeat_end_time`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`ctime`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`mtime`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`files_folder_id`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`category_id`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`priority`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`percentage_complete`);
ALTER TABLE `groupoffice`.`ta_tasks` ADD INDEX (`project_id`);
ALTER TABLE `groupoffice`.`core_entity_filter` ADD INDEX (`name`);
ALTER TABLE `groupoffice`.`core_entity_filter` ADD INDEX (`type`);


