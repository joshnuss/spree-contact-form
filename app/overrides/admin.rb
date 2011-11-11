Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "converted_admin_configurations_menu_394888068",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text => "<%= configurations_menu_item(I18n.t('contact_topics'), admin_contact_topics_path, I18n.t('contact_topics_description')) %>",
                     :disabled => false)
