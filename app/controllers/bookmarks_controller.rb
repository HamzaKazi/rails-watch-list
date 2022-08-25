class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: "bookmark was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bookmark_params
    params.require(:movie).permit(:title, :content)
  end
end
