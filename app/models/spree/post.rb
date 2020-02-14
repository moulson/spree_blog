class Spree::Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: %i[slugged history]

  has_one_attached :image
  has_and_belongs_to_many :stores, join_table: 'spree_posts_stores'
  belongs_to :user, class_name: "Spree::User"

  validates :title, presence: true
  validates :slug, :body, presence: true

  before_create :set_slug

  scope :published, -> { where(published: true) }

  scope :by_store, ->(store) { joins(:stores).where('spree_posts_stores.store_id = ?', store) }

  def author
    user.email
  end

  def thumb
    if image.attached?
      image.attachment.variant(resize: '100x100>').processed.service_url
    end
  end

  def set_slug
    self.slug = title.parameterize unless slug.present?
  end

end

