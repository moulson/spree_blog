module Spree
  module Admin
    class PostsController < ResourceController

      before_action :set_user, only: [:create]

      private

      def find_resource
        if parent_data.present?
          parent.send(controller_name).friendly.find(params[:id])
        else
          model_class.friendly.find(params[:id])
        end
      end

      def set_user
        @object.user_id = current_spree_user.id
      end

    end
  end
end
