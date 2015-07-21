class SearchController < ApplicationController

  def index
    @tags = Tag.all
  end
end
