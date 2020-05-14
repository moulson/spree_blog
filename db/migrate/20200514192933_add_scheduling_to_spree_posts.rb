class AddSchedulingToSpreePosts < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_posts, :start_date, :datetime
    add_column :spree_posts, :stop_date, :datetime
  end
end
