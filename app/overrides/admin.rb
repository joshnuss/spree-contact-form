Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "converted_admin_configurations_menu_394888068",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     # :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= configurations_menu_item(I18n.t('contact_topics'), admin_contact_topics_path, I18n.t('contact_topics_description')) %>",
                     :disabled => false)

# Deface::Override.new(:virtual_path => "spree/layouts/admin",
#                      :name => "promo_admin_tabs",
#                      :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
#                      :text => "<%= tab(:promotions, :url => spree.admin_promotions_path) %>",
#                      :disabled => false)