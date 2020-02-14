class Spree::Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: %i[slugged history]

  has_and_belongs_to_many :stores, join_table: 'spree_posts_stores'

  validates :title, presence: true
  validates :slug, :body, presence: true

  scope :published, -> { where(published: true) }

  scope :by_store, ->(store) { joins(:stores).where('spree_posts_stores.store_id = ?', store) }

end
