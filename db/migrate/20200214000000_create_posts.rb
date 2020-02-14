class CreatePosts < SpreeExtension::Migration[5.2]

  def self.change
    create_table :spree_posts do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.string :meta_keywords
      t.string :meta_description
      t.string :meta_title
      t.boolean :published

      t.timestamps null: false
    end
  end

end
