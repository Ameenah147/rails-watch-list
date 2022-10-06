class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmarks.new
    @bookmarks = Bookmark.find(List.find(params[id]))
  end
  def create

  end
end
