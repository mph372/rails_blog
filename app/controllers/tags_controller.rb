class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
      end

      def index
        @tags = Tag.all
    end

    def destroy
        @tag = Tag.delete(params[:id])
        redirect_to action: "index"
        flash.notice = "Tag Deleted!"
      end
end
