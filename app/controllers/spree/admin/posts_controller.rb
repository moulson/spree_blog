module Spree
  module Admin
    class PostsController < ResourceController

      private

      def find_resource
        if parent_data.present?
          parent.send(controller_name).friendly.find(params[:id])
        else
          model_class.friendly.find(params[:id])
        end
      end

    end
  end
end
