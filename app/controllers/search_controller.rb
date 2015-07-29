class SearchController < ApplicationController

  def index
    @results = Elasticsearch::Model.search(params[:q], [Place]).records
    @tags = Tag.all
  end
end
