Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'newsletter_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/newsletter_sidebar_menu'
)
