-- asg_error_records
drop index `id` on asg_error_records;
drop index `id_2` on asg_error_records;
-- asg_logs
ALTER TABLE `asg_logs` ADD `uuid` VARCHAR(100) NOT NULL DEFAULT '' AFTER `id`;
ALTER TABLE `asg_logs` ADD INDEX( `org_id`);
ALTER TABLE `asg_logs` ADD INDEX( `uid`, `is_show`);
ALTER TABLE `asg_logs` ADD INDEX( `event_status`);
ALTER TABLE `asg_logs` ADD INDEX( `published` );
-- asg_product_show_map`
ALTER TABLE `asg_product_show_map` ADD PRIMARY KEY( `product_id`);
-- asg_subscription_usage
ALTER TABLE `asg_subscription_usage` ADD INDEX( `subscription_id` );
-- openapi_extensions
DELETE FROM `openapi_extensions` WHERE `extension_id` = 10069 ;
INSERT INTO `openapi_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES (10069, 'com_emails', 'component', 'com_emails', '', 1, 1, 1, 0, '{"name":"com_emails","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_EMAILS_XML_DESCRIPTION","group":""}', '{"spotfire_domain":"","configui_url":"http:\\/\\/","enable_oauth":"3","is_show_ping":"0","enable_archiving_objects":"0","ping_url":"","show_alerts_count":"3","showPermissions":"0","showTextFilters":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),(10138, 'apixadmin', 'template', 'apixadmin', '', 1, 1, 1, 0, '{"name":"apixadmin","type":"template","creationDate":"4\\/15\\/2014","author":"Tibco UX","copyright":"Portions copyright \\u00a9 2013, TIBCO Software Inc & Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"sagdeshp@tibco.com","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"#13294A","headerColor":"#184A7D","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
-- openapi_js_res_fields
DELETE FROM `openapi_js_res_fields` WHERE `id` = 19;
DELETE FROM `openapi_js_res_fields` WHERE `id` = 102;
INSERT INTO `openapi_js_res_fields` (`id`, `key`, `label`, `type_id`, `field_type`, `params`, `checked_out`, `checked_out_time`, `published`, `ordering`, `access`, `group_id`, `asset_id`, `filter`, `user_id`) VALUES (19, 'k26bba2439bf7543547fc6826aaae5cba', 'Email', 5, 'email', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"0","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"mail.png","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"default.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"Please enter email address","filter_show_number":"1","filter_linkage":"1","filter_tip":"Show all records where %s is equal to %s","enter_mail":"1","view_mail":"1","acemail":"0","acemail_text":"I want to subscribe to newssletter","qr_code":"0","qr_width":"60","send_mail":"0","to":"4","custom":"","change_name_from":"1","change_email_from":"1","cc":"0","subject_style":"1","pre_subject_val":"","subject":"","show_body":"1","body":"","attachment":"1","formats":"zip, tar, rar, txt, jpeg, jpg, pdf, gif, doc, xls","attach_num":"1","button":"Send","copy_to_sender":"1","additional_fields":"","show_captcha":"1","form_style":"2","template_form":"default.php","popup_label":"Send e-mail online"},"emerald":{"subscr_skip":"10","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription":[""],"field_display_subscription_msg":"You cannot view this field. Subscriptions of author of this record has expired","field_display_subscription_count":"0","field_view_subscription":[""],"field_view_subscription_msg":"You can view this field if you have following subscription(s).","field_view_subscription_count":"0","field_submit_subscription":[""],"field_submit_subscription_msg":"You can add this field if you have following subscription(s).","field_submit_subscription_count":"0","field_edit_subscription":[""],"field_edit_subscription_msg":"You can edit this field if you have following subscription(s).","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 4, 1, 0, 71, 0, 129),(102, 'k26bba2439bf7543547fc6826aaae5cba', 'Email', 8, 'email', '{"core":{"show_intro":"1","show_full":"1","show_feed":"0","show_compare":"1","required":"1","searchable":"0","description":"","xml_tag_name":"","field_class":"","show_lable":"3","label_break":"0","lable_class":"","icon":"","field_view_access":"1","field_view_message":"You cannot view this field","field_submit_access":"1","field_submit_message":"You cannot submit this field","field_edit_access":"1","field_edit_message":"You cannot edit this field"},"params":{"template_input":"default.php","template_output_list":"email_user_profile.php","template_output_full":"default.php","sortable":"0","template_filter":"default.php","template_filter_module":"default.php","filter_enable":"0","filter_hide":"0","filter_descr":"Please enter email address","filter_show_number":"1","filter_linkage":"1","filter_tip":"Show all records where %s is equal to %s","enter_mail":"1","view_mail":"1","acemail":"0","acemail_text":"I want to subscribe to newssletter","qr_code":"0","qr_width":"60","send_mail":"0","to":"4","custom":"","change_name_from":"1","change_email_from":"1","cc":"0","subject_style":"1","pre_subject_val":"","subject":"","show_body":"1","body":"","attachment":"1","formats":"zip, tar, rar, txt, jpeg, jpg, pdf, gif, doc, xls","attach_num":"1","button":"Send","copy_to_sender":"1","additional_fields":"","show_captcha":"1","form_style":"2","template_form":"default.php","popup_label":"Send e-mail online"},"emerald":{"subscr_skip":"10","subscr_skip_author":"1","subscr_skip_moderator":"1","field_display_subscription":[""],"field_display_subscription_msg":"You cannot view this field. Subscriptions of author of this record has expired","field_display_subscription_count":"0","field_view_subscription":[""],"field_view_subscription_msg":"You can view this field if you have following subscription(s).","field_view_subscription_count":"0","field_submit_subscription":[""],"field_submit_subscription_msg":"You can add this field if you have following subscription(s).","field_submit_subscription_count":"0","field_edit_subscription":[""],"field_edit_subscription_msg":"You can edit this field if you have following subscription(s).","field_edit_subscription_count":"0"}}', 0, '0000-00-00 00:00:00', 1, 0, 1, 0, 163, 0, 129);
-- openapi_js_res_record
ALTER TABLE `openapi_js_res_record` CHANGE `access` `access` INT(10) UNSIGNED NOT NULL DEFAULT '0';
-- openapi_template_style
UPDATE `openapi_template_styles` SET `home` = '0' WHERE `id` = 8;
INSERT INTO `openapi_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES (14, 'apixadmin', 1, '1', 'apixadmin - Default', '{"templateColor":"#13294A","headerColor":"#184A7D","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1"}');
ALTER TABLE `openapi_template_styles` AUTO_INCREMENT=15;
