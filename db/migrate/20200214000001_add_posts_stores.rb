class AddPostsStores < SpreeExtension::Migration[5.2]

  def change
    create_table :spree_posts_stores, id: false do |t|
      t.integer :store_id
      t.integer :post_id
      t.timestamps null: false
    end

    add_index :spree_posts_stores, :store_id
    add_index :spree_posts_stores, :post_id
  end

end
