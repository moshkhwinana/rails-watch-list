class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.find(params[:id])
    @bookmark = Bookmark.new(bookmark_params)
    @list = @bookmark.list
    if @bookmark.save
      redirect_to list_bookmarks
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @bookmark = Bookmark.find(params[:id])
  #   @bookmark.destroy
  #   redirect_to list_bookmarks
  # end

  # private

  # def bookmark_params
  #   params.require(:bookmark).permit(:comment)
  # end
end
