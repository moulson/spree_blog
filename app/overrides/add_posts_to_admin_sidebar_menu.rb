if Spree.version.to_f < 4.0
  Deface::Override.new(
    virtual_path: 'spree/layouts/admin',
    name: 'posts_admin_sidebar_menu',
    insert_bottom: '#main-sidebar',
    partial: 'spree/admin/shared/posts_sidebar_menu'
  )
else
  Deface::Override.new(
    virtual_path: 'spree/admin/shared/_main_menu',
    name: 'posts_admin_sidebar_menu',
    insert_bottom: 'nav',
    partial: 'spree/admin/shared/posts_sidebar_menu'
  )
end

