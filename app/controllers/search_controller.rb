class SearchController < ApplicationController

  def index
    if params[:q].blank?
      @results = Elasticsearch::Model.search( { query: { match_all: {} } }, [Place, Person]).page(params[:page]).records
    else
      @results = Elasticsearch::Model.search(params[:q], [Place]).page(params[:page]).records
    end
    @tags = Tag.all
  end
end
