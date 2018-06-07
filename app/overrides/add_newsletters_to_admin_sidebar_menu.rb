Deface::Override.new(virtual_path: 'spree/admin/shared/_contacts',
                     name: 'add_newsletters_to_contacts_sidebar',
                     insert_bottom: '#sidebar-contacts',
                     partial: 'spree/admin/shared/newsletter_sidebar_menu')
