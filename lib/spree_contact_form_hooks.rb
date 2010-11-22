class SpreeContactFormHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_configurations_menu do
    "<%= configurations_menu_item(I18n.t('contact_topics'), admin_contact_topics_path, I18n.t('contact_topics_description')) %>"
  end

end

