module Spree
  class PostsController < StoreController
    helper 'spree/products'

    def index
      @posts = Spree::Post.by_store(current_store).published.order(created_at: :desc)
    end

    def show
      if current_spree_user.present? && current_spree_user.admin?
        @post = Spree::Post.friendly.find(params[:id])
      else
        @post = Spree::Post.by_store(current_store).published.friendly.find(params[:id])
      end
    end

  end
end
