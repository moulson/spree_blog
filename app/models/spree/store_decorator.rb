module Spree
  Store.class_eval do

    has_and_belongs_to_many :posts, join_table: 'spree_posts_stores'

  end
end

