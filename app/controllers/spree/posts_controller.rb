module Spree
  class PostsController < StoreController
    helper 'spree/products'

    def index
      @posts = Spree::Post.finder_scope.by_store(current_store).published
    end

    def show
      @post = Spree::Post.finder_scope.by_store(current_store).friendly.find(params[:id])
    end

  end
end
